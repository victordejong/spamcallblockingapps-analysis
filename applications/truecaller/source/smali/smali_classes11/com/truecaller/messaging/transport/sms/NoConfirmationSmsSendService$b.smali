.class public final Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->onStartCommand(Landroid/content/Intent;II)I
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
    c = "com.truecaller.messaging.transport.sms.NoConfirmationSmsSendService$onStartCommand$2"
    f = "NoConfirmationSmsSendService.kt"
    l = {
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

.field public final synthetic g:[Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;[Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->g:[Lcom/truecaller/data/entity/messaging/Participant;

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

    new-instance p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;-><init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;[Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;-><init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;[Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->g:Lo3/a;

    if-eqz p1, :cond_7

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iput v3, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    .line 8
    iget-object v1, v0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->e:Lo3/a;

    if-eqz v1, :cond_6

    .line 9
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "messageAnalytics.get()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/q2/i0;

    iget-object v4, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    .line 10
    iget-object v4, v4, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->f:Lo3/a;

    if-eqz v4, :cond_5

    .line 11
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "messagesMonitor.get()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Le/a/a/w0/a;

    iget-object v4, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$b;->f:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    .line 12
    iget-object v4, v4, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->d:Lo3/a;

    if-eqz v4, :cond_4

    .line 13
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "transportManager.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/a/k/t;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v4, "draft.media"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v3

    iget-object v5, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v2, v0, v5, v3}, Le/a/a/k/t;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v9

    .line 16
    invoke-interface {v2, v9}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object v0

    const-string v2, "transportManager.getTransport(transportType)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Le/a/a/k/q;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "transportManager.getTransport(transportType).name"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    const-string v3, "draft.analyticsId"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "draft.participants"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "inCall"

    invoke-interface {v1, v7, v2, v0, v3}, Le/a/q2/i0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;)V

    .line 18
    iget-object v7, p1, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    iget-object v10, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static {v11, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const-string v8, "inCall"

    invoke-interface/range {v6 .. v12}, Le/a/a/w0/a;->i(Ljava/lang/String;Ljava/lang/String;I[Lcom/truecaller/data/entity/messaging/Participant;[Lcom/truecaller/messaging/data/types/BinaryEntity;Z)V

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_4
    const-string p1, "transportManager"

    .line 20
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "messagesMonitor"

    .line 21
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "messageAnalytics"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string p1, "readMessageStorage"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
