from flask import Flask
import mysql.connector

conn = mysql.connector.connect(host='localhost',database='bits41',user='srvmdk',password='Pass$aurav123')

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello from Flask!'

def get_org(org_id):
    cursor_org = conn.cursor(dictionary=True)
    cursor_org.execute("SELECT * FROM company_org WHERE ORG_ID={}".format(org_id))
    res = cursor_org.fetchone()
    return res

def get_item(item_id):
    cursor_item = conn.cursor(dictionary=True)
    cursor_item.execute("SELECT * FROM item WHERE ITEM_ID={}".format(item_id))
    res = cursor_item.fetchone()
    return res

def get_supplier(supplier_id):
    cursor_item = conn.cursor(dictionary=True)
    cursor_item.execute("SELECT * FROM SUPPLIER WHERE SUPPLIER_ID={}".format(supplier_id))
    res = cursor_item.fetchone()
    return res

@app.route('/inventory')
def get_inventory():
    if conn.is_connected():
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM INVENTORY_ON_HAND")
        inventory_on_hand = []

        row = cursor.fetchone()
        while row is not None:
            inventory_on_hand.append(row)
            row = cursor.fetchone()

        # Add the objects
        for i in range(0, len(inventory_on_hand)):
            org_id = inventory_on_hand[i]['ORG_ID']
            org_obj = get_org(org_id)
            inventory_on_hand[i]['ORG_OBJ'] = org_obj

            item_id = inventory_on_hand[i]['ITEM_ID']
            item_obj = get_item(item_id)
            inventory_on_hand[i]['ITEM_OBJ'] = item_obj

        return {
            'success': True,
            'inventory_on_hand': inventory_on_hand
        }

    else:
        return 'Error Connecting To Database!'

@app.route('/orders')
def get_orders():
    if conn.is_connected():
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM PURCHASE_ORDER")

        purchase_orders = []
        row = cursor.fetchone()
        while row is not None:
            purchase_orders.append(row)
            row = cursor.fetchone()

        # Add the objects
        for i in range(0, len(purchase_orders)):
            supplier_id = purchase_orders[i]['SUPPLIER_ID']
            supplier_obj = get_supplier(supplier_id)
            purchase_orders[i]['SUPPLIER_OBJ'] = supplier_obj

            item_id = purchase_orders[i]['ITEM_ID']
            item_obj = get_item(item_id)
            purchase_orders[i]['ITEM_OBJ'] = item_obj

        return {
            'success': True,
            'purchase_orders': purchase_orders
        }

    else:
        return 'Error Connecting To Database!'

