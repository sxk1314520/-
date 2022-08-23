<template>
  <div>
    <top-header/>
    <div class="nav-content">
      <div class="w-top">
        <p>购物车</p>
        <div class="kuai">
          <ul>
            <li>
              <img src="img/product_normal.png" alt="" />
              <span>全选</span>
            </li>
            <li>
              <span>商品</span>
            </li>
            <li>
              <span>单价(元)</span>
            </li>
            <li>
              <span>数量</span>
            </li>
            <li>
              <span>金额</span>
            </li>
            <li>
              <span>操作</span>
            </li>
          </ul>
        </div>
      </div>
      <div class="item">
        <div class="thing">
          <div class="ko">
            <img src="img/product_normal.png" alt="" />
          </div>
          <div class="pro">
            <img src="img/product_simg1.png" alt="" />
            <div class="p-con">
              <span class="data"
                >联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD
                IPS)银</span
              >
              <p>颜色：深空灰</p>
            </div>
          </div>
          <div class="price">
            <p>达内专享价</p>
            <span>￥4888.00</span>
          </div>
          <div class="num">
            <button>-</button>
            <input type="text" />
            <button>+</button>
          </div>
          <div class="total">
            <span>￥4888.00</span>
          </div>
          <div class="caozuo">
            <span>删除</span>
          </div>
        </div>
        <div class="thing">
          <div class="ko">
            <img src="img/product_normal.png" alt="" />
          </div>
          <div class="pro">
            <img src="img/product_simg1.png" alt="" />
            <div class="p-con">
              <span class="data"
                >联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD
                IPS)银</span
              >
              <p>颜色：深空灰</p>
            </div>
          </div>
          <div class="price">
            <p>达内专享价</p>
            <span>￥4888.00</span>
          </div>
          <div class="num">
            <button>-</button>
            <input type="text" />
            <button>+</button>
          </div>
          <div class="total">
            <span>￥4888.00</span>
          </div>
          <div class="caozuo">
            <span>删除</span>
          </div>
        </div>
        <div class="thing">
          <div class="ko">
            <img src="img/product_normal.png" alt="" />
          </div>
          <div class="pro">
            <img src="img/product_simg1.png" alt="" />
            <div class="p-con">
              <span class="data"
                >联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD
                IPS)银</span
              >
              <p>颜色：深空灰</p>
            </div>
          </div>
          <div class="price">
            <p>达内专享价</p>
            <span>￥4888.00</span>
          </div>
          <div class="num">
            <button>-</button>
            <input type="text" />
            <button>+</button>
          </div>
          <div class="total">
            <span>￥4888.00</span>
          </div>
          <div class="caozuo">
            <span>删除</span>
          </div>
        </div>
      </div>
      <div class="w-bot">
        <div class="kuai">
          <ul>
            <li>
              <img src="img/product_normal.png" alt="" />
              <span>全选</span>
            </li>
            <li>
              <span>删除</span>
            </li>
            <li>
              <span>单价(元)</span>
            </li>
            <li>
              <button>去结算</button>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <my-footer />
  </div>
</template>

<script>
import MyFooter from "@/components/MyFooter.vue";
import "../assets/CSS/shoppingcart.css";
import TopHeader from '@/components/TopHeader.vue';
export default {
  components: { MyFooter, TopHeader },
};
</script>

<style lang="scss" scoped>
</style>