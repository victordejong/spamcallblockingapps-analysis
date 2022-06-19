.class public final Le/a/a/k/a/w1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/a/k/a/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/k/a/h0;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "subscriptionManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/a/a/k/a/w1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/w1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/h0;

    if-eqz v0, :cond_9

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Le/a/a/k/a/h0;->a(Z)V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .line 5
    invoke-static {p1}, Lp3/a/g1;->e(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    sget-object v1, Lp3/a/g1$b;->p:Lp3/a/g1$b;

    if-eq p1, v1, :cond_3

    sget-object v1, Lp3/a/g1$b;->q:Lp3/a/g1$b;

    if-ne p1, v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Le/a/a/k/a/h0;->a(Z)V

    goto :goto_1

    .line 8
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.truecaller.api.services.messenger.v1.events.Event"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    const-string v1, "event"

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Le/a/a/k/a/h0;->j:Le/a/a/k/a/i1;

    invoke-interface {v1}, Le/a/a/k/a/i1;->f()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v0, Le/a/a/k/a/h0;->e:Z

    if-eqz v1, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object v1, v0, Le/a/a/k/a/h0;->i:Le/a/a/k/a/p;

    invoke-interface {v1, p1, v2, v2}, Le/a/a/k/a/p;->a(Lcom/truecaller/api/services/messenger/v1/events/Event;ZI)Lcom/truecaller/messaging/transport/im/ProcessResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    goto :goto_1

    .line 12
    :cond_7
    invoke-virtual {v0}, Le/a/a/k/a/h0;->b()V

    goto :goto_1

    .line 13
    :cond_8
    iget-object v1, v0, Le/a/a/k/a/h0;->n:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1}, Le/a/a/g/m;->e()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;->newBuilder()Lcom/truecaller/api/services/messenger/v1/events/Event$Ack$a;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getId()J

    move-result-wide v2

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17
    iget-object p1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;

    invoke-static {p1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;->access$31800(Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;J)V

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event$Ack;

    if-eqz p1, :cond_9

    .line 19
    iget-object v0, v0, Le/a/a/k/a/h0;->a:Lp3/a/q1/h;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lp3/a/q1/h;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return-void
.end method
