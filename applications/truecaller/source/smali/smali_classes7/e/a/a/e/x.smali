.class public final Le/a/a/e/x;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/e/v;",
        ">;",
        "Le/a/a/e/u;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/a/i0;

.field public final k:Le/a/a/e/m;

.field public final l:Le/a/a/s0/d;

.field public final m:Le/a/o5/b0;

.field public final n:Le/a/q2/a;

.field public final o:Le/a/p5/g;

.field public final p:Le/a/b0/q/l0;

.field public final q:Le/a/u3/g;

.field public final r:Le/a/c0/h;

.field public final s:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/a/i0;Le/a/a/e/m;Le/a/a/s0/d;Le/a/o5/b0;Le/a/q2/a;Le/a/p5/g;Le/a/b0/q/l0;Le/a/u3/g;Le/a/c0/h;Le/a/q2/d1/d;)V
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleaner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSmsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/e/x;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/a/e/x;->i:Ls1/w/f;

    iput-object p3, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/e/x;->k:Le/a/a/e/m;

    iput-object p5, p0, Le/a/a/e/x;->l:Le/a/a/s0/d;

    iput-object p6, p0, Le/a/a/e/x;->m:Le/a/o5/b0;

    iput-object p7, p0, Le/a/a/e/x;->n:Le/a/q2/a;

    iput-object p8, p0, Le/a/a/e/x;->o:Le/a/p5/g;

    iput-object p9, p0, Le/a/a/e/x;->p:Le/a/b0/q/l0;

    iput-object p10, p0, Le/a/a/e/x;->q:Le/a/u3/g;

    iput-object p11, p0, Le/a/a/e/x;->r:Le/a/c0/h;

    iput-object p12, p0, Le/a/a/e/x;->s:Le/a/q2/d1/d;

    return-void
.end method


# virtual methods
.method public Bb()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/e/v;->qm()V

    :cond_0
    return-void
.end method

