<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/5/16
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/vue.js"></script>
</head>
<body>
<div id="myApp">
    <p>今年3月3日发卖的任天堂新一代主机Switch的价格是:{{price}}日元,含税的价格为:{{priceshui}}日元,
        折合人命币为:{{ChinaRmb}}元</p>
    <button @click="btnClick1(10000)">价格加10000</button>
    <button @click="btnClick2(10800)">含税价格变为10800</button>
</div>
<script>
    //    Vue.component('game-item',{
    //        props:['game'],
    //        template:'<li>{{game.title}}</li>'
    //    })
    var myApp = new Vue({
        el: '#myApp',
        data: {
            price: 29900,
        },
//        watch:{
//            price:function (newprice,oldprice) {
//                console.log(newprice,oldprice)
//                this.priceshui=Math.round(this.price * 1.08);
//                this.ChinaRmb=Math.round(this.priceshui / 16.25);
//            },
//        },
        computed: {
            priceshui: {
                get: function () {
                    return Math.round(this.price * 1.08);
                },
                set: function (value) {
                    this.price = Math.round(value / 1.08);
                }
            },
            ChinaRmb: function () {
                return Math.round(this.priceshui / 16.75);
            }
        },
        methods: {
            btnClick1:function (pname) {
            },
            btnClick2: function (pname) {
                console.log(pname);
                this.priceshui = pname;
            }
        }
    })
</script>
</body>
</html>
