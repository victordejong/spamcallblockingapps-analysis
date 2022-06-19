.class public final Le/a/a/o/a/k;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/o/a/i;",
        ">;",
        "Le/a/a/o/a/h;"
    }
.end annotation


# instance fields
.field public d:Le/a/l0/u/d/b;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/w/f;

.field public final h:Le/a/l0/u/e/b;

.field public final i:Le/a/a/o/p;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/callrecording/CallRecordingManager;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/p5/c0;

.field public final l:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/l0/u/e/b;Le/a/a/o/p;Lo3/a;Le/a/p5/c0;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/l0/u/e/b;",
            "Le/a/a/o/p;",
            "Lo3/a<",
            "Lcom/truecaller/callrecording/CallRecordingManager;",
            ">;",
            "Le/a/p5/c0;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingDataManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/a/o/a/k;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/a/o/a/k;->h:Le/a/l0/u/e/b;

    iput-object p4, p0, Le/a/a/o/a/k;->i:Le/a/a/o/p;

    iput-object p5, p0, Le/a/a/o/a/k;->j:Lo3/a;

    iput-object p6, p0, Le/a/a/o/a/k;->k:Le/a/p5/c0;

    iput-object p7, p0, Le/a/a/o/a/k;->l:Le/a/q2/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/o/a/k;->e:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public B5(Lcom/truecaller/data/entity/CallRecording;)Z
    .locals 2

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/o/a/k;->Ij(Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final Ij(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->k:Le/a/p5/c0;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100013

    invoke-interface {v0, v3, v1, v2}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getQuan\u2026e, callRecordingIds.size)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/o/a/i;

    if-eqz v1, :cond_0

    new-instance v2, Le/a/a/o/a/k$a;

    invoke-direct {v2, p0, p1}, Le/a/a/o/a/k$a;-><init>(Le/a/a/o/a/k;Ljava/util/Set;)V

    invoke-interface {v1, v0, v2}, Le/a/a/o/a/i;->Ep(Ljava/lang/String;Ls1/z/b/a;)V

    :cond_0
    return-void
.end method

.method public final Jj(Lcom/truecaller/data/entity/CallRecording;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/a/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/o/a/i;->g()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    .line 3
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    .line 6
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    .line 9
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iget-object p1, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/o/a/i;->e()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/a/i;->T0(Ljava/lang/String;)V

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/o/a/i;->Lc()V

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/a/o/a/i;->u1()V

    :cond_5
    return-void
.end method

.method public Qi(Lcom/truecaller/data/entity/CallRecording;)Z
    .locals 3

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/o/a/k;->Jj(Lcom/truecaller/data/entity/CallRecording;)V

    return v2

    .line 3
    :cond_0
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/a/o/a/k;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/callrecording/CallRecordingManager;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->STORAGE_MANAGER:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v0, p1, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    return v2
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/a/o/a/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/a/o/a/l;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/a/o/a/l;-><init>(Le/a/a/o/a/k;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    return-void
.end method

.method public d(I)V
    .locals 3

    const v0, 0x7f0a00a5

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a00e3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v0, :cond_1

    .line 6
    iget-wide v0, v0, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 7
    iget-object v2, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/o/a/i;->T0(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/o/a/i;->u1()V

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/a/i;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/a/o/a/i;->Lc()V

    goto :goto_1

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/o/a/k;->Ij(Ljava/util/Set;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public f1()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    return-object v0
.end method

.method public h0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public kj(Le/a/a/o/a/d;Ls1/a/l;)Le/a/l0/u/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/o/a/d;",
            "Ls1/a/l<",
            "*>;)",
            "Le/a/l0/u/d/b;"
        }
    .end annotation

    const-string v0, "callRecItemsPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    return-object p1
.end method

.method public s1()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, -0x1

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v2, :cond_0

    .line 7
    iget-wide v2, v2, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    :cond_2
    invoke-virtual {p0, v1}, Le/a/a/o/a/k;->Ij(Ljava/util/Set;)V

    return-void
.end method

.method public u(I)Z
    .locals 3

    const v0, 0x7f0a00a5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq p1, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public w3(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/a/a/o/a/k;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/a/o/a/k;->i:Le/a/a/o/p;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/a/o/a/k$b;

    invoke-direct {v4, p0, p1, v0}, Le/a/a/o/a/k$b;-><init>(Le/a/a/o/a/k;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-object v0
.end method

.method public yi(Lcom/truecaller/data/entity/CallRecording;)Z
    .locals 1

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/o/a/k;->Jj(Lcom/truecaller/data/entity/CallRecording;)V

    const/4 p1, 0x1

    return p1
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/a/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/o/a/i;->Lc()V

    :cond_0
    return-void
.end method

.method public z4(Lcom/truecaller/data/entity/CallRecording;)Z
    .locals 2

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/o/a/k;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/callrecording/CallRecordingManager;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->STORAGE_MANAGER:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v0, p1, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    const/4 p1, 0x1

    return p1
.end method
