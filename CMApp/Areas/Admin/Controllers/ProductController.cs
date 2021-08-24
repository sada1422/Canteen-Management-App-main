﻿using AutoMapper;
using CMApp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CMAppDataLayer;

namespace CMApp.Areas.Admin.Controllers
{
    public class ProductController : BaseController
    {
        public ProductController()
        {
            Mapper.Initialize(cfg => {
                cfg.CreateMap<Product, CMAppDataLayer.Models.Admin.Product>();
                cfg.CreateMap<CMAppDataLayer.Models.Admin.Product, Product>();
            });

            ViewBag.Suppliers = _ctx.Suppliers;
        }
        // GET: Admin/Product
        public ActionResult Index()
        {
            var products = _ctx.Products;
            var model = Mapper.Map<IEnumerable<Product>, IEnumerable<CMAppDataLayer.Models.Admin.Product >>(products);
            return View(model);
        }

        private CMAppDataLayer.Models.Admin.Product _getProduct(int id)
        {
            var product = _ctx.Products.FirstOrDefault(p => p.PID == id);
            var model = Mapper.Map<Product, CMAppDataLayer.Models.Admin.Product >(product);
            return model;
        }

        // GET: Admin/Product/Details/5
        public ActionResult Details(int id)
        {
            return View(_getProduct(id));
        }

        // GET: Admin/Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Product/Create
        [HttpPost]
        public ActionResult Create(CMAppDataLayer.Models.Admin.Product model)
        {
            try
            {

                // TODO: Add insert logic here
                var product = new Product
                {
                    PName = model.PName,
                    Brand = model.Brand,
                    Category = model.Category,
                    Description = model.Description,
                    ROL = model.ROL,
                    SID = model.SID,
                    UnitPrice = model.UnitPrice,
                    UnitsInStock = model.UnitsInStock
                };
                _ctx.Products.Add(product);
                _ctx.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                return View(model);
            }
        }

        // GET: Admin/Product/Edit/5
        public ActionResult Edit(int id)
        {
            return View(_getProduct(id));
        }

        // POST: Admin/Product/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, CMAppDataLayer.Models.Admin.Product model)
        {
            try
            {
                // TODO: Add update logic here
                Product p = _ctx.Products.FirstOrDefault(pr => pr.PID == model.PID);

                p.UnitPrice = model.UnitPrice;
                p.UnitsInStock = model.UnitsInStock;
                p.SID = model.SID;
                p.Brand = model.Brand;
                p.Description = model.Description;
                p.Category = model.Category;

                _ctx.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                
                return View(model);
            }
        }

        // GET: Admin/Product/Delete/5
        public ActionResult Delete(int id)
        {
            var product = _ctx.Products.FirstOrDefault(p => p.PID == id);
            _ctx.Products.Remove(product);
            _ctx.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
