.class public final Le/a/d5/h/b;
.super Le/a/d5/h/q;
.source "SourceFile"


# instance fields
.field public final j:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final k:Le/a/b0/e/l;

.field public final l:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/p5/g;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;Le/a/u3/g;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p6, Le/a/u3/g;->v2:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0xb1

    aget-object v1, v1, v2

    invoke-virtual {v0, p6, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Le/a/u3/i;

    const-string v2, "feature_default_dialer_promo_last_timestamp"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Le/a/d5/h/q;-><init>(Le/a/u3/i;Ljava/lang/String;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;)V

    iput-object p1, p0, Le/a/d5/h/b;->k:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/d5/h/b;->l:Le/a/p5/g;

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->DEFAULT_DIALER_PROMO:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/b;->j:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/b;->j:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/h/a/a;

    invoke-direct {v0}, Le/a/h/a/a;-><init>()V

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/b;->k:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d5/h/b;->l:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/d5/h/b;->l:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
