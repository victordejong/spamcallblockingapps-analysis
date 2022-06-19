.class public final Le/a/e/b/o/o;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/o/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/o/n;",
        ">;",
        "Le/a/e/b/o/m;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/e/b/o/l;

.field public final g:Le/a/e/b/g;

.field public final h:Le/a/b0/o/a;

.field public final i:Le/a/e/b/k/s;

.field public final j:Le/a/r5/i0;

.field public final k:Le/a/l/p2/v0;

.field public final l:Le/a/l/a2;

.field public final m:Le/a/u3/g;

.field public final n:Le/a/b0/e/f;

.field public final o:Le/a/b0/n/g;

.field public final p:Le/a/p5/c0;

.field public final q:Le/a/b0/e/l;

.field public final r:Le/a/m4/c/i/a/b;

.field public final s:Le/a/m4/a;

.field public final t:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/f4/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Le/a/c5/a/a;

.field public final v:Le/a/c5/b/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/e/b/o/l;Le/a/e/b/g;Le/a/b0/o/a;Le/a/e/b/k/s;Le/a/r5/i0;Le/a/l/p2/v0;Le/a/l/a2;Le/a/u3/g;Le/a/b0/e/f;Le/a/b0/n/g;Le/a/p5/c0;Le/a/b0/e/l;Le/a/m4/c/i/a/b;Le/a/m4/a;Le/a/r2/f;Le/a/c5/a/a;Le/a/c5/b/a;)V
    .locals 16
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
            "Le/a/e/b/o/l;",
            "Le/a/e/b/g;",
            "Le/a/b0/o/a;",
            "Le/a/e/b/k/s;",
            "Le/a/r5/i0;",
            "Le/a/l/p2/v0;",
            "Le/a/l/a2;",
            "Le/a/u3/g;",
            "Le/a/b0/e/f;",
            "Le/a/b0/n/g;",
            "Le/a/p5/c0;",
            "Le/a/b0/e/l;",
            "Le/a/m4/c/i/a/b;",
            "Le/a/m4/a;",
            "Le/a/r2/f<",
            "Le/a/f4/a/b;",
            ">;",
            "Le/a/c5/a/a;",
            "Le/a/c5/b/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "asyncContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySettingsHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsUIPref"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettingsHelper"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRepository"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editProfileNavigationHelper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNetworkManager"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facebookConnectivityHelper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleConnectivityHelper"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/e/b/o/o;->d:Ls1/w/f;

    iput-object v2, v0, Le/a/e/b/o/o;->e:Ls1/w/f;

    iput-object v3, v0, Le/a/e/b/o/o;->f:Le/a/e/b/o/l;

    iput-object v4, v0, Le/a/e/b/o/o;->g:Le/a/e/b/g;

    iput-object v5, v0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    iput-object v6, v0, Le/a/e/b/o/o;->i:Le/a/e/b/k/s;

    iput-object v7, v0, Le/a/e/b/o/o;->j:Le/a/r5/i0;

    iput-object v8, v0, Le/a/e/b/o/o;->k:Le/a/l/p2/v0;

    iput-object v9, v0, Le/a/e/b/o/o;->l:Le/a/l/a2;

    iput-object v10, v0, Le/a/e/b/o/o;->m:Le/a/u3/g;

    iput-object v11, v0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    iput-object v12, v0, Le/a/e/b/o/o;->o:Le/a/b0/n/g;

    iput-object v13, v0, Le/a/e/b/o/o;->p:Le/a/p5/c0;

    iput-object v14, v0, Le/a/e/b/o/o;->q:Le/a/b0/e/l;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/e/b/o/o;->r:Le/a/m4/c/i/a/b;

    iput-object v15, v0, Le/a/e/b/o/o;->s:Le/a/m4/a;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/e/b/o/o;->t:Le/a/r2/f;

    iput-object v2, v0, Le/a/e/b/o/o;->u:Le/a/c5/a/a;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/e/b/o/o;->v:Le/a/c5/b/a;

    return-void
.end method


