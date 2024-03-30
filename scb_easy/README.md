# README #

#  ไฟล์งานที่เครื่องพี่ออมอยู่ที่ 
*    Folder Download > robot framework > scb_easy 
*    ให้เปิดแอป SCB easy ไว้หน้าโฮม
*    ตั้งค่าให้โทรศัพท์ไม่ดับ
*    ตั้งค่าปิดระบบสแกนลายนิ้วมือในแอปด้วย

# วิธีเซตมือถือในโค้ดให้ไปที่
*    TransferMenuVariables.robot มี 2 ตัวแปรที่ต้องเปลี่ยนเมื่อเปลี่ยนโทรศัพท์เครื่องใหม่
*    ${PLATFORM_VERSION}   10    > เวอร์ชั่น Android ของโทรศัพท์ที่ใช้เชื่อมต่อ
*    ${DEVICE_NAME}    MRG Mi 8 Pro    > ชื่อโทรศัพท์เครื่องที่ใช้เชื่อมต่อ

# ที่ต้องเปลี่ยน Data อยู่ใน Folder dataFile > dataTransfer.json
* dataTransfer.json
* {
*  "bank_number": "3542688266",
*  "bank_name": "TMB",
*  "amount": "1",
*  "pin": "357951",
*  "url_confirm": "http://restapi.demoqa.com/customer",
*  "que_id": "",
*  "ref_id": "",
*  "status": true
* }
*    bank_number หมายเลขบัญชีที่จะโอนเงิน
*    bank_name เลือกธนาคาร
*    amount ใส่จำนวนเงิน
*    pin หมายเลข pin เมื่อจะเข้าหน้า tranfer
*    url_confirm api ที่ต้องการทดสอบ
*    que_id  ตัวที่จะส่งไปใน body
*    ref_id  ตัวทีจะส่งไปใน body
*    status  ตัวที่จะส่งไปใน body

* ถ้าจะเปลี่ยนที่อยู่เรียกอ่านไฟล์ json จะอยู่ใน
*    TransferMenuKeyword.robot > keyword name = Read json file  สามารถแก้ไข path ได้ใน keyword นี้

# วิธีการรัน script 
* 1. cd ไปที่ Folder Download > robot framework > scb_easy ก่อน
* 2. เปิด Appium desktop แล้ว กด start server
* 3. คำสั่งที่ใช่รัน robot -d result scbApp.robot (ก่อนรันอย่าลืม start Appium และเปิดแอป SCB easy ไว้หน้าโฮม)

*  robot คำสั่งที่ใช้รัน
*  -d result  สร้างโฟร์เดอร์ไว้เก็บ log สามารถเปลี่ยนชื่อได้
*  scbApp.robot  ชื่อไฟล์งาน

# วิธีการดู log สามารถดูได้ที่โฟล์เดอร์ result ให้กดดูได้ที่ไฟล์ log.robot
