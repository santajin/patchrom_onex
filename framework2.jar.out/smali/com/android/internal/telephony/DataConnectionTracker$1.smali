.class Lcom/android/internal/telephony/DataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 495
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 496
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 498
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mScreenActionFlag:Z

    .line 500
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 503
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 505
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 507
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 509
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mScreenActionFlag:Z

    .line 511
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 514
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 516
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 518
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reconnect alarm. Previous state was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 519
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 521
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 522
    :cond_4
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 523
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 525
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 529
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 531
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 532
    .local v8, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, strSsid:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v9, "ChinaNet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "ChinaNet_CW"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "ChinaNet_HomeCW"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "[HTCCW]connected with CT C+W wifi AP"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 541
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42029

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 542
    .local v2, msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 543
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 525
    .end local v2           #msg:Landroid/os/Message;
    .end local v6           #strSsid:Ljava/lang/String;
    .end local v8           #wifi:Landroid/net/wifi/WifiManager;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 545
    :cond_7
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 547
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "[HTCCW]wifi disconnect scenario 1"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 548
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42029

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 549
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 550
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 555
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 556
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    const/4 v1, 0x1

    .line 559
    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_0

    .line 562
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 564
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 565
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "[HTCCW]wifi disconnect scenario 2"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 566
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42029

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 567
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 568
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 556
    .end local v1           #enabled:Z
    .end local v2           #msg:Landroid/os/Message;
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 572
    :cond_a
    const-string v9, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 573
    const-string v9, "newState"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/SupplicantState;

    .line 575
    .local v7, supplState:Landroid/net/wifi/SupplicantState;
    sget-object v9, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v7, v9, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 577
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "[HTCCW]wifi disconnect scenario 3"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 578
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42029

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 579
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 580
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 583
    .end local v2           #msg:Landroid/os/Message;
    .end local v7           #supplState:Landroid/net/wifi/SupplicantState;
    :cond_b
    const-string v9, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 584
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "fail_data_setup_counter"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 585
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v10, "fail_data_setup_fail_cause"

    sget-object v11, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 588
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set mFailDataSetupCounter="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mFailDataSetupFailCause="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :cond_c
    const-string v9, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 592
    const-string v9, "cw_reg_state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 593
    .local v5, status:I
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCCW]CW reg status change to:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 595
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42028

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 596
    .restart local v2       #msg:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 597
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 598
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #status:I
    :cond_d
    const-string v9, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 599
    const-string v9, "cw_sip_invite_result"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 600
    .local v4, retCode:I
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCCW]CW sip invite result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 602
    const/16 v9, 0xc9

    if-ne v4, v9, :cond_e

    .line 603
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 608
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v10, 0x65

    if-ne v9, v10, :cond_0

    .line 609
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x4202a

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 610
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v2, Landroid/os/Message;->arg1:I

    .line 612
    const/16 v9, 0xc9

    if-ne v4, v9, :cond_f

    .line 613
    const/4 v9, 0x1

    iput v9, v2, Landroid/os/Message;->arg2:I

    .line 618
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 605
    .end local v2           #msg:Landroid/os/Message;
    :cond_e
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    goto :goto_3

    .line 615
    .restart local v2       #msg:Landroid/os/Message;
    :cond_f
    const/4 v9, 0x0

    iput v9, v2, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method
