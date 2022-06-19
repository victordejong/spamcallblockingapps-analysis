.class public Lio/agora/rtc/audio/HuaweiHardwareEarback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;


# direct methods
.method public constructor <init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;->this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "HuaweiHardwareEarback"

    if-eqz p1, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_0

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IAudioKitCallback: onResult error number "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;->this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z

    const-string p1, "IAudioKitCallback: HwAudioKaraokeFeatureKit init success "

    .line 5
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "IAudioKitCallback: audio kit not installed"

    .line 6
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "IAudioKitCallback: HwAudioKit init success"

    .line 7
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
