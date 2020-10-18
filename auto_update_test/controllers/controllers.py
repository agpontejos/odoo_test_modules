# -*- coding: utf-8 -*-
from odoo import http

# class AutoUpdateTest(http.Controller):
#     @http.route('/auto_update_test/auto_update_test/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/auto_update_test/auto_update_test/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('auto_update_test.listing', {
#             'root': '/auto_update_test/auto_update_test',
#             'objects': http.request.env['auto_update_test.auto_update_test'].search([]),
#         })

#     @http.route('/auto_update_test/auto_update_test/objects/<model("auto_update_test.auto_update_test"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('auto_update_test.object', {
#             'object': obj
#         })