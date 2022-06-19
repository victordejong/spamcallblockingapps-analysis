.class public final Le/a/a/k/x/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/x/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/a/k/x/b;

.field public final c:Le/a/a/i0;

.field public final d:Le/a/a/k/w$c;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/a/k/x/b;Le/a/a/i0;Le/a/a/k/w$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/a/k/x/b;",
            "Le/a/a/i0;",
            "Le/a/a/k/w$c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callHistoryManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historySyncHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/x/d;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/a/k/x/d;->b:Le/a/a/k/x/b;

    iput-object p3, p0, Le/a/a/k/x/d;->c:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/k/x/d;->d:Le/a/a/k/w$c;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "recipients"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History transport cannot enqueue any message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History transport does not expect any intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;Le/a/a/k/x/e;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->a:J

    .line 2
    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    iget-object v2, v0, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "read"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v2, v0, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "seen"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object v2, v0, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "sync_status"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v0}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    .line 9
    iget v0, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->c:I

    if-eqz v0, :cond_0

    int-to-long v0, v0

    .line 10
    iget-object p1, p2, Le/a/a/k/x/e;->e:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    .line 12
    iget-object p1, p2, Le/a/a/k/x/e;->g:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "History transport should only sync up with already existing events"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "History transport cannot send messages"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 0

    const-string p3, "message"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "entity"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History transport doesn\'t support entity download"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "History transport doesn\'t support content download"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "entity"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History transport doesn\'t support restore thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "history"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 3

    const-string v0, "time"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/x/d;->c:Le/a/a/i0;

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const/4 p1, 0x5

    .line 3
    invoke-interface {v0, p1, v1, v2}, Le/a/a/i0;->S0(IJ)V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public j()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/a/k/x/d;->c:Le/a/a/i0;

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public k(J)J
    .locals 0

    return-wide p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v1, v0, Le/a/a/k/x/d;->b:Le/a/a/k/x/b;

    move/from16 v7, p6

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Le/a/a/k/g;->j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v1

    return-wide v1
.end method

.method public n(Le/a/a/k/w;)Z
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Le/a/a/k/x/e;

    .line 2
    iget-object v0, p1, Le/a/a/k/x/e;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Le/a/a/k/x/e;->g:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Le/a/a/k/x/e;->d:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Le/a/a/k/x/e;->f:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Le/a/a/k/w;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public o(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;ZLjava/util/Set;)Z
    .locals 1

    .line 1
    check-cast p2, Le/a/a/k/x/e;

    const-string p3, "info"

    .line 2
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "transaction"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "messagesToDelete"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of p3, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-nez p3, :cond_0

    const-string p1, "Wrong transport info type"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 6
    iget p3, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->c:I

    if-eqz p3, :cond_1

    int-to-long p3, p3

    .line 7
    iget-object v0, p2, Le/a/a/k/x/e;->d:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-wide p3, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    .line 9
    iget-object p1, p2, Le/a/a/k/x/e;->f:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 5

    .line 1
    check-cast p1, Le/a/a/k/x/e;

    const-string v0, "transaction"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/a/k/x/e;->e:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Le/a/a/k/x/d;->a:Le/a/r2/f;

    .line 6
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    .line 7
    invoke-interface {v1, v0}, Le/a/l0/c;->x(Ljava/util/Set;)Le/a/r2/x;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    :cond_1
    iget-object v0, p1, Le/a/a/k/x/e;->g:Ljava/util/Set;

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Le/a/a/k/x/d;->a:Le/a/r2/f;

    .line 12
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    .line 13
    invoke-interface {v1, v0}, Le/a/l0/c;->A(Ljava/util/Set;)Le/a/r2/x;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 15
    :cond_3
    iget-object v0, p1, Le/a/a/k/x/e;->d:Ljava/util/Set;

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, Le/a/a/k/x/e;->f:Ljava/util/Set;

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    move-object v2, p1

    :cond_5
    if-eqz v2, :cond_6

    .line 19
    iget-object v0, p0, Le/a/a/k/x/d;->a:Le/a/r2/f;

    .line 20
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    .line 21
    iget-object v3, v2, Le/a/a/k/x/e;->f:Ljava/util/Set;

    .line 22
    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 23
    iget-object v2, v2, Le/a/a/k/x/e;->d:Ljava/util/Set;

    .line 24
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->CALL_AND_FLASH_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    invoke-interface {v0, v3, v2, v4}, Le/a/l0/c;->m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 26
    :cond_6
    iget-object v0, p0, Le/a/a/k/x/d;->d:Le/a/a/k/w$c;

    invoke-interface {v0, p1}, Le/a/a/k/w$c;->a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;

    return v1
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "History transport doesn\'t support attachments"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message;ILe/a/a/k/w;)Z
    .locals 0

    .line 1
    check-cast p3, Le/a/a/k/x/e;

    const-string p2, "message"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History message status can not be changed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "History transport does not support retry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    .line 1
    check-cast p6, Le/a/a/k/x/e;

    const-string p2, "info"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "transaction"

    invoke-static {p6, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of p2, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-nez p2, :cond_0

    const-string p1, "Wrong transport info type"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    invoke-virtual {p0, p1, p6}, Le/a/a/k/x/d;->D(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;Le/a/a/k/x/e;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public w()Le/a/a/k/w;
    .locals 1

    .line 1
    new-instance v0, Le/a/a/k/x/e;

    invoke-direct {v0}, Le/a/a/k/x/e;-><init>()V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 1

    .line 1
    check-cast p2, Le/a/a/k/x/e;

    const-string v0, "info"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-nez v0, :cond_0

    const-string p1, "Wrong transport info type"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    invoke-virtual {p0, p1, p2}, Le/a/a/k/x/d;->D(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;Le/a/a/k/x/e;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p2, p1, p1, p1, v0}, Le/a/a/k/e;->a(IIII)V

    return p1
.end method
