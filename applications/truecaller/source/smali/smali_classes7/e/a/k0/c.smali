.class public final Le/a/k0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/e;
.implements Le/a/k0/o/a;
.implements Lcom/truecaller/callrecording/CallRecordingManager;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/k0/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/k0/e;

.field public d:Z

.field public final e:Le/a/b0/q/v;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/k0/a/e;

.field public final i:Le/a/k0/o/a;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/m/a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/a/l;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k0/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/k0/a/e;Le/a/k0/o/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/k0/a/e;",
            "Le/a/k0/o/a;",
            "Lo3/a<",
            "Landroid/content/Context;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/j0;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/m/a;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/a/h;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/f;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/a/b;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/l/c;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/a/l;",
            ">;",
            "Lo3/a<",
            "Le/a/k0/i/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "recordingCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingFeatureHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingsMigrationHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingCallRecordingStorageHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingIntentDelegate"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingConfigHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecorderSessionManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingNotificationManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingAnalytics"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/c;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/k0/c;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    iput-object p4, p0, Le/a/k0/c;->i:Le/a/k0/o/a;

    iput-object p5, p0, Le/a/k0/c;->j:Lo3/a;

    iput-object p6, p0, Le/a/k0/c;->k:Lo3/a;

    iput-object p7, p0, Le/a/k0/c;->l:Lo3/a;

    iput-object p8, p0, Le/a/k0/c;->m:Lo3/a;

    iput-object p9, p0, Le/a/k0/c;->n:Lo3/a;

    iput-object p10, p0, Le/a/k0/c;->o:Lo3/a;

    iput-object p11, p0, Le/a/k0/c;->p:Lo3/a;

    iput-object p12, p0, Le/a/k0/c;->q:Lo3/a;

    iput-object p13, p0, Le/a/k0/c;->r:Lo3/a;

    .line 2
    sget-object p1, Le/a/k0/c$a;->b:Le/a/k0/c$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/c;->a:Ls1/g;

    .line 3
    sget-object p1, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/c;->b:Lq3/a/x2/a1;

    .line 4
    new-instance p1, Le/a/b0/q/v;

    new-instance p2, Le/a/k0/c$c;

    invoke-direct {p2, p0}, Le/a/k0/c$c;-><init>(Le/a/k0/c;)V

    invoke-direct {p1, p2}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object p1, p0, Le/a/k0/c;->e:Le/a/b0/q/v;

    return-void
.end method


# virtual methods
.method public A(Le/a/k0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/c;->c:Le/a/k0/e;

    return-void
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->B()Z

    move-result v0

    return v0
.end method

.method public C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 1

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/c;->m:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/a/h;

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v0, p1}, Le/a/k0/a/h;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f12027f

    .line 4
    invoke-virtual {p0, p1}, Le/a/k0/c;->K(I)Lq3/a/p1;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/k0/c;->m:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/a/h;

    invoke-interface {v0, p1}, Le/a/k0/a/h;->c(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f120949

    invoke-virtual {p0, p1}, Le/a/k0/c;->K(I)Lq3/a/p1;

    goto :goto_0

    :cond_1
    const p1, 0x7f12094d

    .line 6
    invoke-virtual {p0, p1}, Le/a/k0/c;->K(I)Lq3/a/p1;

    .line 7
    :goto_0
    iget-object p1, p0, Le/a/k0/c;->r:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAction;->PLAY:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, p2, v0}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    return-void
.end method

