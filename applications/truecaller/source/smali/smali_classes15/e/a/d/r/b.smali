.class public final Le/a/d/r/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.voip.data.VoipGroupHistoryRepositoryImpl$saveCallLog$1"
    f = "VoipGroupHistoryRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/r/c;

.field public final synthetic f:Le/a/d/c0/v0;


# direct methods
.method public constructor <init>(Le/a/d/r/c;Le/a/d/c0/v0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    iput-object p2, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

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

    new-instance p1, Le/a/d/r/b;

    iget-object v0, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    iget-object v1, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/r/b;-><init>(Le/a/d/r/c;Le/a/d/c0/v0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/r/b;

    iget-object v0, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    iget-object v1, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/r/b;-><init>(Le/a/d/r/c;Le/a/d/c0/v0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/r/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving group history event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    .line 4
    iget-object p1, p1, Le/a/d/c0/v0;->a:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Peers count must bigger than 0"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v2, "-1"

    const-string v3, ""

    const/4 v4, 0x1

    .line 7
    iget-object v5, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    if-le p1, v4, :cond_1

    .line 8
    iget-object v5, v5, Le/a/d/c0/v0;->e:Ljava/lang/String;

    if-eqz v5, :cond_3

    :goto_0
    move-object v3, v5

    goto :goto_2

    .line 9
    :cond_1
    iget-object v5, v5, Le/a/d/c0/v0;->a:Ljava/util/List;

    .line 10
    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/x0;

    .line 11
    iget-object v5, v5, Le/a/d/c0/x0;->a:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 12
    invoke-static {v5, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v4

    .line 13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    :goto_2
    iget-object v5, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    const-string v6, "$this$getHistoryEventType"

    .line 16
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v6, v5, Le/a/d/c0/v0;->b:Lcom/truecaller/voip/util/VoipEventType;

    .line 18
    invoke-static {v6}, Le/a/p5/s0/g;->W1(Lcom/truecaller/voip/util/VoipEventType;)I

    move-result v6

    const-string v7, "$this$getHistoryEventAction"

    .line 19
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v7, v5, Le/a/d/c0/v0;->b:Lcom/truecaller/voip/util/VoipEventType;

    .line 21
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v4

    .line 22
    :goto_3
    iget-wide v8, v5, Le/a/d/c0/v0;->c:J

    .line 23
    iget-object v5, v5, Le/a/d/c0/v0;->d:Ljava/lang/Long;

    .line 24
    new-instance v10, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v10, v3}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Ljava/lang/String;)V

    .line 25
    iput v6, v10, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-le p1, v4, :cond_5

    const-string p1, "com.truecaller.voip.manager.GROUP_VOIP"

    goto :goto_4

    :cond_5
    const-string p1, "com.truecaller.voip.manager.VOIP"

    .line 26
    :goto_4
    iput-object p1, v10, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 27
    iput v6, v10, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 28
    iput v7, v10, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 29
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 30
    iput-wide v3, v10, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    if-eqz v5, :cond_6

    .line 31
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 32
    iput-wide v3, v10, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 33
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 34
    iget-object p1, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    .line 35
    iget-object p1, p1, Le/a/d/r/c;->d:Lo3/a;

    .line 36
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l0/c;

    invoke-interface {p1, v10}, Le/a/l0/c;->C(Lcom/truecaller/data/entity/HistoryEvent;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 38
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 39
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCallLog: returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " items, took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error saving history event"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_7
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 44
    iget-object v3, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    .line 45
    iget-object v3, v3, Le/a/d/r/c;->c:Landroid/content/ContentResolver;

    .line 46
    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v5, "voip_history_peers"

    .line 47
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 48
    iget-object v5, p0, Le/a/d/r/b;->f:Le/a/d/c0/v0;

    .line 49
    iget-object v5, v5, Le/a/d/c0/v0;->a:Ljava/util/List;

    const-string v6, "it"

    .line 50
    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {p1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 53
    check-cast v8, Le/a/d/c0/x0;

    .line 54
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "history_id"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    iget-object v10, v8, Le/a/d/c0/x0;->a:Ljava/lang/String;

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    move-object v10, v2

    :goto_6
    const-string v11, "normalized_number"

    .line 57
    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v10, v8, Le/a/d/c0/x0;->b:I

    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "status"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    iget v8, v8, Le/a/d/c0/x0;->c:I

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "position"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-array v1, v1, [Landroid/content/ContentValues;

    .line 63
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Landroid/content/ContentValues;

    .line 64
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    .line 65
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 66
    :cond_a
    iget-object p1, p0, Le/a/d/r/b;->e:Le/a/d/r/c;

    .line 67
    iget-object p1, p1, Le/a/d/r/c;->b:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V

    return-object v0
.end method
