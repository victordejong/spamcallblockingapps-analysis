.class public final Le/a/a/k/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/k/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a/k/q<",
            "Le/a/a/k/w;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/a/k/w$c;


# direct methods
.method public constructor <init>(Le/a/a/k/q;Le/a/a/k/w$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/q<",
            "Le/a/a/k/w;",
            ">;",
            "Le/a/a/k/w$c;",
            ")V"
        }
    .end annotation

    const-string v0, "transport"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    iput-object p2, p0, Le/a/a/k/a0/b;->b:Le/a/a/k/w$c;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->A()Z

    move-result v0

    return v0
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipients"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;

    move-result-object p1

    const-string p2, "transport.enqueueMessage(message, recipients)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->C(Landroid/content/Intent;I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "transport.deliverIntent(intent, resultCode)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;

    move-result-object p1

    const-string v0, "transport.storeMessage(message)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;

    move-result-object p1

    const-string v0, "transport.sendMessage(message)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->c(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 1

    const-string p3, "message"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "entity"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Le/a/a/k/q;->d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->e(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->g()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transport.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->getType()I

    move-result v0

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->h(Lw3/b/a/b;)V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->i(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    return p1
.end method

.method public j()Lw3/b/a/b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->j()Lw3/b/a/b;

    move-result-object v0

    const-string v1, "transport.lastSyncTime"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public k(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->k(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transport.prepareSimTokenToStore(simToken)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "+",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    const-string v0, "threadInfoCache"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participantCache"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursor"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeTo"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeFrom"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operations"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trace"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesToClassify"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    move/from16 v7, p6

    move/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Le/a/a/k/q;->m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v1

    return-wide v1
.end method

.method public n(Le/a/a/k/w;)Z
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le/a/a/k/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/a/k/w;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v0, "com.truecaller"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;ZLjava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/TransportInfo;",
            "Le/a/a/k/w;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const-string p3, "info"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "messagesToDelete"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a0/b;->b:Le/a/a/k/w$c;

    invoke-interface {v1, p1}, Le/a/a/k/w$c;->a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string v1, "transactionExecutor.execute(transaction)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    xor-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0}, Le/a/a/k/q;->r()Z

    move-result v0

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message;ILe/a/a/k/w;)Z
    .locals 0

    const-string p2, "message"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->t(J)V

    return-void
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    const-string p2, "info"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "transaction"

    invoke-static {p6, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide p1

    invoke-static {p1, p2}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p6, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "read"

    invoke-virtual {p4, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    .line 4
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "seen"

    invoke-virtual {p4, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    :cond_0
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "sync_status"

    invoke-virtual {p4, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p6, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    return p2
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->v(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    return p1
.end method

.method public w()Le/a/a/k/w;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/k/w;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "com.truecaller"

    invoke-direct {v0, v1}, Le/a/a/k/w;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1}, Le/a/a/k/q;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p1

    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    iget-object v2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "seen"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "sync_status"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    return v0
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/b;->a:Le/a/a/k/q;

    invoke-interface {v0, p1, p2}, Le/a/a/k/q;->z(Ljava/lang/String;Le/a/a/k/e;)Z

    move-result p1

    return p1
.end method
