.class public final Le/a/a/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/i;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/z/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/z/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/a/w0/a;

.field public final f:Ln3/m0/y;

.field public final g:Le/a/o5/b0;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Le/a/r2/f;Le/a/r2/f;Le/a/a/w0/a;Ln3/m0/y;Le/a/o5/b0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Le/a/r2/f;
        .annotation runtime Ljavax/inject/Named;
            value = "sms_sender"
        .end annotation
    .end param
    .param p4    # Le/a/r2/f;
        .annotation runtime Ljavax/inject/Named;
            value = "im_sender"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/r2/f<",
            "Le/a/a/k/z/d;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/a/k/z/d;",
            ">;",
            "Le/a/a/w0/a;",
            "Ln3/m0/y;",
            "Le/a/o5/b0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsSender"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imSender"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesMonitor"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/f;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/a/k/f;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/k/f;->c:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/k/f;->d:Le/a/r2/f;

    iput-object p5, p0, Le/a/a/k/f;->e:Le/a/a/w0/a;

    iput-object p6, p0, Le/a/a/k/f;->f:Ln3/m0/y;

    iput-object p7, p0, Le/a/a/k/f;->g:Le/a/o5/b0;

    return-void
.end method


# virtual methods
.method public b(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/k/f;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/z/d;

    invoke-interface {v0, p1}, Le/a/a/k/z/d;->b(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/k/f;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/z/d;

    invoke-interface {v0, p1}, Le/a/a/k/z/d;->b(Lcom/truecaller/messaging/data/types/Message;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/a/a/k/f;->e:Le/a/a/w0/a;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-interface {v0, v1, p1}, Le/a/a/w0/a;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public g(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/16 v1, 0x9

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v1, v2, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, p1}, Le/a/a/g/m;->a(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    return-void
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    const-string v0, "Promise.wrap(null)"

    const-string v1, "message"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, p1}, Le/a/a/g/m;->Y(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, v1}, Le/a/a/g/m;->N(Lw3/b/a/b;)Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    :goto_1
    const-string v2, "if (storage.get().tell()\u2026omise.wrap(queuedMessage)"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/q<",
            "*>;",
            "Landroid/content/Intent;",
            "I)",
            "Le/a/r2/x<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "transport"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2, p3}, Le/a/a/k/q;->C(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(transport.d\u2026tent(intent, resultCode))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public j(Lcom/truecaller/messaging/data/types/Message;J[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "J[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "J)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "message"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipients"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1, p1, p4, p2, p3}, Le/a/a/g/m;->v(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-string p2, "Promise.wrap(false)"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/16 v1, -0x1

    cmp-long p1, p3, v1

    if-nez p1, :cond_0

    .line 2
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    cmp-long p1, p5, v1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-interface {p1, p5, p6}, Le/a/a/g/m;->h(J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/a/k/f;->f:Ln3/m0/y;

    iget-object p2, p0, Le/a/a/k/f;->g:Le/a/o5/b0;

    invoke-interface {p2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p2

    .line 5
    iget-wide p2, p2, Lw3/b/a/e0/e;->a:J

    const-string p4, "workManager"

    .line 6
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p4, Ln3/m0/h;->a:Ln3/m0/h;

    .line 8
    new-instance p5, Ln3/m0/r$a;

    const-class p6, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    invoke-direct {p5, p6}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    sget-object p6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, p2, p3, p6}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object p2

    check-cast p2, Ln3/m0/r$a;

    .line 10
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    check-cast p2, Ln3/m0/r;

    const-string p3, "ScheduleMessage"

    .line 11
    invoke-virtual {p1, p3, p4, p2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_2
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public k(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;II)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "[",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "II)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation

    const-string v0, "Promise.wrap(null)"

    const-string v1, "message"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recipients"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, p1, p2, p3}, Le/a/a/g/m;->c(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;I)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result p2

    const/4 p3, 0x0

    new-array v2, p3, [Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 p2, p2, 0x10

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    new-array v3, p3, [Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    new-array v4, p3, [Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne p2, v3, :cond_2

    move p2, v2

    goto :goto_2

    :cond_2
    move p2, p3

    :goto_2
    new-array v3, p3, [Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v3, "queuedMessage.getTransportInfo<TransportInfo>()"

    .line 7
    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v2, p3

    :goto_3
    new-array p2, p3, [Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Promise.wrap(queuedMessage)"

    if-nez p4, :cond_5

    .line 8
    :try_start_1
    iget-object p3, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/r2/f;

    invoke-interface {p3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/m;

    invoke-interface {p3, v1}, Le/a/a/g/m;->N(Lw3/b/a/b;)Le/a/r2/x;

    move-result-object p3

    invoke-virtual {p3}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, p4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 9
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_4
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object p1

    .line 11
    :cond_5
    iget-object p3, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/r2/f;

    invoke-interface {p3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/m;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-interface {p3, v2}, Le/a/a/g/m;->N(Lw3/b/a/b;)Le/a/r2/x;

    move-result-object p3

    invoke-virtual {p3}, Le/a/r2/x;->g()V

    .line 12
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/a/k/f;->a:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/a/k/f$a;

    invoke-direct {v5, p0, p4, v1}, Le/a/a/k/f$a;-><init>(Le/a/a/k/f;ILs1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 13
    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 14
    :cond_6
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 15
    :catch_0
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-object p1
.end method

.method public l(JJ)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/f;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, p1, p2, p3, p4}, Le/a/a/g/m;->u(JJ)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/k/f;->f:Ln3/m0/y;

    iget-object p2, p0, Le/a/a/k/f;->g:Le/a/o5/b0;

    invoke-interface {p2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p2

    .line 3
    iget-wide p2, p2, Lw3/b/a/e0/e;->a:J

    const-string p4, "workManager"

    .line 4
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p4, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v0, Ln3/m0/r$a;

    const-class v1, Lcom/truecaller/messaging/sending/ScheduleMessageWorker;

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x0

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object p2

    check-cast p2, Ln3/m0/r$a;

    .line 8
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    check-cast p2, Ln3/m0/r;

    const-string p3, "ScheduleMessage"

    .line 9
    invoke-virtual {p1, p3, p4, p2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
