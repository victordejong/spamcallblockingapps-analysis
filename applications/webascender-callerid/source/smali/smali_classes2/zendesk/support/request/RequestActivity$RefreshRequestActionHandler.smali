.class final Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/RequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefreshRequestActionHandler"
.end annotation


# instance fields
.field private final requestId:Ljava/lang/String;

.field final synthetic this$0:Lzendesk/support/request/RequestActivity;


# direct methods
.method constructor <init>(Lzendesk/support/request/RequestActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;->this$0:Lzendesk/support/request/RequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "request_conversation_refresh"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getActionDescription()Lzendesk/core/ActionDescription;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handle(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;->this$0:Lzendesk/support/request/RequestActivity;

    iget-object p2, p1, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    iget-object p1, p1, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {p1}, Lzendesk/support/request/ActionFactory;->updateCommentsAsync()Lt/a/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lt/a/f;->c(Lt/a/a;)V

    return-void
.end method

.method public updateSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
