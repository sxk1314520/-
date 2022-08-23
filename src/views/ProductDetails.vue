<template>
  <div v-if="data">
    <top-header />

    <div
      class="topnav w"
      style="margin: 0 auto; width: 1200px; margin-bottom: 50px"
    >
      <div class="crump-wrap">
        <a href="/">首页</a>
        <span> > </span>
        <span>{{ data.data[0].title }}</span>
      </div>
      <!--     这是整体最上方的一号盒子的，下面fl fr为23号盒子 -->
      <div
        style="display: flex; justify-content: space-between; user-select: none"
      >
        <div class="topnav-hd fl">
          <img :src="data.data[0].img" alt="" class="img-boder" />
          <div style="width: 430px">
            <a @click="ec.product.imgSilder.prev()" class="topnav-left">
              <svg
                t="1660654281496"
                class="icon"
                viewBox="0 0 1024 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="2039"
                width="30"
                height="30"
              >
                <path
                  d="M512 960c-247.039484 0-448-200.960516-448-448S264.960516 64 512 64 960 264.960516 960 512 759.039484 960 512 960zM512 128c-211.744443 0-384 172.255557-384 384s172.255557 384 384 384 384-172.255557 384-384S723.744443 128 512 128z"
                  p-id="2040"
                  fill="#8a8a8a"
                ></path>
                <path
                  d="M290.367854 524.352748c0.032684 0.127295 0.192662 0.25631 0.25631 0.383604 1.536138 3.615858 3.648542 7.071738 6.591802 10.047682 0.032684 0.032684 0.063647 0.032684 0.096331 0.063647s0.032684 0.063647 0.063647 0.096331l158.911974 159.359226c12.480043 12.512727 32.704421 12.576374 45.248112 0.063647 12.512727-12.480043 12.54369-32.704421 0.063647-45.248112l-103.327187-103.616181 305.056632 0c17.664722 0 31.99914-14.336138 31.99914-32.00086s-14.336138-32.00086-31.99914-32.00086L396.576374 481.500874l106.112189-104.959656c12.576374-12.447359 12.672705-32.671738 0.25631-45.248112-6.240882-6.335493-14.496116-9.504099-22.751351-9.504099-8.12794 0-16.25588 3.103239-22.496761 9.247789l-160.25545 158.495686C288.00086 498.912727 285.632146 512.703561 290.367854 524.352748z"
                  p-id="2041"
                  fill="#8a8a8a"
                ></path></svg
            ></a>
            <div class="topnav-items">
              <swiper>
                <swiper-slide>
                  <img :src="data.data[0].sm_img" alt="" />
                </swiper-slide>
                <swiper-slide>
                  <img :src="data.data[0].sm_img2" alt="" />
                </swiper-slide>
                <swiper-slide>
                  <img :src="data.data[0].sm_img" alt="" />
                </swiper-slide>
                <swiper-slide>
                  <img :src="data.data[0].sm_img2" alt="" />
                </swiper-slide>
                <swiper-slide>
                  <img :src="data.data[0].sm_img" alt="" />
                </swiper-slide>
                <swiper-slide>
                  <img :src="data.data[0].sm_img2" alt="" />
                </swiper-slide>
              </swiper>
              <!-- <ul class="topnav-items-ul">
                <li>
                  <a href=""><img :src="data.data[0].sm_img" alt="" /></a>
                </li>
                <li>
                  <a href=""><img :src="data.data[0].sm_img2" alt="" /></a>
                </li>
                <li>
                  <a href=""><img :src="data.data[0].sm_img" alt="" /></a>
                </li>
                <li>
                  <a href=""><img :src="data.data[0].sm_img2" alt="" /></a>
                </li>
                <li>
                  <a href=""><img :src="data.data[0].sm_img" alt="" /></a>
                </li>
                <li>
                  <a href=""><img :src="data.data[0].sm_img2" alt="" /></a>
                </li>
              </ul> -->
            </div>
            <a @click="ec.product.imgSilder.next()" class="topnav-right"
              ><svg
                t="1660654607944"
                class="icon"
                viewBox="0 0 1024 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="3143"
                width="30"
                height="30"
              >
                <path
                  d="M512 960c-247.039484 0-448-200.960516-448-448S264.960516 64 512 64 960 264.960516 960 512 759.039484 960 512 960zM512 128c-211.744443 0-384 172.255557-384 384s172.255557 384 384 384 384-172.255557 384-384S723.744443 128 512 128z"
                  p-id="3144"
                  fill="#8a8a8a"
                ></path>
                <path
                  d="M668.832254 501.152426c-0.032684-0.127295-0.192662-0.25631-0.25631-0.383604-1.536138-3.615858-3.648542-7.071738-6.591802-10.047682-0.032684-0.032684-0.063647-0.032684-0.096331-0.063647-0.032684-0.032684-0.032684-0.063647-0.063647-0.096331l-158.911974-159.359226c-12.480043-12.512727-32.735385-12.576374-45.248112-0.063647-12.512727 12.480043-12.54369 32.735385-0.063647 45.248112l136.287918 136.671523-137.407768 135.904314c-12.576374 12.447359-12.672705 32.671738-0.25631 45.248112 6.239161 6.335493 14.496116 9.504099 22.751351 9.504099 8.12794 0 16.25588-3.103239 22.496761-9.247789l160.25545-158.495686C671.231931 526.592447 673.600645 512.767209 668.832254 501.152426z"
                  p-id="3145"
                  fill="#8a8a8a"
                ></path></svg
            ></a>
          </div>
        </div>
        <div class="topnav-bd fr">
          <h4>{{ data.data[0].title }}</h4>
          <div class="bd-wz2">
            {{ data.data[0].subtitle }}
          </div>
          <div class="middle-max">
            <dl class="middle-max-dl1">
              <dd class="fl middle-max-dd1">价格</dd>
              <dt class="fl middle-max-dt1">
                <div class="dt1-hd fl">
                  <span class="dt1-hd-wz">￥{{ data.data[0].price }}</span>
                  <span class="dt1-hd-wz2">{{
                    data.data[0].is_onsale ? "降价通知" : ""
                  }}</span>
                </div>
              </dt>
            </dl>
            <dl class="middle-max-dl2">
              <dd class="fl middle-max-dd1">促销</dd>
              <dt class="fl middle-max-dt2">
                <div class="dt2-hd fl">
                  <span class="style-red dt1-hd-wz3">
                    <span class="dt2-hd-wz">加价购</span>
                    满999.00另加20.00元，或满1999.00另加30.00元，或满2999.00另加40.00元，即可在购物车换购热销商品</span
                  >
                </div>
              </dt>
            </dl>
          </div>
          <dl class="middle-max-dl4">
            <dd class="fl middle-max-dd1">支持</dd>
            <dt class="fl middle-max-dt2">
              <span class="dt1-hd-wz4"
                >以旧换新，闲置手机回收 4G套餐超值抢 礼品购</span
              >
            </dt>
          </dl>
          <dl class="middle-max-dl5">
            <dd class="fl middle-max-dd2">服务</dd>
            <dt class="fl middle-max-dt3">
              <span class="dt1-hd-wz4">
                {{ data.data[0].promise }}
              </span>
              <div class="dl5-dt2-bottom">由自营发货，并提供售后服务</div>
            </dt>
          </dl>
          <dl class="middle-max-dl6">
            <dd class="fl middle-max-dd3">选择颜色</dd>
            <dt class="fl middle-max-dt4">
              <a
                href="javascript:;"
                @click="select(1)"
                :class="index == 1 ? 'xz-border' : ''"
                >金色</a
              >
              <a
                href="javascript:;"
                @click="select(2)"
                :class="index == 2 ? 'xz-border' : ''"
                >银色</a
              >
              <a
                href="javascript:;"
                @click="select(3)"
                :class="index == 3 ? 'xz-border' : ''"
                >黑色</a
              >
              <a
                href="javascript:;"
                @click="select(4)"
                :class="index == 4 ? 'xz-border' : ''"
                >玫瑰金</a
              >
            </dt>
          </dl>
          <dl class="middle-max-dl6">
            <dd class="fl middle-max-dd3">选择版本</dd>
            <dt class="fl middle-max-dt4">
              <a
                href="javascript:;"
                @click="edition(1)"
                :class="edi == 1 ? 'xz-border' : ''"
                >8GB+128GB</a
              >
              <a
                href="javascript:;"
                @click="edition(2)"
                :class="edi == 2 ? 'xz-border' : ''"
                >8GB+256GB</a
              >
            </dt>
          </dl>
          <dl class="middle-max-dl6">
            <dd class="fl middle-max-dd3">选择网络</dd>
            <dt class="fl middle-max-dt4">
              <a
                href="javascript:;"
                @click="network(1)"
                :class="net == 1 ? 'xz-border' : ''"
                >4G全网通</a
              >
            </dt>
          </dl>
          <dl class="middle-max-dl6">
            <dd class="fl middle-max-dd3">保障服务</dd>
            <dt class="fl middle-max-dt4">
              <a
                href="javascript:;"
                @click="services(1)"
                :class="ser == 1 ? 'xz-border' : ''"
                >官方标配</a
              >
              <a
                href="javascript:;"
                @click="services(2)"
                :class="ser == 2 ? 'xz-border' : ''"
                >移动优惠购</a
              >
              <a
                href="javascript:;"
                @click="services(3)"
                :class="ser == 3 ? 'xz-border' : ''"
                >电信优惠购</a
              >
            </dt>
          </dl>
          <dl class="middle-max-dl6">
            <dd class="fl middle-max-dd3">套装</dd>
            <dt class="fl middle-max-dt4">
              <a
                href="javascript:;"
                @click="protect(1)"
                :class="pro == 1 ? 'xz-border' : ''"
                >保护套装</a
              >
              <a
                href="javascript:;"
                @click="protect(2)"
                :class="pro == 2 ? 'xz-border' : ''"
                >充电套装</a
              >
            </dt>
          </dl>
          <div class="topnav-last-bottom">
            <div class="left fl">
              <div class="topnav-last-hd fl">
                <input type="text" value="0" />
              </div>
              <div class="topnav-last-bd fl">
                <a href="javascript:;">
                  <span class="jia">+</span>
                </a>
                <a href="javascript:;">
                  <span class="jian">-</span>
                </a>
              </div>
            </div>
            <div class="right fr">
              <a href="javascript:;">加入购物车</a>
            </div>
            <div class="right1 fr">
              <a href="javascript:;">立即下单</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 详情页上大半部分 end -->

    <!-- 最下方的猜你喜欢部分 start 放到新的模块，不要继续放到tionav-bd-end里面，效果出不来，会在end的最上方显示-->
    <!-- 猜你喜欢 -->
    <!-- <div class="w">
      <div class="cnxh">
        <div class="cnxh-hd">
          <span>猜你喜欢</span>
        </div>
        <div class="cnxh-bd">
          <ul>
            <li class="cnxh-bd-frist-li">
              <img src="upload/end-last-items_03.png" alt="" />
              <div class="comoon-cnxh-wz">
                DELL 戴尔 Ins 15MR-75<br />
                28SS 15英寸 银色 笔记
              </div>
              <p>¥6699.00</p>
              <div class="cnxh-last-wz">已有6人评价</div>
            </li>
            <li>
              <img src="upload/end-last-items_05.png" alt="" />
              <div class="comoon-cnxh-wz">
                Apple/苹果 iPhone 6s/6<br />
                s Plus 16G 64G 128G
              </div>
              <p>¥4699.00</p>
              <div class="cnxh-last-wz">已有66人评价</div>
            </li>
            <li>
              <img src="upload/end-last-items_07.png" alt="" />
              <div class="comoon-cnxh-wz">
                JBL OnBeat Rumble 无<br />
                线蓝牙派对节拍多媒体音
              </div>
              <p>¥199.99</p>
              <div class="cnxh-last-wz">已有666人评价</div>
            </li>
            <li>
              <img src="upload/end-last-items_09.png" alt="" />
              <div class="comoon-cnxh-wz">
                EXCO宜适酷 全屏钢化玻<br />
                璃膜For iPhone6s/6Plu
              </div>
              <p>¥0.99</p>
              <div class="cnxh-last-wz">已有6666人评价</div>
            </li>
            <li>
              <img src="upload/end-last-items_11.png" alt="" />
              <div class="comoon-cnxh-wz">
                Apple 苹果 iPhone 6（A1<br />
                586）16G 金色 移动联通
              </div>
              <p>¥3799.00</p>
              <div class="cnxh-last-wz">已有66666人评价</div>
            </li>
            <li>
              <img src="upload/end-last-items_13.png" alt="" />
              <div class="comoon-cnxh-wz">
                半岛铁盒移动电源A2200<br />
                白色 2200mAh
              </div>
              <p>¥19.99</p>
              <div class="cnxh-last-wz">已有666666人评价</div>
            </li>
          </ul>
        </div>
      </div>
    </div> -->

    <!--商品详情-->
    <div id="iteminfo">
      <div id="tab">
        <div class="tab lf">
          <div class="cat">
            <span class="active"><a href="">商品详情</a></span>
            <span><a href="/productdetails">商品评价</a></span>
          </div>
        </div>
      </div>
      <div class="left lf">
        <div class="all">
          <!--<p><img src="images_x/pin_logo.png" alt=""/></p>-->
          <div id="parm">
            <div id="specification_parameter">
              <p>
                规格参数
                <svg
                  t="1660740417549"
                  class="icon"
                  viewBox="0 0 1024 1024"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  p-id="1751"
                  width="14"
                  height="14"
                >
                  <path
                    d="M1024 307.2L512 0 0 307.2l512 307.2zM512 102.4l358.4 204.8-358.4 204.8-358.4-204.8zM102.4 675.84v102.4l409.6 245.76 409.6-245.76v-102.4L512 921.6l-409.6-245.76z"
                    p-id="1752"
                    fill="#515151"
                  ></path>
                  <path
                    d="M102.4 471.04v102.4l409.6 245.76 409.6-245.76v-102.4L512 716.8 102.4 471.04z"
                    p-id="1753"
                    fill="#515151"
                  ></path>
                </svg>
              </p>
            </div>
            <ul>
              <li>
                <a href="#">商品名称：{{ data.data[0].lname }}</a>
              </li>
              <li>
                <a href="#">电池容量：{{ data.data[0].os }}</a>
              </li>
              <li>
                <a href="#">运行内存：{{ data.data[0].memory }}</a>
              </li>
              <li>
                <a href="#">分辨率：{{ data.data[0].resolution }}</a>
              </li>
              <li>
                <a href="#">屏幕尺寸：{{ data.data[0].video_card }}</a>
              </li>
              <li>
                <a href="#">处理器：{{ data.data[0].cpu }}</a>
              </li>
              <li>
                <a href="#">cpu核数：{{ data.data[0].cpu_hs }}</a>
              </li>
              <li>
                <a href="#">型号：{{ data.data[0].category }}</a>
              </li>
              <li>
                <a href="#">操作系统:{{ data.data[0].disk }}</a>
              </li>
            </ul>
          </div>
          <div id="product_introduction">
            <p>
              商品介绍
              <svg
                t="1660740534355"
                class="icon"
                viewBox="0 0 1213 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="2877"
                width="14"
                height="14"
              >
                <path
                  d="M1213.62963 1024H0V0h1213.62963zM75.851852 948.148148h1061.925926V75.851852H75.851852z"
                  fill="#515151"
                  p-id="2878"
                ></path>
                <path
                  d="M541.961481 1013.001481L303.407407 774.068148l-238.554074 238.933333-53.854814-53.854814L303.407407 667.117037l292.408889 292.02963-53.854815 53.854814z"
                  fill="#515151"
                  p-id="2879"
                ></path>
                <path
                  d="M1148.776296 1013.001481L758.518519 622.364444l-276.48 276.85926-53.854815-53.854815 330.334815-329.955556 444.112592 443.733334-53.854815 53.854814zM455.111111 530.962963a151.703704 151.703704 0 1 1 151.703704-151.703704 151.703704 151.703704 0 0 1-151.703704 151.703704z m0-227.555556a75.851852 75.851852 0 1 0 75.851852 75.851852 75.851852 75.851852 0 0 0-75.851852-75.851852z"
                  fill="#515151"
                  p-id="2880"
                ></path>
              </svg>
            </p>
            <img :src="data.data[0].details_a" alt="" />
            <img :src="data.data[0].details_b" alt="" />
            <img :src="data.data[0].details_c" alt="" />
          </div>
          <div id="sale_protection">
            <p>
              售后服务
              <svg
                t="1660741757991"
                class="icon"
                viewBox="0 0 1024 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="3234"
                width="15"
                height="15"
              >
                <path
                  d="M522.709333 44.032l3.498667 1.066667 362.666667 128a42.666667 42.666667 0 0 1 28.330666 36.864L917.333333 213.333333v377.856h-0.426666c-7.786667 137.344-121.578667 256.853333-334.613334 361.621334l-20.693333 9.984c-10.496 4.970667-21.205333 9.92-32.170667 14.805333a42.666667 42.666667 0 0 1-34.858666 0 1673.301333 1673.301333 0 0 1-32.170667-14.805333l-20.693333-9.984c-213.034667-104.768-326.826667-224.256-334.613334-361.6H106.666667V213.333333a42.666667 42.666667 0 0 1 25.344-38.997333l3.114666-1.237333 362.666667-128a42.666667 42.666667 0 0 1 24.917333-1.066667zM512 130.56L192 243.498667V576c0 103.530667 93.034667 204.608 286.442667 299.797333l20.010666 9.664 13.546667 6.314667 13.546667-6.314667 20.032-9.664 19.328-9.706666c177.152-90.752 264.064-186.688 267.008-284.906667L832 576V243.498667L512 130.56z m-23.914667 518.72a21.226667 21.226667 0 0 1-11.328 5.909333l-2.496 0.298667h-2.517333a21.248 21.248 0 0 1-13.845333-6.208l-120.661334-120.682667a21.333333 21.333333 0 0 1 0-30.165333l30.165334-30.165333a21.333333 21.333333 0 0 1 30.165333 0l75.413333 75.413333 165.952-165.930667a21.333333 21.333333 0 0 1 30.165334 0l30.165333 30.165334a21.333333 21.333333 0 0 1 0 30.186666z"
                  fill="#8a8a8a"
                  p-id="3235"
                ></path>
              </svg>
            </p>
            <div class="sale_content">
              <p class="content">本产品全国联保，享受三包服务，保修期：1年</p>
              <p class="content">
                如因质量问题或性能故障，凭华为客户服务中心出具的质量检测证明，享受7日内退货，15日内换货，15日以上在保修期内可享受免费维修等三包服务
              </p>
              <p class="content">华为消费者服务热线：950800</p>
              <p class="content">
                华为消费者业务官网-服务与支持：https://consumer.huawei.com/cn/support/
              </p>
              <p class="content">华为官方服务软件：服务App</p>
            </div>
          </div>
          <div id="packing_list">
            <p>
              包装清单
              <svg
                t="1660743190009"
                class="icon"
                viewBox="0 0 1024 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="4608"
                width="15"
                height="15"
              >
                <path
                  d="M704 318.805333v-58.197333C704 152.149333 618.389333 64 512.469333 64s-191.530667 88.149333-191.530666 196.608v58.197333h42.666666v-58.197333c0-85.162667 66.773333-153.941333 148.864-153.941333C594.538667 106.666667 661.333333 175.445333 661.333333 260.608v58.197333h42.666667z"
                  fill="#707070"
                  p-id="4609"
                ></path>
                <path
                  d="M146.24 363.989333A25.045333 25.045333 0 0 1 170.666667 341.333333h682.666666c12.309333 0 23.552 10.474667 24.426667 22.656L914.346667 876.373333c0.810667 11.136-7.104 19.626667-18.282667 19.626667H127.936a17.856 17.856 0 0 1-18.282667-19.626667l36.586667-512.384zM103.68 360.96L67.093333 873.344A60.522667 60.522667 0 0 0 127.936 938.666667h768.128a60.373333 60.373333 0 0 0 60.842667-65.322667L920.32 360.96C917.845333 326.464 888.042667 298.666667 853.333333 298.666667H170.666667c-34.837333 0-64.512 27.626667-66.986667 62.293333z"
                  fill="#707070"
                  p-id="4610"
                ></path>
                <path
                  d="M661.333333 469.333333m-42.666666 0a42.666667 42.666667 0 1 0 85.333333 0 42.666667 42.666667 0 1 0-85.333333 0Z"
                  fill="#707070"
                  p-id="4611"
                ></path>
                <path
                  d="M362.666667 469.333333m-42.666667 0a42.666667 42.666667 0 1 0 85.333333 0 42.666667 42.666667 0 1 0-85.333333 0Z"
                  fill="#707070"
                  p-id="4612"
                ></path>
              </svg>
            </p>

            <p class="content">
              手机 x1 适配器 x1 电源线 x1 电池 x1 说明书（电子版）x1
              备注：笔记本电脑的背面只会标注此电脑的系列，例如： XPS 13-9360 ，
              如果您需要核实此电脑的具体配置型号是否与达内页面相符，可电话咨询达内厂商：800-858-2969
            </p>
          </div>
        </div>
      </div>
      <div class="right rt">
        <div :class="{ fixed_aside: active }" ref="pron">
          <p>
            <i><img src="../assets/img/product_detail_icon_g_1.png" alt="" /></i
            ><a href="#specification_parameter">规格参数</a>
          </p>
          <p>
            <i><img src="../assets/img/product_detail_icon_t_1.png" alt="" /></i
            ><a href="#product_introduction">商品介绍</a>
          </p>
          <p>
            <i><img src="../assets/img/product_detail_icon_d_1.png" alt="" /></i
            ><a href="#sale_protection">售后服务</a>
          </p>
          <p>
            <i
              ><img
                src="../assets/img/product_detail_icon_bao_1.png"
                alt="" /></i
            ><a href="#packing_list">包装清单</a>
          </p>
          <p>
            <i
              ><img
                src="../assets/img/product_detail_icon_up_1.png"
                alt="" /></i
            ><a href="#">回到顶部</a>
          </p>
        </div>
      </div>
    </div>
    <my-footer />
  </div>
