.class public Lio/agora/rtc/audio/OppoHardwareEarback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/OppoHardwareEarback;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/audio/OppoHardwareEarback;


# direct methods
.method public constructor <init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$1;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onConnectionSucceed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$1;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$002(Lio/agora/rtc/audio/OppoHardwareEarback;Z)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
