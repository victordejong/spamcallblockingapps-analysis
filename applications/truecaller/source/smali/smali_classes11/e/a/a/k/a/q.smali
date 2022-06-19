.class public final Le/a/a/k/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/p;


# instance fields
.field public final a:Le/a/a/k/a/i1;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/k/a/i1;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/i1;",
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "imVersionManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/q;->a:Le/a/a/k/a/i1;

    iput-object p2, p0, Le/a/a/k/a/q;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/events/Event;ZI)Lcom/truecaller/messaging/transport/im/ProcessResult;
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "process_event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "from_push"

    .line 3
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "event_type"

    .line 4
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Le/a/a/k/a/q;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/t;

    invoke-interface {p2, v0, v1, p3}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Le/a/a/k/a/q;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/t;

    invoke-interface {p2, v0, v1, p3}, Le/a/a/k/t;->u(ILandroid/content/Intent;I)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object p2

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->INCOMPATIBLE_EVENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    if-ne p2, p3, :cond_1

    .line 8
    iget-object p2, p0, Le/a/a/k/a/q;->a:Le/a/a/k/a/i1;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getOriginal()Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;

    move-result-object p3

    const-string v0, "event.original"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/truecaller/api/services/messenger/v1/events/Event$OriginalEvent;->getApiVersion()I

    move-result p3

    invoke-interface {p2, p3}, Le/a/a/k/a/i1;->e(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getIncompatibleEvent()Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;

    move-result-object p1

    const-string p2, "event.incompatibleEvent"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent;->getIgnorable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Lcom/truecaller/messaging/transport/im/ProcessResult;->FORCE_UPGRADE_ENCOUNTERED:Lcom/truecaller/messaging/transport/im/ProcessResult;

    return-object p1

    .line 10
    :cond_1
    sget-object p1, Lcom/truecaller/messaging/transport/im/ProcessResult;->SUCCESS:Lcom/truecaller/messaging/transport/im/ProcessResult;

    return-object p1
.end method