</template>

<script>
import TopHeader from "@/components/TopHeader.vue";
import MyFooter from "@/components/MyFooter.vue";
export default {
  components: { TopHeader, MyFooter },
  computed: {
    p() {
      return this.data.product;
    },
    laptops() {
      return this.data.family.laptopList;
    },
    nowLid() {
      return this.$route.query.lid;
    },
  },
  data() {
    return {
      active: false,
      data: null,
      index: 0,
      edi: 0,
      net: 0,
      ser: 0,
      pro: 0,
    };
  },
  mounted() {
    window.addEventListener("scroll", this.handleScroll, true);
    this.getData();
  },
  watch: {
    nowLid() {
      this.getData();
    },
  },
  methods: {
    protect(i) {
      this.pro = i;
    },
    services(i) {
      this.ser = i;
    },
    network(i) {
      this.net = i;
    },
    edition(i) {
      this.edi = i;
    },
    select(i) {
      this.index = i;
    },
    handleScroll() {
      if (window.pageYOffset > 780) {
        this.active = true;
        console.log(this.active);
      } else {
        this.active = false;
      }
    },
    getData() {
      console.log(this.$route);
      const lid = this.$route.query.lid;
      const url = `http://127.0.0.1:3000/v1/phone/records?lid=${lid}`;
      console.log("url:", url);
      this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log(res);
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.swiper-wrapper{
  width: 432px;
}
.swiper-slide{
  width: 78px;
}
.topnav {
  height: 638px;
  overflow: hidden;
  /*解决右侧盒子bd建立后，footer塌了问题*/
  /*     background-color:pink; */
}

// 按钮
.topnav-last-bottom .left {
  display: flex;
}

.crump-wrap {
  height: 48px;
  line-height: 48px;
  padding-top: 10px;

  span {
    margin: 0 12px;
    font-size: 12px;
    color: #333;
    user-select: none;
  }

  a {
    margin: 0 12px;
    font-size: 12px;
    user-select: none;
    color: #666;
  }
}
.topnav-left {
  color: #3a3a3a;
  cursor: pointer;
  position: absolute;
  content: "";
  width: 30px;
  height: 30px;
  display: block;
  margin-top: 30px;
}
.topnav-right {
  color: #3a3a3a;
  position: absolute;
  cursor: pointer;
  text-decoration: none;
  content: "";
  width: 30px;
  height: 30px;
  display: block;
  margin-top: -48px;
  margin-left: 400px;
}

.topnav-hd {
  width: 400px;
  height: 588px;
}

.topnav-items-ul {
  width: 346px;
  height: 76px;
  margin: 0 auto;

  overflow: hidden;
  white-space: nowrap;
}

.topnav-items-ul li {
  float: left;
  margin: 0 4px;
  list-style: none;
  user-select: none;
}

.topnav-items {
  position: relative;
}

.items-dw2,
.items-dw1 {
  position: absolute;
  width: 27px;
  height: 56px;
}

.items-dw1 {
  left: 0px;
  top: 0px;
}

.items-dw2 {
  right: 2px;
  top: 0px;
}

.topnav-items-ul {
  margin-top: 55px;
}

.bianhao {
  height: 18px;
  /*     background-color: skyblue; */
  margin-top: 26px;
}

.bianhao span {
  position: relative;
  color: #666666;
  font-size: 12px;
  padding-left: 16px;
  margin-left: 22px;
}

.bianhao .bianhao-span1 {
  padding-left: 5px;
  margin-left: 13px;
  /*单独调整第一个span，第一个padding值不需要那么大，调整margin，每个span间的距离，padding，一个span内距离内部左边的距离*/
}

.bianhao i {
  display: inline-block; /*行内块元素*/
  width: 15px;
  height: 15px;
  /*     background-color: pink; */
}

.bianhao .bianhao-icon1 {
  position: absolute;
  left: -3px;
  top: 2px;
  background: url("") no-repeat;
  /* background-size: 15px 15px; 就一张图，写不写宽高都行，效果都一样*/
}

.bianhao .bianhao-icon2 {
  position: absolute;
  left: -3px;
  top: 2px;
  background: url("") no-repeat;
  /*  background-size: 15px 15px;  */
}

.bianhao .bianhao-icon3 {
  position: absolute;
  left: -3px;
  top: 2px;
  background: url("") no-repeat;
  /*  background-size: 15px 15px; */
}

.topnav-hd .img-boder {
  border: 1px solid #fff;
  border-top: none; /*图片截的上面有边框，没截好*/
}

.topnav-bd {
  height: 580px; /*638-58=580*/
  width: 720px;
}

.topnav-bd h4 {
  font-size: 16px;
  font-weight: 700;
  color: #333333;
  height: 33px;
  /*直接给其固定高度，就不用调整上下margin了*/
}

.bd-wz2 {
  font-size: 12px;
  height: 33px;
  color: #e12228;
}

.middle-max {
  width: 720px;
  height: 103px;
  background-color: #f5f5f5;
}

.dt1-hd-wz {
  color: #e12228;
  font-size: 24px;
}

.middle-max-dl1 {
  height: 44px;
  line-height: 44px;
  display: flex;
  justify-content: space-between;
}

.middle-max-dt1 {
  width: 636px;
}

.middle-max-dd1 {
  width: 60px;
  /*通过调整左边部分文字，使得右侧浮动到最右方*/
  padding-left: 8px;
  font-size: 14px;
  font-family: 黑体;
  color: #3a3a3a;
}

.dt1-hd-wz2 {
  line-height: 50px;
  font-size: 16px;
  color: rgb(192, 30, 30);
}

.dt1-hd {
  position: relative;
  width: 167px;
  /*为其设置宽度，让定位可以到最右方，通过调整盒子宽度调整定位位置*/
}

.dt1-hd-wz2 {
  position: absolute;
  right: 0px;
  bottom: 0px;
}

.dt1-hd-wz3 {
  display: inline-block;
  width: 547px;
}

.dt2-hd-wz {
  display: inline-block;
  width: 40px;
  height: 22px;
  color: #ffffff;
  background-color: #c81623;
  text-align: center;
  line-height: 22px;
  font-size: 10px;
}

.middle-max-dl3 {
  height: 43px;
  width: 270px;
}

.middle-max-dl2 {
  height: 69px;
  display: flex;
}

.middle-max-dl4 {
  height: 34px;
  line-height: 33px; /*调整各板块间的高度来控制其模块间的距离*/
  display: flex;
}

.dt1-hd-wz4 {
  color: #999999;
  font-size: 14px;
}
.dt1-hd-wz4 i {
  font-size: 16px;
}

.middle-max-dl5 {
  width: 545px;
  height: 50px;
  border-bottom: 1px solid #ededed;
  display: flex;
}

.dl5-dt2-bottom {
  margin-top: 4px;
  color: #999999;
  font-size: 14px;
}

.dl5-dt2-bottom span {
  font-weight: 700;
}

.middle-max-dd2 {
  width: 60px;
  height: 49px;
  line-height: 49px;
  padding-left: 8px;

  font-size: 14px;
  font-family: 黑体;
  color: #3a3a3a;
}

.middle-max-dl6 {
  position: relative;
  width: 426px;
  height: 50px;
  line-height: 57px;
  padding-left: 8px;
}

.middle-max-dt4 {
  position: absolute;
  width: 100%;
  height: 65px;
  /*     line-height:65px; */
  top: 1px;
  left: 70px;
}

.middle-max-dt4 a {
  display: inline-block;
  width: 88px;
  height: 40px;
  line-height: 40px;
  /*a中的文字垂直水平居中*/
  text-align: center;
  border: 1px solid #ededed;
  background-color: #f7f7f7;
  font-size: 14px;
  color: #3a3a3a;
  margin-right: 7px;
}

.middle-max-dd3 {
  text-align: center;
  position: absolute;
  left: 0px;
  /*不开定位都跑偏了，因为右侧兄弟元素已经根据middle-max-dl6盒子开启定位了*/
  width: 65px;
  height: 66px;
  font-size: 14px;
  font-family: 黑体;
  color: #3a3a3a;
}

.middle-max-dl6 .middle-max-dt4 .xz-border {
  /*.middle-max-dl6  .middle-max-dt4相当于两个公共样式，提权配送至（能选的部分都是这个模板样式）！*/
  border-color: #c81623;
}

.topnav-last-bottom {
  margin-top: 12px;
  width: 380px; /*加了margin要修改宽度，否则宽度不够的部分就会被挤下去去了*/
  height: 48px;
  padding-left: 70px;
  display: flex;
}

.topnav-last-bottom input {
  width: 35px;
  height: 47px;
  border: 1px solid #cccccc;
  /*不算到盒子里，加上边框后应该是45，现在正常是47px的基础上加上边框，即内部高度45，上下1px边框，合适*/
  box-sizing: border-box;
  text-align: center;
  border-right: none;
}

.topnav-last-bd {
  position: relative;
  width: 20px;
  height: 44px;
  /*     background-color: skyblue; */
}

.topnav-last-bd span {
  position: absolute;
  right: 0px;
  width: 20px;
  height: 24px;
  line-height: 24px;
  text-align: center;
  background-color: #f1f1f1;
  box-sizing: border-box;
}

.topnav-last-bd .jia {
  top: 0px;
  border: 1px solid #cccccc;
}

.topnav-last-bd .jian {
  bottom: -3px; /*边框的影响*/
  border: 1px solid #cccccc;
  /*件数是1，用css实现jian模块禁止单击效果*/
}

.topnav-last-bd input {
  outline: none;
  border: none;
}

.topnav-last-bottom .left {
  width: 62px;
  height: 48px;
}

.topnav-last-bottom .right {
  display: block;
  width: 142px;
  height: 48px;
  line-height: 48px;
  text-align: center;
  font-size: 18px;
  font-weight: 700;
  background-color: #fc600c;
  margin-left: 10px;
}

.topnav-last-bottom .right1 {
  display: block;
  width: 142px;
  height: 48px;
  line-height: 48px;
  text-align: center;
  font-size: 18px;
  font-weight: 700;
  background-color: #c81623;
  margin-left: 10px;
}

.topnav-last-bottom .right a,
.right1 a {
  color: #ffffff;
}

.topnav-bd-end {
  /*     height: 1000px; */
  /*等会回来删*/
  margin-top: 10px;
}

.topnav-bd-end-hd {
  width: 208px;
  /*  height: 1000px; */
  /*等会回来删，左侧图片多了之后长度就变化了，因此把长度去掉，一开始是看效果，现在能撑开了就不用长度了*/
  /*删完发现问题，下面的footer盒子塌了，父元素内的两个子两个浮动，都没有高度，因此为父topnav-bd-end添加overflowhidden*/
  border: 1px solid #dddddd;
  padding-bottom: 680px; /*挤出下面的空白高度，将边框挤下去，否则边框就在上面了*/
}
/* .topnav-bd-end-hd {} */

.topnav-bd-end {
  overflow: hidden;
}
.topnav-bd-end-bd {
  width: 980px;

  /*         height: 1000px; 这里高度限制下面图片了，去掉*/
  /*等会回来删*/
  /*         background-color: blue; */
}

.topnav-bd-end-hd-hd1-hd2 li {
  float: left;
  width: 102px; /*字数一样，给一个一致的宽就行了，字数不一样不能给宽！*/
  /*本是104，减去左右2px边框为102*/
  height: 31px;
  line-height: 31px; /*文字垂直居中*/
  /*本是33，减去上下2px边框为31*/
  background-color: #f1f1f1;
  border: 1px solid #dddddd;
  color: #333333;
}

.topnav-bd-end-hd-hd1-hd2 li {
  text-align: center;
}

.topnav-bd-end-hd-hd1-hd2 .current1 {
  /* border: none; 注意不是none，否则高度变了*/
  border-color: transparent;
  background-color: #fff;
}

.topnav-bd-end-hd-hd1-hd2 .current1 a {
  color: #c81623;
}

.topnav-bd-end-hd-hd1-bd2 {
  width: 186px; /*减去padding，因为如果整体下方有边框的化，不减宽度，盒子的边框位置就不对了，宽度就多了这12px*/
  /*186合适掉不下去*/
  height: 160px;
  padding-left: 12px;
}

.topnav-bd-end-hd-hd1 .topnav-bd-end-hd-hd1-bd2 li {
  float: left;
  width: 93px; /*中间的缝隙直接用宽度填满，因为最右侧有缝隙*/
  height: 28px;
  line-height: 28px;
  border-bottom: 1px dashed #ededed;
  /* text-align: center;只垂直居中就行，不需要水平居中对齐 */
}

.topnav-bd-end-hd-hd1-hd2 {
  height: 40px;
}

.topnav-bd-end-hd-hd1-bd2-wz2 {
  /*padding-left: 10px;没给宽度，随便挤padding*/
  /* width: 175px; */
  /*本来不想给padding好挤padding，但下面有不是满的边框，因此要给边框一样大的宽度，并减去padding 185-10=175，若效果不好再调整宽度即可*/
  border-bottom: 1px solid #ededed;
  /*发现边框依然是padding之前的，明白了，因此这里不能给padding，给margin即可，给margin不用改宽度，即变动*/
  width: 186px;
  padding-bottom: 8px; /*通过padding调整文字与边框的距离，通过marign调整边框与外部盒子的距离*/
  margin-left: 10px;
  font-size: 14px;
  font-weight: 600;
}

.topnav-bd-end-hd-bd1 {
  width: 208px;
  /*     height: 217px; 这个高度撑开就行了，不用单独设置*/
}

.topnav-bd-end-hd-bd1-wz1 {
  padding-left: 10px;
  font-size: 13px;
  height: 28px;
  /*实现一行显示文字，多出的部分用...显示效果*/
  overflow: hidden; /*溢出隐藏*/
  text-overflow: ellipsis; /*显示切除的文字部分*/
  white-space: nowrap; /*文字强制一行显示*/
  margin-bottom: 10px;
}

.topnav-bd-end-hd-bd1-wz2 {
  padding-left: 10px;
  font-weight: 600;
  height: 14px;
  /*border-bottom: 1px solid #e5e5e5;*/
}

.topnav-bd-end-hd-bd1-wz3 {
  /*块级元素，margin 0 auto就居中了*/
  margin: 0 auto;
  display: block;
  width: 88px;
  height: 26px;
  line-height: 26px;
  text-align: center;
  border: 1px solid #dddddd;
  color: #333333;
}

.topnav-bd-end-hd-bd1-wz4 {
  display: block;
  width: 190px;
  height: 25px;
  margin-left: 10px;
  margin-right: 10px;
  /*调整边距距离左右盒子的距离*/
  border-bottom: 1px solid #ededed;
}

.bd-item1-hd {
  height: 37px;
  background-color: #f1f1f1;
  border: 1px solid #dddddd;
}

.bd-item1-hd a {
  width: 87px;
  height: 39px;
  line-height: 39px;
  display: block;
  text-align: center;
  background-color: #c81623;
  color: #fff;
}

/* .topnav-bd-end-hd-bd1 img{
    width: 200px;
    height: 124px;
} */

.img-chang img {
  margin-bottom: 18px;
}

.bd-item1-md {
  height: 259px;
}

.md-left {
  width: 807px;
  height: 260px;
}

.md-right {
  /*经测试，为极限，因为外面大盒子宽度高度限定，高大1px吐出去，宽大1px right整体挤下去了*/
  width: 172px;
  height: 258px;
  border: 1px solid #dddddd;
  border-top: none;
  border-left: none;
}

.bd-item1-md-hd {
  height: 52px;
}

.bd-item1-md-hd li {
  float: left;
  margin: 13px 22px;
  /*普通的是一格44，左右/2为22*/
}

.margin-left-li {
  margin-left: 18px;
}

.bd-item1-md-hd li a {
  color: #999999;
}

.bd-item1-md-bd li {
  float: left;
  margin: 0 10px;
}

.bd-item1-md-bd .bd-item1-frist-li {
  position: relative;
  margin-left: 17px;
  margin-right: 32px;
}

.bd-item1-md-bd p {
  font-size: 14px;
  color: #e12228;
  margin-top: 8px;
  padding-left: 30px;
}

.bd-item1-md-bd li img {
  width: 132px;
  height: 132px;
}
.border-img1 {
  border: 1px solid #c81623;
}

.bd-item1-md-bd li .xin-wz {
  /*不给宽度，强制一行没有效果，下面三行代码就失效*/
  /*因此要设置宽度到正好显示小数点的位置*/
  width: 125px;
  /*直接给高度就不用给margin了,发现不行，他是靠底边显示的，不是靠顶部*/
  margin-top: 10px;
  white-space: nowrap; /*强制一行显示*/
  overflow: hidden; /*溢出隐藏*/
  text-overflow: ellipsis; /*溢出文字部分。。。显示*/
}

.icon-check_box_outline_blank {
  /* font-family: 'icomoon'; */
  /*上面有字的，不要给font-family，将其类名改为对应类名即可*/
  font-size: 16px;
  display: inline-block;
  width: 12px;
  height: 11px;
  color: #dddddd;
}

.qs {
  color: #e12228;
}

.item1-md-bd-bottom {
  height: 14px;
}

.jia-fudong {
  font-size: 30px;
  position: absolute;
  top: 45px;
  left: 150px;
  /*     width: 11px; 在这个+里面，宽高不好使，不加背景颜色的话没影响，而且看不出来效果，大小由这个font-size控制
    height: 11px; */
}

.md-left {
  position: relative;
  width: 805px;
  height: 258px;
  /*加了边框，重新修改宽高*/
  border: 1px solid #dddddd;
  border-top: none;
}

.youce-fudong {
  position: absolute;
  right: 0;
  top: 104px;
  /*top算法，先走整个.md-left 宽度一半，再走自己宽/高度的一半即为top，258/2=129，再往上走自己高度的一半50/2=25，即129-25=104，在垂直居中位置*/
  width: 20px;
  height: 50px;
  line-height: 50px; /*让字体图标垂直居中*/
  background-color: #dddddd;
  font-family: "icomoon";
  font-size: 22px;
  /*     text-align: center; 通过定位调整，不需要这个*/
  font-weight: 700;
  color: #fff;
  /*发现里面的字体文字的位置总是调不好，干脆就用定位，*/
}

.youce-fudong span {
  /*发现不好调整字体文字，直接用定位，简单完成，通过父绝子绝  实现效果 */
  position: absolute;
  right: 2px;
  top: 0;
}

.md-right-wz1 {
  margin-top: 46px;
}

.md-right-wz2 {
  font-weight: 700;
  font-size: 12px;
  /* height: 30px;都是靠底边对其，因此不能通过高度拉出缝隙，如果是靠顶部对其就可以了*/
  margin-top: 19px;
}

.md-right-wz3 {
  margin-top: 10px;
}

.md-right-wz3 span {
  font-size: 24px;
  color: #e12228;
}

.md-right-wz3 i {
  font-size: 16px;
  color: #e12228;
}

.md-right-wz1,
.md-right-wz2,
.md-right-wz3 {
  padding-left: 14px;
  /*单个随便挤，因为123都是字没有宽度，随便撑开，不需要再改宽度*/
  /* 可以单个挤，但不能整体挤，会掉下去 */
}

/*  .md-right{
     padding-left: 14px;
     overflow: hidden;解决不了问题
 } */

.md-right-wz4 {
  display: block;
  width: 142px;
  height: 46px;
  line-height: 46px;
  text-align: center;
  font-size: 18px;
  font-weight: 700;
  background-color: #c81623;
  margin-top: 35px;
  margin-left: 14px;
  /*唯一一个不能通过padding挤的部分，会使整个红框宽度越来越大，因此这个要用margin，实现效果*/
}

.md-right-wz4 a {
  color: #fff;
  cursor: pointer; /*放上去出现小手*/
}
/* 
 width: 87px;
 height: 39px;
 line-height: 39px;
 display: block;
 text-align: center;
 background-color: #c81623;
 color: #fff; */

.bd-item2-hd li {
  float: left;
  margin: 0 16px; /*不给宽度，让字体撑开即可，给margin让li分开 ,本来20，,16效果更好*/
}

.bd-item2-hd {
  background-color: #f1f1f1;
  margin-top: 20px;
  width: 978px;
  height: 39px;
  line-height: 39px;
  text-align: center;
  border: 1px solid #dddddd;
}

.bd-item2-hd .item2-hd-current {
  /* 提权 */
  background-color: #c81623;
  /*这个有背景颜色，单独给其li设置宽高好给背景颜色*/
  width: 87px;
  height: 39px;
  margin-left: 0px;
}

.bd-item2-hd .item2-hd-current a {
  color: #fff;
}

.bd-item2-md {
  position: relative;
  margin-top: 16px;
  width: 966px; /*980-padding的14=966，设置了padding对宽度进行调整*/
  height: 313px; /*为了留出高度的缝隙不要减去高度*/
  /*     background-color: pink; */
  padding-left: 14px;
  padding-bottom: 18px; /*为最下方与border留出距离，这个时候就不要减去高度了，否则高度留不出来缝隙*/
  border-bottom: 1px solid #dddddd;
}

.bd-item2 .bd-item2-md li {
  /*  float: left;一定不要浮动，这个就是li垂直摆下来的，没有在一行内 */
  height: 22px;
}

.bd-item2-md span {
  position: absolute;
  right: 0;
  bottom: 12px;
  color: #333333;
  font-weight: 700;
}

.item2-md-icon1 {
  font-family: "icomoon";
}

.cnxh-hd {
  height: 39px;
  line-height: 39px;
  /*      text-align: center; 就一个span，到最中间去了，效果不一样*/
  background-color: #f1f1f1;
  border: 1px solid #dddddd;
}

.cnxh {
  height: 335px;
  /*      background-color: skyblue; */
  margin-bottom: 20px;
}

.cnxh-hd span {
  font-size: 16px;
  color: #333333;
  margin: 12px; /*通过调整margin来控制span距离盒子的距离*/
}

.cnxh-bd {
  padding-top: 35px;
  height: 262px;
  border: 1px solid #dddddd;
  border-top: none;
  /*297-35=262,加了padding后对高度进行调整*/
}

.comoon-cnxh-wz {
  margin-top: 12px;
  height: 34px;
  line-height: 20px;
}

.cnxh .cnxh-bd li p {
  font-size: 16px;
  color: #cc0000;
  margin-top: 12px;
}

.cnxh-last-wz {
  margin-top: 25px;
  /*原本应该是34px，25px效果好一点*/
}

.cnxh-bd li {
  float: left;
  margin: 0 20px;
}

.cnxh-bd .cnxh-bd-frist-li {
  /*提权*/
  margin-left: 65px; /*原本69px，65效果好一点*/
}

/*商品详情*/
#iteminfo {
  margin-top: 18px;
  /*min-height:5000px;*/
  height: auto !important;
  /*border:1px solid yellow;*/
  /*height:auto !important;*/
  position: relative;
  clear: both;
  display: block;
  width: 1200px;
  margin: 0 auto;
}

#iteminfo .tab .cat {
  width: 1030px;
  height: 46px;
  border-bottom: 1px solid #e8e8e8;
  padding-top: 12px;
  box-sizing: border-box;
  background: -moz-linear-gradient(top, #eff0f0 0%, #e0dfe0 100%);
  background: -webkit-linear-gradient(top, #eff0f0 0%, #e0dfe0 100%);
  background: -o-linear-gradient(top, #eff0f0 0%, #e0dfe0 100%);
  background: -ms-linear-gradient(top, #eff0f0 0%, #e0dfe0 100%);
  box-shadow: 3px 3px 6px #ccc;
  position: absolute;
  top: 27px;
  left: 0px;
}

#iteminfo .tab .cat span {
  font-size: 20px;
  width: 85px;
  height: 32px;
  display: inline-block;
  margin-right: 30px;
  color: #808080;
  font-weight: inherit;
  padding-left: 3px;
}

#iteminfo .tab .cat span.active {
  color: #333333;
  font-weight: bold;
  border-bottom: 3px solid #0aa1ed;
  margin-left: 10px;
  text-align: center;
}

#iteminfo .tab .cat span a {
  color: #808080;
  font: 16px "microsoft yahei";
  font-weight: bold;
}

#iteminfo .tab .cat span.active a {
  color: #333;
}

#iteminfo .cart {
  margin-top: 6px;
  margin-right: 9px;
}

