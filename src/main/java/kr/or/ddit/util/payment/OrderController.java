package kr.or.ddit.util.payment;

import java.util.HashMap;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/order")
public class OrderController {

    private final KakaoPayService kakaoPayService;
    
    @GetMapping("/pay")
    public String payment() {
    	return "payment";
    }
    
    @PostMapping("/pay/ready")
    public @ResponseBody ReadyResponse payReady(@RequestBody HashMap<String, String> orders) {
        
        String name = orders.get("name");
        int totalPrice = Integer.parseInt(orders.get("totalPrice"));
        
        log.info("주문 상품 이름: " + name);
        log.info("주문 금액: " + totalPrice);

        // 카카오 결제 준비하기
        ReadyResponse readyResponse = kakaoPayService.payReady(name, totalPrice);
        // 세션에 결제 고유번호(tid) 저장
        SessionUtils.addAttribute("tid", readyResponse.getTid());
        log.info("결제 고유번호: " + readyResponse.getTid());

        return readyResponse;
    }

    @GetMapping("/pay/completed")
    public ResponseEntity<ApproveResponse> payCompleted(@RequestParam(value = "pg_token") String pgToken) {
    
        String tid = SessionUtils.getStringAttributeValue("tid");
        log.info("결제승인 요청을 인증하는 토큰: " + pgToken);
        log.info("결제 고유번호: " + tid);

        // 카카오 결제 요청하기
        ApproveResponse approveResponse = kakaoPayService.payApprove(tid, pgToken);
        
        return new ResponseEntity<ApproveResponse>(approveResponse,HttpStatus.OK);
    }
    
    @GetMapping("/completed")
    public String success(Model model) {
    	return "sung";
    }
}