.class public final Le/a/h/g/w;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/h/g/p;",
        ">;",
        "Le/a/h/g/o;"
    }
.end annotation


# instance fields
.field public d:Le/a/l0/u/d/b;

.field public e:Le/a/r2/a;

.field public f:Le/a/r2/a;

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/h/b/r;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/u/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/h/b/d/b/j;

.field public final k:Le/a/p5/c0;

.field public final l:Le/a/k0/f;

.field public final m:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final n:Le/a/k0/a/l;

.field public final o:Le/a/r2/l;

.field public final p:Le/a/k0/a/h;

.field public final q:Le/a/p5/j0;

.field public final r:Ls1/w/f;

.field public final s:Le/a/l4/c;

.field public final t:Le/a/k0/i/a;


# direct methods
.method public constructor <init>(Le/a/h/b/r;Le/a/r2/f;Le/a/h/b/d/b/j;Le/a/p5/c0;Le/a/k0/f;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/l;Le/a/r2/l;Le/a/k0/a/h;Le/a/p5/j0;Ls1/w/f;Le/a/l4/c;Le/a/k0/i/a;)V
    .locals 1
    .param p1    # Le/a/h/b/r;
        .annotation runtime Ljavax/inject/Named;
            value = "call_recording_data_observer"
        .end annotation
    .end param
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p12    # Le/a/l4/c;
        .annotation runtime Ljavax/inject/Named;
            value = "call_recording_availability_manager"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/b/r;",
            "Le/a/r2/f<",
            "Le/a/l0/u/e/b;",
            ">;",
            "Le/a/h/b/d/b/j;",
            "Le/a/p5/c0;",
            "Le/a/k0/f;",
            "Lcom/truecaller/callrecording/CallRecordingManager;",
            "Le/a/k0/a/l;",
            "Le/a/r2/l;",
            "Le/a/k0/a/h;",
            "Le/a/p5/j0;",
            "Ls1/w/f;",
            "Le/a/l4/c;",
            "Le/a/k0/i/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dataObserver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingDataManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchRequestsMapping"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingNotificationManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingIntentDelegate"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p11}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/h/g/w;->h:Le/a/h/b/r;

    iput-object p2, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    iput-object p3, p0, Le/a/h/g/w;->j:Le/a/h/b/d/b/j;

    iput-object p4, p0, Le/a/h/g/w;->k:Le/a/p5/c0;

    iput-object p5, p0, Le/a/h/g/w;->l:Le/a/k0/f;

    iput-object p6, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p7, p0, Le/a/h/g/w;->n:Le/a/k0/a/l;

    iput-object p8, p0, Le/a/h/g/w;->o:Le/a/r2/l;

    iput-object p9, p0, Le/a/h/g/w;->p:Le/a/k0/a/h;

    iput-object p10, p0, Le/a/h/g/w;->q:Le/a/p5/j0;

    iput-object p11, p0, Le/a/h/g/w;->r:Ls1/w/f;

    iput-object p12, p0, Le/a/h/g/w;->s:Le/a/l4/c;

    iput-object p13, p0, Le/a/h/g/w;->t:Le/a/k0/i/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V
    .locals 1

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Le/a/h/b/o;->Bp(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/details_view/analytics/SourceType;ZZ)V

    :cond_0
    return-void
.end method

.method public D0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/p;->q5()V

    :cond_0
    return-void
.end method

.method public Dd(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/h/g/w;->k:Le/a/p5/c0;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 3
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f12012e

    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026Ids.size, getItemCount())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public Jd(Le/a/h/g/d;)Le/a/h/b/d/b/k;
    .locals 1

    const-string v0, "thisRef"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/h/g/w;->j:Le/a/h/b/d/b/j;

    return-object p1
.end method

.method public Ku(ZZ)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/h/g/p;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/h/g/p;->Ib()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/h/g/w;->l:Le/a/k0/f;

    invoke-interface {p2, p1}, Le/a/k0/f;->d6(Z)V

    .line 3
    :cond_1
    :goto_0
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/h/g/p;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Le/a/h/g/p;->d6(Z)V

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {p1}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/h/g/p;

    if-eqz p2, :cond_3

    .line 6
    sget-object v0, Le/a/k0/a/p$d;->a:Le/a/k0/a/p$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p2, v0}, Le/a/h/g/p;->Gw(Z)V

    .line 7
    sget-object v0, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p1}, Le/a/h/g/p;->cj(Z)V

    :cond_3
    return-void
.end method

