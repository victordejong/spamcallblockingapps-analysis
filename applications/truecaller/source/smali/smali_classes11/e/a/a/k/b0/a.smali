.class public final Le/a/a/k/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/b0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/k/w$c;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/k/w$c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/b0/a;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/b0/a;->b:Le/a/a/k/w$c;

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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 11

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v2, "null cannot be cast to non-null type com.truecaller.messaging.transport.status.StatusTransportInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;

    const/4 v2, 0x6

    .line 3
    invoke-static {v2}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 4
    iget-object v5, v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "raw_id = ?"

    .line 5
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0, v2}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    .line 10
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2, v6}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result v2

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 12
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "conversation_id"

    .line 13
    invoke-virtual {v5, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v5, -0x1

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "participant_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 15
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 16
    iget-object v7, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v8, "date"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-wide v9, v7, Lw3/b/a/e0/e;->a:J

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    iget-object v7, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    const-string v8, "dateSent"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-wide v7, v7, Lw3/b/a/e0/e;->a:J

    .line 21
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "date_sent"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    iget v7, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "seen"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-boolean v7, p1, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "read"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    iget v7, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "transport"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x2

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "category"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "classification"

    .line 27
    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    iget-wide v7, p1, Lcom/truecaller/messaging/data/types/Message;->C:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "sequence_number"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-virtual {v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 30
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 31
    iget-object v1, v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;->b:Ljava/lang/String;

    const-string v7, "raw_id"

    .line 32
    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v1, v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 37
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v1, "message.entities"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "message.entities.first()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/messaging/data/types/Entity;

    .line 38
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 39
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 40
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Lcom/truecaller/messaging/data/types/Entity;->c(Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v1, "message_id"

    .line 41
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Le/a/a/k/b0/a;->a:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.truecaller"

    :try_start_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_1

    .line 45
    array-length v0, v0

    goto :goto_2

    :cond_1
    move v0, v6

    :goto_2
    if-lez v0, :cond_2

    .line 46
    new-instance v0, Le/a/a/k/p;

    invoke-direct {v0, v3, v6, v6, p1}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    goto :goto_3

    .line 47
    :cond_2
    new-instance v0, Le/a/a/k/p;

    invoke-direct {v0, v6, v6, v6, p1}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    :goto_3
    return-object v0
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "entity"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "status"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 0
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

    const-string p6, "threadInfoCache"

    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "participantCache"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cursor"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeTo"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeFrom"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "operations"

    invoke-static {p7, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "trace"

    invoke-static {p8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "messagesToClassify"

    invoke-static {p10, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
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
    .locals 5

    .line 1
    check-cast p2, Le/a/a/k/b0/b;

    const-string p3, "info"

    .line 2
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "transaction"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "messagesToDelete"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Le/a/a/k/w;->d(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p3

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "message_id = ?"

    .line 5
    iput-object v1, p3, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p3, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p3

    .line 8
    invoke-virtual {p2, p3}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    .line 9
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Le/a/a/k/w;->d(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p3

    new-array v0, p4, [Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "_id = ?"

    .line 11
    iput-object p1, p3, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 12
    iput-object v0, p3, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 13
    invoke-virtual {p3}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    return p4
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 1

    .line 1
    check-cast p1, Le/a/a/k/b0/b;

    const-string v0, "transaction"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/b0/a;->b:Le/a/a/k/w$c;

    invoke-interface {v0, p1}, Le/a/a/k/w$c;->a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string v0, "transactionExecutor.execute(transaction)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

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
    check-cast p3, Le/a/a/k/b0/b;

    const-string p2, "message"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    .line 1
    check-cast p6, Le/a/a/k/b0/b;

    const-string p2, "info"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "transaction"

    invoke-static {p6, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/truecaller/messaging/data/types/TransportInfo;->u()J

    move-result-wide p1

    invoke-static {p1, p2}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p6, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    iget-object p3, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p4, "read"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    .line 6
    iget-object p3, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p4, "seen"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    .line 8
    invoke-virtual {p6, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    const/4 p1, 0x0

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
    new-instance v0, Le/a/a/k/b0/b;

    invoke-direct {v0}, Le/a/a/k/b0/b;-><init>()V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 1

    .line 1
    check-cast p2, Le/a/a/k/b0/b;

    const-string v0, "info"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
