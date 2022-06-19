.class public final Le/a/n/z1;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/n/x1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/n/y1;",
        ">;",
        "Le/a/n/x1;"
    }
.end annotation


# instance fields
.field public final b:Lq3/a/y;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public final f:Landroid/content/Context;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/n/m;

.field public final j:Le/a/n/m;

.field public final k:Le/a/p5/u;

.field public final l:Le/a/b0/o/a;

.field public final m:Le/a/q2/a;

.field public final n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Le/a/n/h;

.field public final p:Le/a/h5/y;

.field public final q:Le/a/h5/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/q2/a;Le/a/r2/f;Le/a/n/h;Le/a/h5/y;Le/a/h5/w;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Le/a/n/m;
        .annotation runtime Ljavax/inject/Named;
            value = "V1"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/n/m;",
            "Le/a/n/m;",
            "Le/a/p5/u;",
            "Le/a/b0/o/a;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/n/h;",
            "Le/a/h5/y;",
            "Le/a/h5/w;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "presenterContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManagerCompat"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsView"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/n/z1;->f:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/z1;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/n/z1;->h:Ls1/w/f;

    iput-object p4, p0, Le/a/n/z1;->i:Le/a/n/m;

    iput-object p5, p0, Le/a/n/z1;->j:Le/a/n/m;

    iput-object p6, p0, Le/a/n/z1;->k:Le/a/p5/u;

    iput-object p7, p0, Le/a/n/z1;->l:Le/a/b0/o/a;

    iput-object p8, p0, Le/a/n/z1;->m:Le/a/q2/a;

    iput-object p9, p0, Le/a/n/z1;->n:Le/a/r2/f;

    iput-object p10, p0, Le/a/n/z1;->o:Le/a/n/h;

    iput-object p11, p0, Le/a/n/z1;->p:Le/a/h5/y;

    iput-object p12, p0, Le/a/n/z1;->q:Le/a/h5/w;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/n/z1;->b:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public Gf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/n/z1;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/n/z1;->o:Le/a/n/h;

    invoke-interface {v0}, Le/a/n/h;->a()V

    .line 3
    invoke-virtual {p0}, Le/a/n/z1;->Kj()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/y1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/n/y1;->dismiss()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Le/a/n/z1;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/z1;->Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/z1;->Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    :goto_0
    return-void
.end method