.method public D(Lcom/truecaller/data/entity/Contact;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/k0/c;->J()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Le/a/k0/c;->m:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/k0/a/h;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "URLDecoder.decode(it, \"UTF-8\")"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Le/a/k0/a/h;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Le/a/k0/c$b;

    invoke-direct {v5, p0, p1, v0, v1}, Le/a/k0/c$b;-><init>(Le/a/k0/c;Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/l/c;

    invoke-interface {p1}, Le/a/k0/l/c;->reset()V

    return-void
.end method

.method public E()Le/a/k0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->c:Le/a/k0/e;

    return-object v0
.end method

.method public F()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->o:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/a/b;

    invoke-interface {v0}, Le/a/k0/a/b;->f()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k0/c;->s()Le/a/k0/a/p;

    move-result-object v0

    sget-object v1, Le/a/k0/a/p$d;->a:Le/a/k0/a/p$d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->G0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Le/a/k0/f;->G(I)V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->H()V

    return-void
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->I()Z

    move-result v0

    return v0
.end method

.method public final J()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/c;

    invoke-interface {v0}, Le/a/k0/l/c;->getState()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/m;

    .line 2
    instance-of v1, v0, Le/a/k0/l/m$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Le/a/k0/l/m$d;

    .line 3
    iget-object v0, v0, Le/a/k0/l/m$d;->a:Le/a/k0/l/l;

    .line 4
    iget-object v2, v0, Le/a/k0/l/l;->c:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Le/a/k0/l/m$a;

    if-eqz v1, :cond_1

    check-cast v0, Le/a/k0/l/m$a;

    .line 6
    iget-object v0, v0, Le/a/k0/l/m$a;->a:Le/a/k0/l/j;

    .line 7
    iget-object v0, v0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, v0, Le/a/k0/l/l;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v2
.end method

.method public final K(I)Lq3/a/p1;
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/k0/c;->g:Ls1/w/f;

    new-instance v3, Le/a/k0/c$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/k0/c$d;-><init>(Le/a/k0/c;ILs1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/c;

    invoke-interface {v0}, Le/a/k0/l/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/c;

    invoke-interface {v0}, Le/a/k0/l/c;->b()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0, p1}, Le/a/k0/a/e;->c(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->d()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/k0/c;->c:Le/a/k0/e;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/k0/c;->d:Z

    .line 3
    invoke-virtual {p0}, Le/a/k0/c;->v()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/k0/c;->e:Le/a/b0/q/v;

    invoke-virtual {v0}, Le/a/b0/q/v;->a()V

    .line 6
    iget-object v0, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/l/c;

    invoke-interface {v0, p1, p2}, Le/a/k0/l/c;->e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/f;

    invoke-interface {p1}, Le/a/k0/f;->M0()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Le/a/k0/c;->k:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/p5/j0;

    const v1, 0x7f12095e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/f;

    invoke-interface {p1}, Le/a/k0/f;->M0()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Le/a/k0/f;->D(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->i:Le/a/k0/o/a;

    invoke-interface {v0}, Le/a/k0/o/a;->g()V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/c;->f:Ls1/w/f;

    .line 2
    iget-object v1, p0, Le/a/k0/c;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/p1;

    .line 3
    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->b:Lq3/a/x2/a1;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->L0()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->i()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public j(Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingOnBoardingLaunchContext;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launchContext"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_LAUNCH_CONTEXT"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "ARG_FORCE_DARK_THEME"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    :try_start_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 6
    :cond_1
    instance-of p3, p2, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_2

    .line 7
    check-cast p2, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "currentContext.baseContext"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context does not implement "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/Activity;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 p2, 0x14000000

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->k()Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/k0/c;->d:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/k0/c;->d:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->n()Z

    move-result v0

    return v0
.end method

.method public o()Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/k0/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->o()Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/l/c;

    invoke-interface {p1}, Le/a/k0/l/c;->getState()Lq3/a/x2/i1;

    move-result-object p1

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Le/a/k0/l/m$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/k0/l/m$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Le/a/k0/l/m$a;->a:Le/a/k0/l/j;

    .line 3
    invoke-virtual {p0}, Le/a/k0/c;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-wide v1, p1, Le/a/k0/l/j;->b:J

    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 6
    iget-object p1, p1, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Le/a/k0/l/l;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Le/a/k0/c;->l:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/m/a;

    invoke-interface {v0, p1}, Le/a/k0/m/a;->a(Ljava/lang/String;)Z

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/k0/c;->p:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/l/c;

    invoke-interface {p1}, Le/a/k0/l/c;->reset()V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->y1()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized r(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle recording - state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Le/a/k0/c;->b:Lq3/a/x2/a1;

    .line 3
    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and number is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/k0/c;->b:Lq3/a/x2/a1;

    .line 5
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/h;

    .line 6
    sget-object v1, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Le/a/k0/h$b;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0, p1, p2}, Le/a/k0/c;->e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    goto :goto_1

    .line 9
    :cond_2
    instance-of p1, v0, Le/a/k0/h$e;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Le/a/k0/c;->a()V

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Le/a/k0/h$d;->a:Le/a/k0/h$d;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s()Le/a/k0/a/p;
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    return-object v0
.end method

.method public t(Z)V
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->i:Le/a/k0/o/a;

    invoke-interface {v0, p1}, Le/a/k0/o/a;->t(Z)V

    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->u()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->v()Z

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/c;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->i:Le/a/k0/o/a;

    invoke-interface {v0}, Le/a/k0/o/a;->x()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->y()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/c;->h:Le/a/k0/a/e;

    invoke-interface {v0}, Le/a/k0/a/e;->z()Z

    move-result v0

    return v0
.end method
