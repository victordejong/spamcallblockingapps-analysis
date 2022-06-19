.class public Lio/agora/rtc/internal/RtcEngineImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "RtcEngine"

    if-nez p2, :cond_0

    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "device attached"

    .line 3
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {p2}, Lio/agora/rtc/internal/RtcEngineImpl;->access$000(Lio/agora/rtc/internal/RtcEngineImpl;)V

    :cond_1
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "device detached"

    .line 6
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {p1}, Lio/agora/rtc/internal/RtcEngineImpl;->access$000(Lio/agora/rtc/internal/RtcEngineImpl;)V

    :cond_3
    return-void
.end method