#iteminfo .left {
  width: 1030px;
  height: auto !important;
  clear: both;
  border-right: 1px solid #e8e8e8;
}

#iteminfo .left .all {
  width: 950px;
  height: auto !important;
  margin-top: 26px;
  clear: both;
}

#iteminfo .left .all p {
  margin-bottom: 10px;
}

#parm {
  width: 954px;
  min-height: 118px;
  margin-bottom: 10px;
}

#parm ul {
  width: 954px;
  min-height: 110px;
  border: none;
  list-style: none;
}

#parm ul li {
  width: 30%;
  float: left;
  margin-right: 20px;
  height: 30px;
  line-height: 40px;
  border: none;
  list-style: none;
}

#parm ul li a {
  color: #333333;
  font: 12px "simhei", Arial, Helvetica, sans-serif;
}

#parm ul li a:hover {
  color: #0aa1ed;
}

/*右侧导航*/
#iteminfo .right {
  width: 160px;
  height: 300px;
  text-align: center;
  position: absolute;
  top: 100px;
  right: 7px;
}

#iteminfo .right a {
  width: 155px;
  height: 50px;
  line-height: 50px;
  padding: 13px 24px;
  box-sizing: border-box;
  font-size: 16px;
  color: #828282;
}

#iteminfo .right p {
  background-color: #eae1e143;
  margin-bottom: 10px;
  border-radius: 2px;
  box-shadow: 1px 2px 3px #ccc;
}

