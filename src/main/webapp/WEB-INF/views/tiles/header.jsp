<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!-- Header Start -->
<header class="topbar">
    <div class="with-vertical">
        <!-- ---------------------------------- -->
        <!-- Start Vertical Layout Header -->
        <!-- ---------------------------------- -->
        <nav class="navbar navbar-expand-lg p-0">
            <ul class="navbar-nav">
                <li class="nav-item nav-icon-hover-bg rounded-circle ms-n2">
                    <a class="nav-link sidebartoggler" id="headerCollapse" href="javascript:void(0)">
                        <i class="ti ti-menu-2"></i>
                    </a>
                </li>
                <li class="nav-item nav-icon-hover-bg rounded-circle d-none d-lg-flex">
                    <a class="nav-link" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <i class="ti ti-search"></i>
                    </a>
                </li>
            </ul>

            <ul class="navbar-nav quick-links d-none d-lg-flex align-items-center">
                <!-- ------------------------------- -->
                <!-- start apps Dropdown -->
                <!-- ------------------------------- -->
                <li class="nav-item nav-icon-hover-bg rounded w-auto dropdown d-none d-lg-block mx-0">
                    <div class="hover-dd">
                        <a class="nav-link" href="javascript:void(0)">
                            즐겨찾기
                            <span class="mt-1">
                                <i class="ti ti-chevron-down fs-3"></i>
                            </span>
                        </a>
                    </div>
                </li>
                <!-- ------------------------------- -->
                <!-- end apps Dropdown -->
                <!-- ------------------------------- -->
                <li class="nav-item dropdown-hover d-none d-lg-block">
                    <a class="nav-link" href="./main/app-chat.html">메신저</a>
                </li>
                <li class="nav-item dropdown-hover d-none d-lg-block">
                    <a class="nav-link" href="./main/app-calendar.html">일정관리</a>
                </li>
            </ul>

            <div class="d-block d-lg-none py-4">
                <a href="./main/index.html" class="text-nowrap logo-img">
                    <img src="${pageContext.request.contextPath }/resources/assets/images/logos/headertype-01.png" class="light-logo" alt="Logo-light" style="width:200px;" />
                </a>
            </div>
            <a class="navbar-toggler nav-icon-hover-bg rounded-circle p-0 mx-0 border-0" href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="ti ti-dots fs-7"></i>
            </a>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <div class="d-flex align-items-center justify-content-between">
                    <a href="javascript:void(0)" class="nav-link nav-icon-hover-bg rounded-circle mx-0 ms-n1 d-flex d-lg-none align-items-center justify-content-center" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobilenavbar" aria-controls="offcanvasWithBothOptions">
                        <i class="ti ti-align-justified fs-7"></i>
                    </a>
                    <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-center">
                        <!-- ------------------------------- -->
                        <!-- start profile Dropdown -->
                        <!-- ------------------------------- -->
                        <li class="nav-item dropdown">
                            <a class="nav-link pe-0" href="javascript:void(0)" id="drop1" aria-expanded="false">
                                <div class="d-flex align-items-center">
                                    <div class="user-profile-img">
                                        <img src="<sec:authentication property='principal.imgFile'/>" class="rounded-circle" width="35" height="35" />
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-menu content-dd dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop1">
                                <div class="profile-dropdown position-relative" data-simplebar>
                                    <div class="py-3 px-7 pb-0">
                                        <h5 class="mb-0 fs-5 fw-semibold">User Profile</h5>
                                    </div>
                                    <div class="d-flex align-items-center py-9 mx-7 border-bottom">
                                        <img src="<sec:authentication property='principal.imgFile'/>" class="rounded-circle" width="80" height="80" />
                                        <div class="ms-3">
                                            <h5 class="mb-1 fs-3"><sec:authentication property="principal.empName" /></h5>
                                            <span class="mb-1 d-block"><sec:authentication property="principal.empDept" /></span>
                                            <p class="mb-0 d-flex align-items-center gap-2">
                                                <i class="ti ti-mail fs-4"></i>
                                                <sec:authentication property="principal.empEmail" />
                                            </p>
                                        </div>
                                    </div>
                                    <div class="message-body">
                                        <a href="/common/profile" class="py-8 px-7 mt-8 d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center text-bg-light rounded-1 p-6">
                                                <img src="${pageContext.request.contextPath }/resources/assets/images/svgs/icon-account.svg" alt="modernize-img" width="24" height="24" />
                                            </span>
                                            <div class="w-100 ps-3" id="goProfilePage">
                                                <h6 class="mb-1 fs-3 fw-semibold lh-base">내 프로필</h6>
                                                <span class="fs-2 d-block text-body-secondary">My Profile</span>
                                            </div>
                                        </a>
                                        <a href="./main/app-email.html" class="py-8 px-7 d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center text-bg-light rounded-1 p-6">
                                                <img src="${pageContext.request.contextPath }/resources/assets/images/svgs/icon-inbox.svg" alt="modernize-img" width="24" height="24" />
                                            </span>
                                            <div class="w-100 ps-3">
                                                <h6 class="mb-1 fs-3 fw-semibold lh-base">메신저 & 이메일</h6>
                                                <span class="fs-2 d-block text-body-secondary">Messages & Emails</span>
                                            </div>
                                        </a>
                                        <a href="./main/app-notes.html" class="py-8 px-7 d-flex align-items-center">
                                            <span class="d-flex align-items-center justify-content-center text-bg-light rounded-1 p-6">
                                                <img src="${pageContext.request.contextPath }/resources/assets/images/svgs/icon-tasks.svg" alt="modernize-img" width="24" height="24" />
                                            </span>
                                            <div class="w-100 ps-3">
                                                <h6 class="mb-1 fs-3 fw-semibold lh-base">일정관리</h6>
                                                <span class="fs-2 d-block text-body-secondary">To-do and Daily</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="d-grid py-4 px-7 pt-8">
                                        <form action="/logout" method="post">
                                            <input type="submit" value="Log Out" class="btn btn-outline-primary" />
                                            <sec:csrfInput />
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!-- ------------------------------- -->
                        <!-- end profile Dropdown -->
                        <!-- ------------------------------- -->
                    </ul>
                </div>
            </div>
        </nav>
        <!-- ---------------------------------- -->
        <!-- End Vertical Layout Header -->
        <!-- ---------------------------------- -->
    </div>
</header>
<!-- Header End -->

<script type="text/javascript">
    $(function() {
        var goProfilePage = $("#goProfilePage");
        goProfilePage.on("click", function() {
            console.log("Profile Page Clicked");
        });
    });
</script>
