*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub    # URL to appium server
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}   10    #10    #9.0   #8.0.0
${DEVICE_NAME}    MRG Mi 8 Pro    #MRG Mi 8 Pro    #Pixel 3a  #Galaxy S7
${APP_PACKAGE}    com.scb.phone    #com.sec.android.app.launcher
${APP_ACTIVITY}       com.scb.phone.view.activity.splash.SplashActivity    #com.scb.phone.view.activity.HomeActivity
${APPIUM_PORT}            4723
${APPIUM_SERVER}          http://0.0.0.0:${APPIUM_PORT}/wd/hub
${BOOTSTRAP_PORT}         4724
${txtSuccessfulmoneytransfer}    	Successful transfer   #โอนเงินสำเร็จ
${txtbacktoAccount}   Return to accounts >    #กลับหน้ารวมบัญชี >
${txtInputPin}    Enter PIN   #ใส่รหัส PIN
${txtErrorTimeout}    Error   #เกิดข้อผิดพลาด
