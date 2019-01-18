import React from 'react'
class PurchaseOrderPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="form-group">
                    <label htmlFor="order_po_number">
                        {I18n.t("orders.form.purchase_order_pay_type.po_number")}
                    </label>
                    <input className="form-control" type="password"
                           name="order[po_number]"
                           id="order_po_number" />
                </div>
            </div>
        );
    }
}
export default PurchaseOrderPayType