.method public Eh(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->b1(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/e/x;->Mj()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->y()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/e/v;->Hs()V

    :cond_0
    return-void
.end method

.method public I8()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->V3()I

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->O1()I

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->y1()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Le/a/a/e/x;->Lj()Z

    move-result v4

    .line 6
    invoke-interface {v0, v1, v2, v3, v4}, Le/a/a/e/v;->jm(IIIZ)V

    :cond_0
    return-void
.end method

.method public final Ij()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->T1()Z

    move-result v0

    return v0
.end method

.method public final Jj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->L1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/e/x;->p9()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Kj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->m3()Z

    move-result v0

    return v0
.end method

.method public final Lj()Z
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->q0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->o2()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->J1()Lw3/b/a/b;

    move-result-object v0

    const-string v1, "messageSettings.manualCleanupNextStepLastShownDate"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v2, v0, Lw3/b/a/e0/e;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Le/a/a/e/x;->p:Le/a/b0/q/l0;

    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->J1()Lw3/b/a/b;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v3, v0, Lw3/b/a/e0/e;->a:J

    const-wide/16 v5, 0x7

    .line 6
    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v7}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Mj()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/e/x;->Ij()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/a/e/x;->d:I

    if-gtz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Le/a/a/e/x;->Kj()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le/a/a/e/x;->f:I

    if-gtz v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/a/a/e/x;->Jj()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Le/a/a/e/x;->e:I

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/e/v;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/a/e/v;->vu(Z)V

    :cond_4
    return-void
.end method

.method public final Nj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->T1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->si(Z)V

    .line 3
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->R1()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->ea(I)V

    .line 4
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->L1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->g7(Z)V

    .line 5
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->k0()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->Hq(I)V

    .line 6
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->m3()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->la(Z)V

    .line 7
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->y()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->Ld(I)V

    :cond_0
    return-void
.end method

.method public final Oj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->T2()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->Mm(Z)V

    .line 3
    iget-object v1, p0, Le/a/a/e/x;->m:Le/a/o5/b0;

    iget-object v2, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->K0()Lw3/b/a/b;

    move-result-object v2

    const-string v3, "messageSettings.manualCleanupLastDate"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-interface {v1, v2, v3}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->V3()I

    move-result v2

    .line 7
    iget-object v3, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->O1()I

    move-result v3

    .line 8
    iget-object v4, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->y1()I

    move-result v4

    .line 9
    invoke-interface {v0, v1, v2, v3, v4}, Le/a/a/e/v;->Uu(Ljava/lang/CharSequence;III)V

    .line 10
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->K2()I

    move-result v1

    iget-object v2, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->c1()I

    move-result v2

    iget-object v3, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->E2()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Le/a/a/e/v;->oh(III)V

    :cond_0
    return-void
.end method

.method public S8(Ljava/lang/String;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "Ci0-LandingPageVisit"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "from"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, p1

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, v3, v2, v4, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 5
    iget-object v0, p0, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "inboxCleanup"

    const-string v2, "viewId"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Le/a/q2/y0/a/a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v1, p1, v3}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public T4(Lcom/truecaller/messaging/inboxcleanup/CleanupResult;)V
    .locals 4

    const-string v0, "cleanupResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    .line 3
    iget v1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    .line 4
    iget v2, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    .line 5
    iget p1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    .line 6
    invoke-virtual {p0}, Le/a/a/e/x;->Lj()Z

    move-result v3

    .line 7
    invoke-interface {v0, v1, v2, p1, v3}, Le/a/a/e/v;->jm(IIIZ)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of p1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError;

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_1

    const v0, 0x7f120c2d

    const v1, 0x7f120c48

    invoke-interface {p1, v0, v1}, Le/a/a/e/v;->Z0(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/e/v;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->E3(Z)V

    .line 5
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->n()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/v;->ac(Z)V

    .line 6
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->T2()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/v;->Vr(Z)V

    .line 7
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->q0()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/v;->vc(Z)V

    .line 8
    invoke-virtual {p0}, Le/a/a/e/x;->Oj()V

    .line 9
    invoke-virtual {p0}, Le/a/a/e/x;->Nj()V

    return-void
.end method

.method public Zf()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/a/e/x;->Nj()V

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->i:Ls1/w/f;

    new-instance v3, Le/a/a/e/w;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/e/w;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b9()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/e/v;->Ko()V

    :cond_0
    return-void
.end method

.method public c6()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->K2()I

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->c1()I

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->E2()I

    move-result v3

    .line 5
    invoke-interface {v0, v1, v2, v3}, Le/a/a/e/v;->uy(III)V

    :cond_0
    return-void
.end method

.method public e9()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/e/x;->Oj()V

    return-void
.end method

.method public fd(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/e/v;->cp(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_2

    iget v2, p0, Le/a/a/e/x;->d:I

    sub-int/2addr v2, p1

    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    invoke-interface {v0, v2}, Le/a/a/e/v;->hv(I)V

    .line 3
    :cond_2
    invoke-virtual {p0}, Le/a/a/e/x;->p9()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_4

    iget v2, p0, Le/a/a/e/x;->e:I

    sub-int/2addr v2, p2

    if-gez v2, :cond_3

    move v2, v1

    :cond_3
    invoke-interface {v0, v2}, Le/a/a/e/v;->kt(I)V

    .line 4
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_6

    iget v2, p0, Le/a/a/e/x;->f:I

    sub-int/2addr v2, p3

    if-gez v2, :cond_5

    move v2, v1

    :cond_5
    invoke-interface {v0, v2}, Le/a/a/e/v;->U6(I)V

    .line 5
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_b

    .line 6
    invoke-virtual {p0}, Le/a/a/e/x;->Ij()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Le/a/a/e/x;->d:I

    sub-int/2addr v2, p1

    if-gtz v2, :cond_9

    .line 7
    :cond_7
    invoke-virtual {p0}, Le/a/a/e/x;->Jj()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Le/a/a/e/x;->e:I

    sub-int/2addr p1, p2

    if-gtz p1, :cond_9

    .line 8
    :cond_8
    invoke-virtual {p0}, Le/a/a/e/x;->Kj()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Le/a/a/e/x;->f:I

    sub-int/2addr p1, p3

    if-lez p1, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 9
    :cond_a
    invoke-interface {v0, v1}, Le/a/a/e/v;->vu(Z)V

    .line 10
    :cond_b
    invoke-virtual {p0}, Le/a/a/e/x;->Oj()V

    return-void
.end method

.method public g3()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/e/v;->qm()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "Ci6-NextDialogOpened"

    const-string v2, "type"

    .line 3
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 5
    invoke-static {v1, v3, v2, v4, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public g7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->e3(Z)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/e/v;->ac(Z)V

    :cond_0
    return-void
.end method

.method public h3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->t(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/e/x;->Mj()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->k0()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/e/v;->L9()V

    :cond_0
    return-void
.end method

.method public jf()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/e/x$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/e/x$b;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public lj(I)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v2, p0, Le/a/a/e/x;->i:Ls1/w/f;

    new-instance v4, Le/a/a/e/x$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/a/e/x$a;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object v1, p0, Le/a/a/e/x;->r:Le/a/c0/h;

    .line 3
    iget-object v1, v1, Le/a/c0/h;->h:Le/a/c0/c;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 4
    invoke-static {v1, v2, p1, v3, p1}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 5
    iput-boolean v0, p0, Le/a/a/e/x;->g:Z

    .line 6
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1, v0}, Le/a/a/i0;->I0(Z)V

    :cond_0
    return-void
.end method

.method public nf()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/e/v;->vu(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/e/v;->U7()V

    :cond_1
    return-void
.end method

.method public o7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/e/v;->Vr(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->q0()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/e/v;->vc(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/a/e/x;->i:Ls1/w/f;

    new-instance v3, Le/a/a/e/w;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/e/w;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public p9()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->q:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public qd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->T(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/e/x;->Mj()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->R1()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/e/v;->Ko()V

    :cond_0
    return-void
.end method

.method public tb(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->R1()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/i0;->n4(I)V

    .line 2
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->k0()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/i0;->J2(I)V

    .line 3
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->y()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/i0;->B1(I)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a/e/v;->qm()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/a/i0;->A2(Z)V

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/a/e/v;->vc(Z)V

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/a/e/x;->n:Le/a/q2/a;

    const-string v1, "CiSetAutoCleanInbox"

    const-string v2, "type"

    .line 8
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "isOn"

    const-string v5, "name"

    .line 10
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getNotified"

    .line 12
    iget-object v4, p0, Le/a/a/e/x;->j:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->u0()Z

    move-result v4

    .line 13
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v2, v1, p1}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public wd()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/e/v;->Hs()V

    :cond_0
    return-void
.end method

.method public xa()V
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/a/e/x;->i:Ls1/w/f;

    new-instance v3, Le/a/a/e/x$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/e/x$a;-><init>(Le/a/a/e/x;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public yd()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/e/v;->L9()V

    :cond_0
    return-void
.end method
