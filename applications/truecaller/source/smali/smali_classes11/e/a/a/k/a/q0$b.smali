.class public final Le/a/a/k/a/q0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/q0;->g(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onMessageSentEvent$1"
    f = "ImTypingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/q0;

.field public final synthetic f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;


# direct methods
.method public constructor <init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/q0$b;->e:Le/a/a/k/a/q0;

    iput-object p2, p0, Le/a/a/k/a/q0$b;->f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/k/a/q0$b;

    iget-object v0, p0, Le/a/a/k/a/q0$b;->e:Le/a/a/k/a/q0;

    iget-object v1, p0, Le/a/a/k/a/q0$b;->f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/q0$b;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/k/a/q0$b;->e:Le/a/a/k/a/q0;

    iget-object v1, p0, Le/a/a/k/a/q0$b;->f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object p2

    const-string v2, "event.sender"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "event.sender.id"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v2, "event.recipient"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Le/a/a/k/a/q0;->c:Ljava/util/Map;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/a2;

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, v3, Le/a/a/k/a/a2;->c:Lq3/a/p1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 10
    invoke-static {v3, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    invoke-static {v0, p2, v1, v2}, Le/a/a/k/a/q0;->h(Le/a/a/k/a/q0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/k/a/q0$b;->f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object p1

    const-string v1, "event.sender"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event.sender.id"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/k/a/q0$b;->f:Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v2, "event.recipient"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/a/a/k/a/q0$b;->e:Le/a/a/k/a/q0;

    .line 5
    iget-object v2, v2, Le/a/a/k/a/q0;->c:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/a2;

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v3, Le/a/a/k/a/a2;->c:Lq3/a/p1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9
    invoke-static {v3, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    iget-object v3, p0, Le/a/a/k/a/q0$b;->e:Le/a/a/k/a/q0;

    invoke-static {v3, p1, v1, v2}, Le/a/a/k/a/q0;->h(Le/a/a/k/a/q0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method
