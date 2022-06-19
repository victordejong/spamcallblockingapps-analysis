.class public Lio/agora/rtm/SendMessageOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enableHistoricalMessaging:Z

.field public enableOfflineMessaging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/agora/rtm/SendMessageOptions;->enableOfflineMessaging:Z

    .line 3
    iput-boolean v0, p0, Lio/agora/rtm/SendMessageOptions;->enableHistoricalMessaging:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "sendMessageOptions {enableOfflineMessaging: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/agora/rtm/SendMessageOptions;->enableOfflineMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableHistoricalMessaging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtm/SendMessageOptions;->enableHistoricalMessaging:Z

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
