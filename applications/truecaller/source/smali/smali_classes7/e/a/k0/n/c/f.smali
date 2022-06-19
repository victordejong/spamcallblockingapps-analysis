.class public final Le/a/k0/n/c/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/c/b;
.implements Le/a/k0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k0/n/c/c;",
        ">;",
        "Le/a/k0/n/c/b;",
        "Le/a/k0/e;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Le/a/k0/b;

.field public i:Z

.field public final j:Ls1/w/f;

.field public final k:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final l:Le/a/k0/a/o;

.field public final m:Le/a/k0/f;

.field public final n:Le/a/b0/e/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/o;Le/a/k0/f;Le/a/b0/e/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingResurrectionHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k0/n/c/f;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p3, p0, Le/a/k0/n/c/f;->l:Le/a/k0/a/o;

    iput-object p4, p0, Le/a/k0/n/c/f;->m:Le/a/k0/f;

    iput-object p5, p0, Le/a/k0/n/c/f;->n:Le/a/b0/e/f;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/k0/n/c/f;->e:Z

    .line 3
    iput-boolean p1, p0, Le/a/k0/n/c/f;->i:Z

    return-void
.end method


# virtual methods
.method public A5()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/k0/n/c/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/k0/n/c/f;->l:Le/a/k0/a/o;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recordingFileAbsolutePath"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "UTF-8"

    .line 4
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "URLDecoder.decode(record\u2026ileAbsolutePath, \"UTF-8\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "-"

    .line 5
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v4, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "."

    .line 7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, v4, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    iget-object v3, v1, Le/a/k0/a/o;->a:Le/a/l0/c;

    invoke-interface {v3, v2}, Le/a/l0/c;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v2

    new-instance v3, Le/a/k0/a/n;

    invoke-direct {v3, v1, v0}, Le/a/k0/a/n;-><init>(Le/a/k0/a/o;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public B1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->i:Z

    return v0
.end method

.method public final Ij()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k0/n/c/c;->L5()V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/k0/n/c/f;->m:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->r1()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/k0/n/c/c;->N5()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Le/a/k0/n/c/f;->m:Le/a/k0/f;

    invoke-interface {v0, v2}, Le/a/k0/f;->z1(I)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/k0/n/c/c;->Z8()V

    .line 7
    :cond_4
    :goto_1
    iput-boolean v1, p0, Le/a/k0/n/c/f;->e:Z

    goto :goto_2

    .line 8
    :cond_5
    iget-object v0, p0, Le/a/k0/n/c/f;->m:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->r1()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/k0/n/c/c;->Z8()V

    .line 10
    :cond_6
    iput-boolean v1, p0, Le/a/k0/n/c/f;->e:Z

    goto :goto_2

    .line 11
    :cond_7
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    instance-of v0, v0, Le/a/k0/a/p$a;

    if-eqz v0, :cond_8

    .line 14
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/k0/n/c/c;->yc()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final Jj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    .line 3
    sget-object v1, Le/a/k0/a/p$c;->a:Le/a/k0/a/p$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, p0, Le/a/k0/n/c/f;->e:Z

    .line 5
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Vi()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v2, p0, Le/a/k0/n/c/f;->e:Z

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Ij()V

    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1, v0}, Lcom/truecaller/callrecording/CallRecordingManager;->l(Z)V

    return-void
.end method

.method public Lb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/k0/n/c/f;->d:Z

    return-void
.end method

.method public Q1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onFeatureEnabled should only be called when source is bubble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1, v0}, Lcom/truecaller/callrecording/CallRecordingManager;->A(Le/a/k0/e;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/k0/n/c/f;->e:Z

    .line 5
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Ij()V

    .line 6
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Vi()V

    :goto_0
    return-void
.end method

.method public Vi()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k0/n/c/f;->m:Le/a/k0/f;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/k0/f;->z1(I)V

    .line 3
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    .line 4
    sget-object v1, Le/a/k0/a/p$c;->a:Le/a/k0/a/p$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/a/k0/n/c/f;->i:Z

    .line 6
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    iget-object v1, p0, Le/a/k0/n/c/f;->g:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/k0/n/c/f;->d:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->INCALLUI:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->BUBBLE:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/truecaller/callrecording/CallRecordingManager;->r(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto :goto_3

    .line 7
    :cond_2
    sget-object v1, Le/a/k0/a/p$b;->a:Le/a/k0/a/p$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Le/a/k0/a/p$d;->a:Le/a/k0/a/p$d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object v1, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    :goto_1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->d:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1, v0}, Lcom/truecaller/callrecording/CallRecordingManager;->l(Z)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0, p0}, Lcom/truecaller/callrecording/CallRecordingManager;->A(Le/a/k0/e;)V

    .line 13
    :goto_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/k0/n/c/c;->Bf()V

    :cond_6
    :goto_3
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/k0/n/c/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/truecaller/callrecording/CallRecordingManager;->A(Le/a/k0/e;)V

    .line 5
    new-instance v4, Le/a/k0/n/c/d;

    invoke-direct {v4, p0, v0}, Le/a/k0/n/c/d;-><init>(Le/a/k0/n/c/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    iget-boolean p1, p0, Le/a/k0/n/c/f;->d:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Jj()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Ij()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->A(Le/a/k0/e;)V

    .line 3
    iput-object v1, p0, Le/a/k0/n/c/f;->f:Ljava/lang/String;

    return-void
.end method

.method public mc(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/c/c;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/k0/n/c/f;->n:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/truecaller/callrecording/R$drawable;->ic_tc_floating_logo_uk:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/truecaller/callrecording/R$drawable;->ic_tc_floating_logo:I

    .line 5
    :goto_0
    invoke-interface {p1, v0}, Le/a/k0/n/c/c;->Rd(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/c/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/k0/n/c/c;->M5()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/k0/n/c/f;->Jj()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/c/c;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onResume should only be called when source is InCallUi"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setErrorListener(Le/a/k0/b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/k0/n/c/f;->h:Le/a/k0/b;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/n/c/f;->g:Ljava/lang/String;

    return-void
.end method