# virtual methods
.method public Ai(ZLandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "availability_disabled"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Le/a/e/b/o/o;->i:Le/a/e/b/k/s;

    invoke-virtual {p1, p2}, Le/a/e/b/k/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method public Ci()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/o/n;->ou()V

    :cond_0
    return-void
.end method

.method public Ei(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/o/n;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/e/b/o/n;->gt()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Le/a/e/b/o/o;->Ij(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Fd(IILandroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    const-string p3, "context"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x1b59

    if-ne p1, p3, :cond_0

    const/16 p1, 0x2711

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/o/n;

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/e/b/o/o;->s:Le/a/m4/a;

    invoke-virtual {p2, p4}, Le/a/m4/a;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/e/b/o/n;->Sb(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public Ff()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->u:Le/a/c5/a/a;

    invoke-interface {v0}, Le/a/c5/a/a;->O1()V

    .line 2
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v1, "profileFacebook"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/e/b/o/o;->o:Le/a/b0/n/g;

    .line 4
    sget-object v3, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-interface/range {v2 .. v8}, Le/a/b0/n/g;->c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V

    .line 6
    invoke-virtual {p0}, Le/a/e/b/o/o;->Jj()V

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    const v1, 0x7f12069f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/e/b/o/n;->Fc(II)V

    :cond_0
    return-void
.end method

.method public final Ij(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->E(Z)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    new-instance v5, Le/a/e/b/o/o$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/e/b/o/o$a;-><init>(Le/a/e/b/o/o;ZLs1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Jj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->u:Le/a/c5/a/a;

    invoke-interface {v0}, Le/a/c5/a/a;->G1()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/e/b/o/o;->v:Le/a/c5/b/a;

    invoke-interface {v1}, Le/a/c5/b/a;->G1()Z

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/o/n;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Le/a/e/b/o/n;->Xk(Z)V

    .line 4
    :cond_0
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/o/n;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Le/a/e/b/o/n;->qi(Z)V

    .line 5
    :cond_1
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/o/n;

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Le/a/e/b/o/n;->sA(Z)V

    :cond_4
    return-void
.end method

.method public final Kj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/e/b/o/o;->m:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->M()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

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

.method public L8(Ljava/lang/String;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v1, "profileAcceptAuto"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v5, Le/a/e/b/o/o$d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/e/b/o/o$d;-><init>(Le/a/e/b/o/o;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Qe(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/b/o/o;->Ij(Z)V

    return-void
.end method

.method public Uc()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v1

    invoke-static {v1}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Ug()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/e/b/o/o;->Kj()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120687

    goto :goto_0

    :cond_0
    const v0, 0x7f120688

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/o/n;

    if-eqz v1, :cond_1

    const v2, 0x7f120689

    .line 3
    invoke-virtual {p0}, Le/a/e/b/o/o;->Kj()Z

    move-result v3

    .line 4
    invoke-interface {v1, v2, v0, v3}, Le/a/e/b/o/n;->ub(IIZ)V

    :cond_1
    return-void
.end method

.method public Xe()V
    .locals 6

    .line 1
    new-instance v3, Le/a/e/b/o/o$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/e/b/o/o$b;-><init>(Le/a/e/b/o/o;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public ef()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/o/n;->bd()V

    :cond_0
    return-void
.end method

.method public fe(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v1, "supernovaOptIn"

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/e/b/o/o;->f:Le/a/e/b/o/l;

    .line 3
    iget-object v0, v0, Le/a/e/b/o/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 6
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "opt_in"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v2}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v2, "Data.Builder().putBoolea\u2026RA_OPT_IN, optIn).build()"

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 14
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 15
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 16
    iput-object v3, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 17
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, p1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 18
    iget-object p1, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 19
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string v2, "OneTimeWorkRequest.Build\u2026d())\n            .build()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    const-string v2, "javaClass"

    .line 20
    invoke-virtual {v0, v2, v1, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public gi(ZLandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->k:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/e/b/o/o;->l:Le/a/l/a2;

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->WHO_VIEWED_ME_INCOGNITO:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v1, "premiumIncognitoMode"

    invoke-interface {p1, p2, v0, v1}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Le/a/e/b/o/o;->j:Le/a/r5/i0;

    invoke-interface {p2, p1}, Le/a/r5/i0;->f(Z)V

    :goto_0
    return-void
.end method

.method public mi()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/o/n;->Sx()V

    :cond_0
    return-void
.end method

.method public n3()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->v:Le/a/c5/b/a;

    invoke-interface {v0}, Le/a/c5/b/a;->O1()V

    .line 2
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v1, "profileGoogleIdToken"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/e/b/o/o;->o:Le/a/b0/n/g;

    .line 4
    sget-object v3, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-interface/range {v2 .. v8}, Le/a/b0/n/g;->c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V

    .line 6
    invoke-virtual {p0}, Le/a/e/b/o/o;->Jj()V

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    const v1, 0x7f12069f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/e/b/o/n;->Fc(II)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->g:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->Fz(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_1

    iget-object v3, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v4, "featureAvailability"

    invoke-interface {v3, v4, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v0, v3}, Le/a/e/b/o/n;->Fz(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_2

    iget-object v3, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v4, "availability_disabled"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-interface {v0, v3}, Le/a/e/b/o/n;->uh(Z)V

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/e/b/o/o;->j:Le/a/r5/i0;

    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->dj(Z)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Le/a/e/b/o/o;->k:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Le/a/e/b/o/o;->j:Le/a/r5/i0;

    invoke-interface {v0, v1}, Le/a/r5/i0;->f(Z)V

    .line 9
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Le/a/e/b/o/n;->dj(Z)V

    .line 10
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_6

    iget-object v3, p0, Le/a/e/b/o/o;->j:Le/a/r5/i0;

    invoke-interface {v3}, Le/a/r5/i0;->h()Z

    move-result v3

    invoke-interface {v0, v3}, Le/a/e/b/o/n;->ft(Z)V

    .line 11
    :cond_6
    :goto_1
    iget-object v0, p0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->e7(Z)V

    goto :goto_2

    .line 13
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Le/a/e/b/o/n;->e7(Z)V

    .line 14
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_9

    iget-object v3, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v4, "supernovaOptIn"

    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v0, v3}, Le/a/e/b/o/n;->Al(Z)V

    :cond_9
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Le/a/e/c2/i0;

    .line 15
    new-instance v3, Le/a/e/c2/i0;

    iget-object v4, p0, Le/a/e/b/o/o;->p:Le/a/p5/c0;

    new-array v5, v1, [Ljava/lang/Object;

    const v6, 0x7f120680

    invoke-interface {v4, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "2"

    invoke-direct {v3, v1, v4, v5, v6}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    .line 16
    new-instance v3, Le/a/e/c2/i0;

    iget-object v4, p0, Le/a/e/b/o/o;->p:Le/a/p5/c0;

    new-array v6, v1, [Ljava/lang/Object;

    const v7, 0x7f120682

    invoke-interface {v4, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0"

    invoke-direct {v3, v1, v4, v5, v6}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 17
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/o/n;

    if-eqz v3, :cond_a

    iget-object v4, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v5, "profileAcceptAuto"

    invoke-interface {v4, v5}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Le/a/e/b/o/n;->Xw(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    :cond_a
    iget-object v0, p0, Le/a/e/b/o/o;->g:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const-string v3, "profileBusiness"

    invoke-interface {v0, v3, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    .line 20
    :cond_b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_c

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->al(Z)V

    .line 21
    :cond_c
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_d

    iget-object v1, p0, Le/a/e/b/o/o;->g:Le/a/e/b/g;

    invoke-interface {v1}, Le/a/e/b/g;->Y0()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->id(Z)V

    .line 22
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Le/a/e/b/o/o;->Kj()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->fr(Z)V

    .line 23
    :cond_e
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_f

    iget-object v1, p0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->A6(Z)V

    .line 24
    :cond_f
    invoke-virtual {p0}, Le/a/e/b/o/o;->Jj()V

    .line 25
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_10

    iget-object v1, p0, Le/a/e/b/o/o;->g:Le/a/e/b/g;

    invoke-interface {v1}, Le/a/e/b/g;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->vq(Z)V

    :cond_10
    return-void
.end method

.method public s7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/o/n;->At()V

    :cond_0
    return-void
.end method

.method public vf()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->n:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120685

    goto :goto_0

    :cond_0
    const v0, 0x7f120688

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/o/n;

    if-eqz v1, :cond_1

    const v2, 0x7f12068a

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Le/a/e/b/o/n;->ub(IIZ)V

    :cond_1
    return-void
.end method

.method public wf()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_0

    const-string v1, "https://support.truecaller.com/support/solutions/articles/81000394345-ex-graph"

    invoke-interface {v0, v1}, Le/a/e/b/o/n;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public xj(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/o/o;->m:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/e/b/o/o$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/e/b/o/o$c;-><init>(Le/a/e/b/o/o;Landroid/content/Context;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/b/o/o;->h:Le/a/b0/o/a;

    const/4 v1, 0x0

    const-string v2, "profileBusiness"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/o/n;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/e/b/o/n;->kv()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/e/b/o/o;->s:Le/a/m4/a;

    .line 6
    sget-object v1, Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;->OTHERS:Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;

    invoke-virtual {v0, p1, v1}, Le/a/m4/a;->b(Landroid/content/Context;Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/o/n;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/e/b/o/n;->Sb(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