.method public final Hj(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/z1;->g:Ls1/w/f;

    iget-object v2, p0, Le/a/n/z1;->b:Lq3/a/y;

    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    new-instance v3, Le/a/n/z1$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/n/z1$a;-><init>(Le/a/n/z1;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public final Ij(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/n/z1$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/n/z1$b;

    iget v2, v1, Le/a/n/z1$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/n/z1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/n/z1$b;

    invoke-direct {v1, p0, p2}, Le/a/n/z1$b;-><init>(Le/a/n/z1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/n/z1$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/n/z1$b;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/n/z1$b;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Le/a/n/z1$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/n/z1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/n/z1$b;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Le/a/n/z1$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/n/z1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, p0

    .line 4
    :goto_1
    iget-object v3, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/n/y1;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Le/a/n/y1;->O0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5
    iput-object p2, v1, Le/a/n/z1$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/n/z1$b;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/n/z1$b;->e:I

    invoke-virtual {p2, p1, v3, v1}, Le/a/n/z1;->Jj(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    return-object v0

    .line 6
    :cond_5
    iget-object p2, v3, Le/a/n/z1;->i:Le/a/n/m;

    iput-object v3, v1, Le/a/n/z1$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/n/z1$b;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/n/z1$b;->e:I

    const/4 v6, 0x0

    invoke-static {p2, v6, v1, v5, v6}, Le/m/d/y/n;->S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_6

    return-object v2

    :cond_6
    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-eqz p2, :cond_7

    move p2, v5

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_8

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    move-object p2, v3

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public final Jj(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/n/z1$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/n/z1$c;

    iget v1, v0, Le/a/n/z1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/z1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/z1$c;

    invoke-direct {v0, p0, p3}, Le/a/n/z1$c;-><init>(Le/a/n/z1;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/n/z1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/z1$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/z1$c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Le/a/n/z1$c;->h:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Le/a/n/z1$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/z1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, p0

    .line 4
    :cond_3
    iget-object p3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/n/y1;

    if-eqz p3, :cond_6

    invoke-interface {p3, p2}, Le/a/n/y1;->I1(Ljava/lang/String;)Z

    move-result p3

    if-ne p3, v3, :cond_6

    .line 5
    iget-object p3, v2, Le/a/n/z1;->i:Le/a/n/m;

    iput-object v2, v0, Le/a/n/z1$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/z1$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/n/z1$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/n/z1$c;->e:I

    invoke-interface {p3, p1, v0}, Le/a/n/m;->c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    iget-object p1, v2, Le/a/n/z1;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 7
    sget-object p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object p3, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;->ACCOUNT_CHANGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;

    invoke-virtual {p2, p1, p3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->a(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object p2, v2, Le/a/n/z1;->m:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 9
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final Kj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/n/z1;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/n/z1;->m:Le/a/q2/a;

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Context"

    .line 4
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "Setting"

    const-string v3, "Backup"

    .line 6
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v0, "State"

    const-string v3, "Enabled"

    .line 8
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Le/a/q2/g$b$a;

    const-string v3, "SettingChanged"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v2, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    const/4 v0, 0x1

    const-string v1, "wizard"

    .line 12
    invoke-static {v0, v1}, Le/m/d/y/n;->B(ZLjava/lang/String;)Le/a/l5/a/z1;

    move-result-object v0

    .line 13
    iget-object v1, p0, Le/a/n/z1;->m:Le/a/q2/a;

    const-string v2, "event"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_2
    return-void
.end method

.method public final Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V
    .locals 11

    .line 1
    iget-object v7, p0, Le/a/n/z1;->c:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2
    iget-object v8, p0, Le/a/n/z1;->m:Le/a/q2/a;

    .line 3
    new-instance v9, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    .line 4
    sget-object v10, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->Restore:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x14

    move-object v0, v9

    move-object v1, v10

    move-object v2, p1

    move-object v4, v7

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 6
    invoke-interface {v8, v9}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 7
    iget-object v0, p0, Le/a/n/z1;->m:Le/a/q2/a;

    .line 8
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v2, "Backup_Restore_Dialog"

    .line 9
    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v2, 0x3

    new-array v2, v2, [Ls1/k;

    const/4 v3, 0x0

    .line 10
    new-instance v4, Ls1/k;

    const-string v5, "Context"

    invoke-direct {v4, v5, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v10}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 12
    new-instance v5, Ls1/k;

    const-string v6, "Type"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v4, Ls1/k;

    const-string v5, "Action"

    invoke-direct {v4, v5, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 15
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 17
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v1, "GenericAnalyticsEvent.ne\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_0
    return-void
.end method

.method public final Mj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/y1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n/y1;->p()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/n/z1;->l:Le/a/b0/o/a;

    const-string v1, "restoreDataBackupResult"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/y1;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/n/y1;->uc()V

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/y1;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/n/y1;->dismiss()V

    :cond_2
    return-void
.end method

.method public Q6(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/z1;->Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 2
    invoke-virtual {p0, p1}, Le/a/n/z1;->Hj(Landroidx/fragment/app/Fragment;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public Ue(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/y1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/n/y1;->Xv()Ljava/text/DateFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/n/y1;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/n/y1;->mc()Ljava/text/DateFormat;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_2
    iget-object p1, p0, Le/a/n/z1;->f:Landroid/content/Context;

    const p2, 0x7f120ed0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "presenterContext.getStri\u2026ng_timestamp, date, time)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/n/y1;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Le/a/n/y1;->Op(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Vg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/n/z1;->c:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, p1}, Le/a/n/z1;->Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/n/y1;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/n/z1;->l:Le/a/b0/o/a;

    const-string v0, "restoreOnboardingShown"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Companion:Lcom/truecaller/backup/BackupResult$a;

    iget-object v0, p0, Le/a/n/z1;->l:Le/a/b0/o/a;

    const-string v2, "restoreDataBackupResult"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/truecaller/backup/BackupResult;->values()[Lcom/truecaller/backup/BackupResult;

    move-result-object v2

    const/16 v3, 0x15

    move v4, p1

    :goto_0
    if-ge v4, v3, :cond_2

    .line 8
    aget-object v5, v2, v4

    .line 9
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 10
    sget-object v0, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne v5, v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, p1

    :goto_3
    invoke-virtual {p0, v1}, Le/a/n/z1;->Mj(Z)V

    :cond_4
    return-void
.end method

.method public ad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/n/z1;->e:Z

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Le/a/n/y1;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/n/y1;->p()V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/n/z1;->b:Lq3/a/y;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public ma(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/n/z1;->Hj(Landroidx/fragment/app/Fragment;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x10e1

    if-eq p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/n/z1;->i:Le/a/n/m;

    invoke-interface {p1}, Le/a/n/m;->a()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/n/z1;->d:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/y1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n/y1;->T5()V

    :cond_0
    return-void
.end method

.method public ud(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/n/z1;->Mj(Z)V

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/n/z1;->d:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/y1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n/y1;->T5()V

    :cond_0
    return-void
.end method
