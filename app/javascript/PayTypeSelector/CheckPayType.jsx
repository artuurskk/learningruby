import React from 'react'
class CheckPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="form-group">
                    <label htmlFor="order_routing_number">
                        {I18n.t("orders.form.check_pay_type.routing_number")}
                    </label>
                    <input className="form-control" type="password"
                           name="order[routing_number]"
                           id="order_routing_number" />
                </div>
                <div className="form-group">
                    <label htmlFor="order_acount_number">
                        {I18n.t("orders.form.check_pay_type.account_number")}
                    </label>
                    <input className="form-control" type="text"
                           name="order[account_number]"
                           id="order_account_number" />
                </div>
            </div>
        );
    }
 }
export default CheckPayType