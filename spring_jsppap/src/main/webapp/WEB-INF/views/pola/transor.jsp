<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/statics/transport.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Newsreader:wght@400;500;600&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />

    <style>
      @font-face {
        font-family: "Pretendard";
        src: url("./public/Pretendard-SemiBold.otf");
        font-weight: 600;
      }
    </style>
  </head>
  <body>
    <div class="div">
      <header class="header">
        <img
          class="header-child"
          loading="lazy"
          alt=""
          src="./public/group-1.svg"
        />

        <div class="uno-farm-wrapper">
          <h1 class="uno-farm">UNO Farm</h1>
        </div>
        <div class="wrapper">
          <div class="div1">홈</div>
        </div>
        <div class="container">
          <div class="div2">공지사항</div>
        </div>
        <div class="frame">
          <div class="div3">문의</div>
        </div>
        <div class="frame-div">
          <div class="div4">직거래판매</div>
        </div>
        <div class="wrapper1">
          <div class="div5">재고 관리</div>
        </div>
        <div class="wrapper2">
          <div class="div6">관제시스템</div>
        </div>
        <div class="wrapper3">
          <div class="div7">무인운송</div>
        </div>
        <div class="account-wrapper">
          <img
            class="account-icon"
            loading="lazy"
            alt=""
            src="./public/account@2x.png"
          />
        </div>
        <div class="header-inner">
          <div class="parent">
            <div class="div8">원대한</div>
            <div class="wrapper4">
              <div class="div9">님 안녕하세요</div>
            </div>
          </div>
        </div>
        <div class="vector-wrapper">
          <img
            class="vector-icon"
            loading="lazy"
            alt=""
            src="./public/vector.svg"
          />
        </div>
      </header>
      <main class="inner">
        <section class="group">
          <div class="div10">
            <div class="parent1">
              <h3 class="h3">운송 영상</h3>
              <div class="wrapper5">
                <div class="div11">운송 영상 실시간 송출</div>
              </div>
            </div>
            <div class="unsplashbf6w6qcevg0-parent">
              <img
                class="unsplashbf6w6qcevg0-icon"
                alt=""
                src="./public/unsplashbf6w6qcevg0@2x.png"
              />

              <img
                class="component-3-icon"
                loading="lazy"
                alt=""
                src="./public/component-3@2x.png"
              />
            </div>
            <div class="child"></div>
            <div class="frame-parent">
              <div class="frame-group">
                <div class="analysis-name-parent">
                  <div class="analysis-name">운송 품목</div>
                  <div class="founder-break-even-calculator">운송 수량</div>
                </div>
                <div class="analysis-name-group">
                  <div class="analysis-name1">유기농 토마토</div>
                  <div class="founder-break-even-calculator1">40</div>
                </div>
              </div>
              <button class="button">
                <div class="div12">신청</div>
              </button>
            </div>
          </div>
          <div class="frame-container">
            <div class="list-chip-parent">
              <button class="list-chip">
                <div class="div13">현재시각</div>
              </button>
              <div class="list-chip1">
                <div class="div14">2024.03.23:22:35</div>
              </div>
            </div>
            <div class="navbar-parent">
              <div class="navbar">
                <div class="wrapper6">
                  <h3 class="h31">관제 로그</h3>
                </div>
                <div class="list-chip-group">
                  <img
                    class="list-chip-icon"
                    loading="lazy"
                    alt=""
                    src="./public/list-chip.svg"
                  />

                  <button class="list-chip2">
                    <div class="trash"></div>
                    <img class="trash-icon" alt="" src="./public/trash.svg" />
                  </button>
                </div>
              </div>
              <div class="rectangle-parent">
                <div class="frame-child"></div>
                <div class="frame-parent1">
                  <div class="parent2">
                    <div class="div15">수거 번호</div>
                    <div class="wrapper7">
                      <div class="div16">운송 번호</div>
                    </div>
                    <div class="wrapper8">
                      <div class="div17">품목</div>
                    </div>
                    <div class="div18">수량</div>
                  </div>
                  <div class="div19">운송상태</div>
                  <div class="div20">측정시간</div>
                </div>
                <div class="group-div">
                  <div class="frame-wrapper">
                    <div class="frame-parent2">
                      <div class="wrapper9">
                        <b class="b">1</b>
                      </div>
                      <div class="wrapper10">
                        <div class="div21">12</div>
                      </div>
                      <div class="div22">토마토</div>
                      <div class="div23">6</div>
                    </div>
                  </div>
                  <div class="wrapper11">
                    <button class="button1">
                      <div class="item"></div>
                      <div class="div24">농장 도착</div>
                    </button>
                  </div>
                  <div class="wrapper12">
                    <div class="div25">2024.03.21:10:50</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
  </body>
</html>