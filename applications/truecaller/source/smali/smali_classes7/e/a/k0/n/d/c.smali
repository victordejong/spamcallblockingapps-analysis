.class public final Le/a/k0/n/d/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k0/n/d/b;",
        ">;",
        "Le/a/k0/n/d/a;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

.field public e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

.field public f:Z

.field public g:Z

.field public final h:Ls1/w/f;

.field public final i:Le/a/k0/f;

.field public final j:Le/a/p5/a0;

.field public final k:Le/a/h5/w;

.field public final l:Le/a/p5/g;

.field public final m:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final n:Le/a/k0/i/a;

.field public final o:Le/a/k0/n/b/j;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k0/f;Le/a/p5/a0;Le/a/h5/w;Le/a/p5/g;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/i/a;Le/a/k0/n/b/j;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingFloatingButtonManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k0/n/d/c;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    iput-object p3, p0, Le/a/k0/n/d/c;->j:Le/a/p5/a0;

    iput-object p4, p0, Le/a/k0/n/d/c;->k:Le/a/h5/w;

    iput-object p5, p0, Le/a/k0/n/d/c;->l:Le/a/p5/g;

    iput-object p6, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p7, p0, Le/a/k0/n/d/c;->n:Le/a/k0/i/a;

    iput-object p8, p0, Le/a/k0/n/d/c;->o:Le/a/k0/n/b/j;

    .line 2
    sget-object p1, Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;->UNKNOWN:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    iput-object p1, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/k0/n/d/c;->g:Z

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/k0/n/d/c;->n:Le/a/k0/i/a;

    iget-object v2, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    invoke-interface {v1, v2, v0}, Le/a/k0/i/a;->b(Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    sget-object v1, Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;->FLOATING:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->E()Le/a/k0/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k0/e;->Q1()V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->A(Le/a/k0/e;)V

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/k0/n/d/b;->finish()V

    :cond_2
    return-void
.end method

.method public final Jj()V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->ENABLED:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 2
    iget-object v0, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/k0/f;->d6(Z)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k0/n/d/b;->cd()V

    :cond_0
    return-void
.end method

.method public final Kj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k0/n/d/c;->n:Le/a/k0/i/a;

    iget-object v1, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    invoke-interface {v0, v1}, Le/a/k0/i/a;->d(Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;)V

    .line 3
    :goto_0
    iget-object v0, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/k0/f;->d6(Z)V

    .line 4
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Jj()V

    goto :goto_2

    .line 8
    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->ACCESSIBILITY:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/k0/n/d/b;->ce()V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Jj()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/k0/n/d/c;->j:Le/a/p5/a0;

    iget-object v2, p0, Le/a/k0/n/d/c;->k:Le/a/h5/w;

    invoke-interface {v2}, Le/a/h5/w;->l()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    .line 12
    iget-object v2, p0, Le/a/k0/n/d/c;->j:Le/a/p5/a0;

    iget-object v3, p0, Le/a/k0/n/d/c;->k:Le/a/h5/w;

    invoke-interface {v3}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v2

    .line 13
    iget-object v3, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v3}, Le/a/k0/a/e;->d()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 14
    :goto_1
    sget-object v3, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->PERMISSIONS:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v3, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 15
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/k0/n/d/b;

    if-eqz v3, :cond_5

    invoke-interface {v3, v0, v2, v1}, Le/a/k0/n/d/b;->xi(ZZZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public gd(Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    .line 2
    sget-object v0, Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;->LIST:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le/a/k0/n/d/c;->l:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/k0/n/d/c;->l:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/d/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/k0/n/d/b;->rd()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/k0/n/d/c;->xg()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/d/c;->f:Z

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Le/a/k0/n/d/c;->j:Le/a/p5/a0;

    iget-object v1, p0, Le/a/k0/n/d/c;->k:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->l()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/k0/n/d/c;->j:Le/a/p5/a0;

    iget-object v2, p0, Le/a/k0/n/d/c;->k:Le/a/h5/w;

    invoke-interface {v2}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Jj()V

    goto :goto_2

    .line 7
    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->ACCESSIBILITY:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/k0/n/d/b;->ce()V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Jj()V

    goto :goto_2

    .line 10
    :cond_3
    iget-boolean v0, p0, Le/a/k0/n/d/c;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_4

    sget-object v1, Le/a/k0/a/g;->a:[Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/k0/n/d/b;->Pe([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iput-boolean v2, p0, Le/a/k0/n/d/c;->g:Z

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/k0/n/d/b;->m0()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Ij()V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/k0/n/d/b;->I0()V

    :cond_6
    :goto_2
    return-void
.end method

.method public p6(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call recording on-boarding action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Kj()V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Ij()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Ij()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Jj()V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/d/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/k0/n/d/b;->td()V

    goto :goto_0

    .line 8
    :pswitch_5
    iput-boolean v0, p0, Le/a/k0/n/d/c;->f:Z

    .line 9
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/d/b;

    if-eqz p1, :cond_1

    sget-object v0, Le/a/k0/a/g;->a:[Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/k0/n/d/b;->ic([Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Le/a/k0/n/d/c;->o:Le/a/k0/n/b/j;

    invoke-interface {p1}, Le/a/k0/n/b/j;->c()V

    .line 11
    iget-object p1, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    .line 12
    invoke-interface {p1, v1}, Le/a/k0/f;->q0(Z)V

    .line 13
    invoke-interface {p1, v1}, Le/a/k0/f;->d6(Z)V

    .line 14
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Ij()V

    goto :goto_0

    .line 15
    :pswitch_7
    iget-object p1, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    invoke-interface {p1, v0}, Le/a/k0/f;->q0(Z)V

    .line 16
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Kj()V

    goto :goto_0

    .line 17
    :pswitch_8
    iget-object p1, p0, Le/a/k0/n/d/c;->o:Le/a/k0/n/b/j;

    invoke-interface {p1}, Le/a/k0/n/b/j;->c()V

    .line 18
    iget-object p1, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    invoke-interface {p1, v1}, Le/a/k0/f;->d6(Z)V

    .line 19
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Ij()V

    goto :goto_0

    .line 20
    :pswitch_9
    iget-object p1, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    invoke-interface {p1}, Le/a/k0/f;->j0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Kj()V

    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->TERMS:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object p1, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 23
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/d/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/k0/n/d/b;->Qg()V

    goto :goto_0

    .line 24
    :pswitch_a
    invoke-virtual {p0}, Le/a/k0/n/d/c;->xg()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final xg()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/d/c;->i:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k0/n/d/c;->e:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    sget-object v1, Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;->INCALLUI:Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    sget-object v1, Le/a/k0/a/p$c;->a:Le/a/k0/a/p$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k0/n/d/c;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    sget-object v1, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->INCALLUI_CONFIRMATION:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/k0/n/d/b;->ob()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/k0/n/d/c;->Kj()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;->INTRO:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    iput-object v0, p0, Le/a/k0/n/d/c;->d:Lcom/truecaller/callrecording/analytics/RecordingOnBoardingStep;

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/d/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/k0/n/d/b;->xg()V

    :cond_2
    :goto_0
    return-void
.end method