.method public M1(Lcom/truecaller/data/entity/CallRecording;)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/CallRecording;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    .line 2
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/u/e/b;

    invoke-interface {v0, p1}, Le/a/l0/u/e/b;->M1(Lcom/truecaller/data/entity/CallRecording;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public Pm()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/h/g/p;->yn(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h/g/w;->l:Le/a/k0/f;

    invoke-interface {v0, v1}, Le/a/k0/f;->o0(Z)V

    return-void
.end method

.method public Qx()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/p;->Zw()V

    :cond_0
    return-void
.end method

.method public V8(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const p1, 0x7f0a009f

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a00e3

    if-eq p2, p1, :cond_0

    const p1, 0x7f0a00e6

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 2
    iget-object p2, p0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eq p1, p2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public Vb(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0e0001

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h/g/p;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/u/e/b;

    .line 5
    invoke-interface {v0}, Le/a/l0/u/e/b;->N1()Le/a/r2/x;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/h/g/w;->o:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    .line 7
    new-instance v2, Le/a/h/g/s;

    invoke-direct {v2, p0}, Le/a/h/g/s;-><init>(Le/a/h/g/w;)V

    .line 8
    new-instance v3, Le/a/h/g/u;

    invoke-direct {v3, v2}, Le/a/h/g/u;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/h/g/w;->e:Le/a/r2/a;

    .line 9
    iget-object v0, p0, Le/a/h/g/w;->h:Le/a/h/b/r;

    invoke-interface {v0, p0}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    .line 10
    iget-object v0, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/h/g/p;->pj(Z)V

    .line 11
    iget-object v0, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    new-instance v4, Le/a/h/g/q;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/h/g/q;-><init>(Le/a/h/g/w;Le/a/h/g/p;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/h/g/w;->e:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h/g/w;->h:Le/a/h/b/r;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    .line 4
    iget-object v0, p0, Le/a/h/g/w;->f:Le/a/r2/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_1
    return-void
.end method

.method public fb(Lcom/truecaller/data/entity/CallRecording;)V
    .locals 3

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 2
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/h/g/p;->e()V

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/h/g/p;->q5()V

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/h/g/p;->g0()V

    :cond_3
    return-void
.end method

.method public g6(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Le/a/h/g/w;->j:Le/a/h/b/d/b/j;

    invoke-interface {v1, v0}, Le/a/h/b/d/b/j;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/h/g/w;->e:Le/a/r2/a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/r2/a;->b()V

    .line 5
    :cond_1
    iget-object v1, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/u/e/b;

    invoke-interface {v1}, Le/a/l0/u/e/b;->N1()Le/a/r2/x;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/h/g/w;->o:Le/a/r2/l;

    invoke-interface {v2}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v2

    .line 7
    new-instance v3, Le/a/h/g/s;

    invoke-direct {v3, p0}, Le/a/h/g/s;-><init>(Le/a/h/g/w;)V

    .line 8
    new-instance v4, Le/a/h/g/v;

    invoke-direct {v4, v3}, Le/a/h/g/v;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v1, v2, v4}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v1

    iput-object v1, p0, Le/a/h/g/w;->e:Le/a/r2/a;

    .line 9
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/g/p;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/h/g/p;->m6(Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h8(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/h/g/p;->g()V

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/h/g/p;->a6(Z)V

    :cond_2
    return v0
.end method

.method public hA()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/p;->Ib()V

    :cond_0
    return-void
.end method

.method public i8(II)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f0a009f

    if-eq p2, p1, :cond_6

    const p1, 0x7f0a00e3

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a00e6

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    iget-object p1, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l0/u/e/b;

    iget-object p2, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {p1, p2}, Le/a/l0/u/e/b;->Q1(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object p1

    new-instance p2, Le/a/h/g/t;

    invoke-direct {p2, p0}, Le/a/h/g/t;-><init>(Le/a/h/g/w;)V

    invoke-virtual {p1, p2}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    goto :goto_1

    .line 2
    :cond_2
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 3
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    iget-object p2, p0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_3
    const-string v2, "history_call_recording_id"

    .line 6
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 9
    :cond_4
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/h/g/p;->q5()V

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/h/g/p;->g0()V

    goto :goto_1

    .line 12
    :cond_6
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    new-instance p2, Le/a/h/g/r;

    invoke-direct {p2, p0}, Le/a/h/g/r;-><init>(Le/a/h/g/w;)V

    invoke-virtual {p0, p1, p2}, Le/a/h/g/w;->re(Ljava/lang/Object;Le/a/h/g/m;)V

    :cond_7
    :goto_1
    return v0
.end method

.method public la(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/a/h/g/w;->j:Le/a/h/b/d/b/j;

    invoke-interface {v1, v0}, Le/a/h/b/d/b/j;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/g/p;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/h/g/p;->m6(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public mb(Lcom/truecaller/data/entity/CallRecording;)Z
    .locals 3

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    .line 2
    iget-wide v1, p1, Lcom/truecaller/data/entity/CallRecording;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/u/e/b;

    invoke-interface {v0}, Le/a/l0/u/e/b;->N1()Le/a/r2/x;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/h/g/w;->o:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    .line 3
    new-instance v2, Le/a/h/g/s;

    invoke-direct {v2, p0}, Le/a/h/g/s;-><init>(Le/a/h/g/w;)V

    .line 4
    new-instance v3, Le/a/h/g/u;

    invoke-direct {v3, v2}, Le/a/h/g/u;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v0, v1, v3}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/h/g/w;->e:Le/a/r2/a;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/g/p;->q5()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->i()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/h/g/w;->Ku(ZZ)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/h/g/w;->n:Le/a/k0/a/l;

    invoke-interface {v0}, Le/a/k0/a/l;->a()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->s:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->s:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    return-void
.end method

.method public re(Ljava/lang/Object;Le/a/h/g/m;)V
    .locals 4

    const-string v0, "objectsDeleted"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/h/g/w;->k:Le/a/p5/c0;

    const v2, 0x7f120922

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026_menu_delete_prompt_text)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1, p1, p2}, Le/a/h/g/p;->uk(Ljava/lang/String;Ljava/lang/Object;Le/a/h/g/m;)V

    :cond_0
    return-void
.end method

.method public ri(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/g/w;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/h/g/p;->a6(Z)V

    :cond_0
    return-void
.end method

.method public sa(I)V
    .locals 0

    return-void
.end method

.method public t8(Le/a/h/g/g;Ls1/a/l;)Le/a/l0/u/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/g/g;",
            "Ls1/a/l<",
            "*>;)",
            "Le/a/l0/u/d/b;"
        }
    .end annotation

    const-string v0, "callRecordingListItemPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    return-object p1
.end method

.method public zq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