#iteminfo .right p i {
  position: relative;
  top: 6px;
  left: 8px;
}

#iteminfo .right p a {
  color: #828282;
}

/*商品介绍*/
#iteminfo #tab {
  width: 1200px;
  height: 60px;
}

.fixed_aside {
  position: fixed;
  top: 100px;
  width: 160px;
  height: 300px;
  overflow: hidden;
  margin: 0px auto;
}

#product_introduction img {
  width: 1030px;
  height: 100%;
}
#product_introduction,
#specification_parameter,
#packing_list,
#sale_protection {
  height: auto !important;
  clear: both;
}

#packing_list {
  margin-bottom: 100px;
}

#product_introduction p,
#specification_parameter p,
#packing_list p,
#sale_protection p {
  margin-top: 10px;
  margin-bottom: 6px;
  font-size: 16px;
  color: #808080;
  font-family: "黑体";
  font-weight: bold;
}

.all .ys5 {
  position: relative;
  top: 5px;
  vertical-align: baseline;
}
/*售后保障*/
#sale_protection .sale_content {
  vertical-align: middle;
  border-top: 1px solid #ededed;
}

#sale_protection .sale_content .paper {
  margin-top: 20px;
  margin-bottom: 20px;
  color: #0aa1ed;
  height: 37px;
  font-weight: bold;
  font-size: 20px;
  line-height: 37px;
}

#sale_protection .sale_content .paper img {
  position: relative;
  top: 8px;
}

#sale_protection .sale_content .content {
  font-size: 12px;
  font-weight: inherit;
}

/*包装清单*/
#packing_list p {
  margin-top: 20px;
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #ededed;
}

#packing_list .content {
  font-size: 12px;
  font-weight: inherit;
}

.borderChange {
  border: 2px solid #0aa1ed !important;
}

#foot {
  width: 1000px;
  /*width: 100%;*/
  margin: 0 auto;
  /*margin-top: 80px;*/
  padding-top: 62px;
  background-color: #ffffff;
  overflow: hidden;
  color: black;
  clear: both;
  height: 260px;
  font-family: "microsoft yahei";
}

.record {
  position: relative;
  top: -12px;
}

#mImg {
  width: 100%;
  height: 100%;
}
</style>