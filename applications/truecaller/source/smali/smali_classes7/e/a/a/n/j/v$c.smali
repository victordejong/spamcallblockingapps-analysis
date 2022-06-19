.class public final Le/a/a/n/j/v$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/j/v;->me()V
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
    c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$onDeleteConfirmationClicked$1"
    f = "MediaListPresenter.kt"
    l = {
        0x12d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/n/j/v;


# direct methods
.method public constructor <init>(Le/a/a/n/j/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/n/j/v$c;

    iget-object v0, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    invoke-direct {p1, v0, p2}, Le/a/a/n/j/v$c;-><init>(Le/a/a/n/j/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/n/j/v$c;

    iget-object v0, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    invoke-direct {p1, v0, p2}, Le/a/a/n/j/v$c;-><init>(Le/a/a/n/j/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/n/j/v$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/n/j/v$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    .line 5
    iget-object v1, p1, Le/a/a/n/j/v;->s:Le/a/a/i1/d;

    .line 6
    iget-object p1, p1, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Le/a/a/g/l0/c;

    .line 11
    iget-object v5, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    .line 12
    iget-object v5, v5, Le/a/a/n/j/v;->m:Lcom/truecaller/messaging/data/types/Conversation;

    .line 13
    iget-wide v5, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v4, v5, v6}, Le/a/c/p/a;->f3(Le/a/a/g/l0/c;J)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iput v2, p0, Le/a/a/n/j/v$c;->e:I

    const-string p1, "conversation-deleteMediaFromMediaManager"

    .line 15
    invoke-interface {v1, v3, p1, v2, p0}, Le/a/a/i1/d;->c(Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 16
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 17
    iget-object v0, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    .line 18
    iget-boolean v1, v0, Le/a/a/n/j/v;->o:Z

    if-eqz v1, :cond_5

    .line 19
    iget-object v1, v0, Le/a/a/n/j/v;->w:Le/a/a/n/c;

    .line 20
    iget-object v0, v0, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 21
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v3, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    .line 22
    iget-object v3, v3, Le/a/a/n/j/v;->e:Ljava/util/Map;

    .line 23
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/g/l0/c;

    .line 24
    iget-wide v6, v6, Le/a/a/g/l0/c;->s:J

    .line 25
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 26
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_2

    .line 27
    :cond_4
    iget-object v1, v1, Le/a/a/n/c;->a:Le/a/q2/a;

    const-string v3, "StorageManagerDelete"

    const-string v6, "type"

    .line 28
    invoke-static {v3, v6}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 29
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "media"

    const-string v10, "name"

    .line 30
    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "numItems"

    .line 32
    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v11, v0

    .line 33
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalSize"

    .line 34
    invoke-static {v4, v5}, Le/a/p5/s0/g;->n(J)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2}, Le/a/p5/s0/g;->g1(DII)D

    move-result-wide v4

    .line 35
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v8}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v7, v2, v1}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 38
    iget-object p1, p0, Le/a/a/n/j/v$c;->f:Le/a/a/n/j/v;

    .line 39
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_6

    .line 40
    invoke-interface {p1}, Le/a/a/n/j/t;->e()V

    .line 41
    invoke-interface {p1}, Le/a/a/n/j/t;->o3()V

    .line 42
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
