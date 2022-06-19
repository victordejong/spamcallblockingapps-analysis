.class public final Le/a/h/b/d/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/b/n;


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Le/a/h/b/d/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/h/b/d/a/b/l;

.field public final d:Le/a/h/b/w;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/l;Le/a/h/b/w;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "completedCallLogItemFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerPerformanceAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/b/o;->c:Le/a/h/b/d/a/b/l;

    iput-object p2, p0, Le/a/h/b/d/a/b/o;->d:Le/a/h/b/w;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Le/a/h/b/d/b/i;)Le/a/h/b/d/a/b/k;
    .locals 6

    const-string v0, "mergedCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    .line 3
    iget-object v3, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 4
    iget-wide v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/b/d/a/b/k;

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 7
    iget-boolean v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    if-nez v3, :cond_0

    .line 8
    iget-object v3, p1, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 10
    iget-object v4, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 11
    iget-object v4, v4, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 13
    iget-object p1, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 14
    iget-object p1, p1, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    const-string p1, "it"

    .line 15
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 17
    iget-object v2, v2, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    .line 18
    :cond_1
    iget-object v2, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 19
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Le/a/h/b/d/a/b/o;->c:Le/a/h/b/d/a/b/l;

    invoke-interface {v2, p1}, Le/a/h/b/d/a/b/l;->a(Le/a/h/b/d/b/i;)Le/a/h/b/d/a/b/k;

    move-result-object v2

    .line 21
    iget-object v3, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    .line 22
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 23
    iget-wide v4, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 26
    iget-object p1, p0, Le/a/h/b/d/a/b/o;->d:Le/a/h/b/w;

    invoke-interface {p1, v3, v4}, Le/a/h/b/w;->d(J)V

    return-object v2
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/h/b/d/b/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mergedCalls"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/h/b/d/a/b/o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/h/b/d/a/b/o;->a:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/d/b/i;

    .line 4
    iget-object v1, v1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 5
    iget-wide v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 6
    iget-object v3, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/a/b/k;

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 9
    iput-object v0, p0, Le/a/h/b/d/a/b/o;->b:Ljava/util/HashMap;

    return-void
.end method
