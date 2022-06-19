.class public final Le/a/n/t;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/n/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/n/s;",
        ">;",
        "Le/a/n/r;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Ls1/a/l;


# instance fields
.field public final b:Lq3/a/y;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Le/a/n/m;

.field public final f:Le/a/p5/u;

.field public final g:Le/a/b0/o/a;

.field public final h:Le/a/h5/w;

.field public final i:Le/a/q2/a;

.field public final j:Le/a/h5/y;

.field public final k:Le/a/n/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/u;

    const-class v2, Le/a/n/t;

    const-string v3, "hasSMSPermissions"

    const-string v4, "<v#0>"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ls1/z/c/u;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Ls1/z/c/d0;->c(Ls1/z/c/t;)Ls1/a/j;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Le/a/n/t;->l:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/h5/w;Le/a/q2/a;Le/a/h5/y;Le/a/n/h;)V
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/n/t;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/n/t;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/n/t;->e:Le/a/n/m;

    iput-object p4, p0, Le/a/n/t;->f:Le/a/p5/u;

    iput-object p5, p0, Le/a/n/t;->g:Le/a/b0/o/a;

    iput-object p6, p0, Le/a/n/t;->h:Le/a/h5/w;

    iput-object p7, p0, Le/a/n/t;->i:Le/a/q2/a;

    iput-object p8, p0, Le/a/n/t;->j:Le/a/h5/y;

    iput-object p9, p0, Le/a/n/t;->k:Le/a/n/h;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/n/t;->b:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public final Hj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/n/t;->i:Le/a/q2/a;

    .line 2
    new-instance v8, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    .line 3
    sget-object v2, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->BackupSmsPermission:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const/4 v4, 0x0

    const-string v5, "wizard"

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object v1, v8

    move-object v3, p1

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 5
    invoke-interface {v0, v8}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/n/t;->i:Le/a/q2/a;

    .line 2
    new-instance v8, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    .line 3
    sget-object v9, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->Backup:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const/4 v4, 0x0

    const-string v5, "wizard"

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object v1, v8

    move-object v2, v9

    move-object v3, p1

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;-><init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    .line 5
    invoke-interface {v0, v8}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 6
    iget-object v0, p0, Le/a/n/t;->i:Le/a/q2/a;

    .line 7
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v2, "Backup_Restore_Dialog"

    .line 8
    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v2, 0x3

    new-array v2, v2, [Ls1/k;

    .line 9
    new-instance v3, Ls1/k;

    const-string v4, "Context"

    const-string v5, "wizard"

    invoke-direct {v3, v4, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v9}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ls1/k;

    const-string v6, "Type"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v4, Ls1/k;

    const-string v5, "Action"

    invoke-direct {v4, v5, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 14
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 16
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v1, "GenericAnalyticsEvent.ne\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final Jj()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/n/t;->k:Le/a/n/h;

    invoke-interface {v0}, Le/a/n/h;->a()V

    .line 2
    iget-object v6, p0, Le/a/n/t;->i:Le/a/q2/a;

    const-string v0, "Context"

    const-string v7, "wizard"

    const-string v1, "Setting"

    const-string v2, "Backup"

    .line 3
    invoke-static {v0, v7, v1, v2}, Le/d/c/a/a;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v0, "State"

    const-string v1, "Enabled"

    .line 4
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SettingChanged"

    const/4 v0, 0x0

    const-string v5, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    move-object v2, v0

    move-object v4, v0

    .line 5
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 6
    iget-object v1, p0, Le/a/n/t;->i:Le/a/q2/a;

    const/4 v2, 0x1

    invoke-static {v2, v7}, Le/m/d/y/n;->B(ZLjava/lang/String;)Le/a/l5/a/z1;

    move-result-object v2

    const-string v3, "SettingChange.createTrac\u2026AnalyticsContexts.WIZARD)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 7
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v5, p0, Le/a/n/t;->d:Ls1/w/f;

    new-instance v7, Le/a/n/t$c;

    invoke-direct {v7, p0, v0}, Le/a/n/t$c;-><init>(Le/a/n/t;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Wc()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/t;->Hj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/n/s;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, p1}, Le/a/n/t;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public b2()Lq3/a/p1;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/t;->d:Ls1/w/f;

    new-instance v3, Le/a/n/t$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/n/t$b;-><init>(Le/a/n/t;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n/s;->p()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/n/t;->b:Lq3/a/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    iput-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/t;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const/16 v0, 0x10e1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/n/t;->e:Le/a/n/m;

    invoke-interface {p1}, Le/a/n/m;->a()V

    return-void
.end method

.method public wi(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
    .locals 7
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
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v0, p0, Le/a/n/t;->c:Ls1/w/f;

    iget-object v2, p0, Le/a/n/t;->b:Lq3/a/y;

    invoke-interface {v0, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    new-instance v4, Le/a/n/t$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/n/t$a;-><init>(Le/a/n/t;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/n/s;->dismiss()V

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/t;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method

.method public za()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/n/t;->Jj()V

    .line 2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p0, v0}, Le/a/n/t;->Hj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void
.end method
