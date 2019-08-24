using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestChart.Models;

namespace TestChart.Controllers
{
    public class HomeController : Controller
    {
        ThucTapEntities db = new ThucTapEntities();

        public ActionResult Index()
        {
            return View();
        }
        public JsonResult Get()
        {

            var test = db.TestCharts.ToArray();
            var str = "";
            var listA = new List<int>();
            var listB = new List<int>();
            var listC = new List<int>();

            foreach (var row in test)
            {
                listA.Add(row.TongDon);
                listB.Add(row.XacNhan);
                listC.Add(row.ThanhCong);
            }
            //var st = str;
            var lst = new List<series>()
            {
                new series(){
                name = "Tong DH",
                type = "column",
                yAxis = 0,
                data =listA },

                new series(){
                name = "Da XN",
                yAxis = 1,
                type = "spline",
                data = listB },
                new series(){
                name = "Thanh Cong",
                type = "spline",
                yAxis = 1,
                dashStyle= "shortdot",
                data = listC },
            };

            return Json(new { lst = lst });
        }

    }
    public class series
    {
        public string name { get; set; }
        public string type { get; set; }
        public int yAxis { get; set; }
        public string dashStyle { get; set; }
        public List<int> data { get; set; }
    }
}