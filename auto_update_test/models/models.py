# -*- coding: utf-8 -*-

from odoo import models, fields, api

class auto_update_test(models.Model):
    _name = 'auto_update_test.auto_update_test'

    name = fields.Char(string="Test3")
    # value = fields.Integer()
    # value2 = fields.Float(compute="_value_pc", store=True)
    # description = fields.Text()

    # @api.depends('value')
    # def _value_pc(self):
    #     self.value2 = float(self.value) / 100