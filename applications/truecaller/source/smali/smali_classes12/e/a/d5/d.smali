.class public final Le/a/d5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/c;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/a<",
            "+",
            "Le/a/d5/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/a<",
            "+",
            "Le/a/d5/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ln3/b/a/h;

.field public final d:Lq3/a/b3/c;

.field public final e:Ls1/w/f;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d5/h/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/o5/x1;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/x1;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/d5/h/f;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/u;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/s;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/g;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/d;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/m;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/i;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/a;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/k;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/j;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/b;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/e;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/h;",
            ">;",
            "Lo3/a<",
            "Le/a/d5/h/o;",
            ">;",
            "Le/a/o5/x1;",
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

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legalRegionCDialogResolver"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsNewDialogResolver"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softwareUpdateDialogResolver"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mdauDialogResolver"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillProfileDialogResolver"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPopupDialogResolver"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingDialogResolver"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupOnboardingResolver"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinDialerShortcutDialogResolver"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingPremiumPopupDialogResolver"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDialerPromoResolver"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUIPromoResolver"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberSearchCallDialogResolver"

    move-object/from16 v12, p14

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralDialogResolver"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageChecker"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/d5/d;->e:Ls1/w/f;

    iput-object v14, v0, Le/a/d5/d;->f:Lo3/a;

    iput-object v15, v0, Le/a/d5/d;->g:Le/a/o5/x1;

    const/16 v1, 0xd

    new-array v1, v1, [Lo3/a;

    const/4 v15, 0x0

    aput-object v2, v1, v15

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v8, 0x2

    aput-object v9, v1, v8

    const/4 v8, 0x3

    aput-object v13, v1, v8

    const/4 v8, 0x4

    aput-object v11, v1, v8

    const/4 v8, 0x5

    aput-object v10, v1, v8

    const/4 v8, 0x6

    aput-object v5, v1, v8

    const/4 v5, 0x7

    aput-object v4, v1, v5

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const/16 v3, 0x9

    aput-object v6, v1, v3

    const/16 v3, 0xa

    aput-object v7, v1, v3

    const/16 v3, 0xb

    aput-object p12, v1, v3

    const/16 v3, 0xc

    aput-object v14, v1, v3

    .line 2
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/d5/d;->a:Ljava/util/List;

    .line 3
    invoke-static/range {p14 .. p14}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/d5/d;->b:Ljava/util/List;

    .line 4
    invoke-static {v15, v2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v1

    iput-object v1, v0, Le/a/d5/d;->d:Lq3/a/b3/c;

    return-void
.end method

.method public static synthetic f(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;I)V
    .locals 0

    and-int/lit8 p1, p4, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/d5/d;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget-object p3, Le/a/d5/e;->j:Le/a/d5/e;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/a/d5/d;->e(Ljava/util/List;ZLs1/z/b/p;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/startup_dialogs/StartupDialogType;Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 6

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d5/d;->a:Ljava/util/List;

    .line 2
    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    .line 3
    sget-object v1, Le/a/d5/d$b;->j:Le/a/d5/d$b;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 4
    check-cast v0, Ls1/e0/c0;

    .line 5
    iget-object v1, v0, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 6
    invoke-interface {v1}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v0, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    move-object v5, v2

    check-cast v5, Le/a/d5/b;

    invoke-interface {v5}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    check-cast v2, Le/a/d5/b;

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v2, p2}, Le/a/d5/b;->c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V

    .line 12
    invoke-interface {v2, p2}, Le/a/d5/b;->h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Le/a/d5/d;->c:Ln3/b/a/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x5

    .line 14
    invoke-static {p0, v4, v3, v4, p1}, Le/a/d5/d;->f(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 1
    invoke-static {p0, v0, v1, v0, v2}, Le/a/d5/d;->f(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;I)V

    return-void
.end method

.method public c(Ln3/b/a/h;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d5/d;->c:Ln3/b/a/h;

    .line 2
    iget-object v0, p0, Le/a/d5/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d5/h/o;

    .line 3
    iput-object p1, v0, Le/a/d5/h/o;->j:Landroid/app/Activity;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/d;->b:Ljava/util/List;

    .line 2
    sget-object v1, Le/a/d5/d$d;->j:Le/a/d5/d$d;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v0, v2, v1}, Le/a/d5/d;->e(Ljava/util/List;ZLs1/z/b/p;)V

    return-void
.end method

.method public final e(Ljava/util/List;ZLs1/z/b/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo3/a<",
            "+",
            "Le/a/d5/b;",
            ">;>;Z",
            "Ls1/z/b/p<",
            "-",
            "Le/a/d5/b;",
            "-",
            "Ln3/r/a/k;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/d5/d;->e:Ls1/w/f;

    new-instance v8, Le/a/d5/d$c;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Le/a/d5/d$c;-><init>(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public q(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d5/d;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/d5/d$a;->j:Le/a/d5/d$a;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 3
    check-cast v0, Ls1/e0/c0;

    .line 4
    iget-object v1, v0, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 5
    invoke-interface {v1}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v0, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v6, v2

    check-cast v6, Le/a/d5/b;

    invoke-interface {v6}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/startup_dialogs/StartupDialogType;->requestCode()I

    move-result v6

    if-ne v6, p1, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    check-cast v2, Le/a/d5/b;

    if-eqz v2, :cond_3

    .line 10
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->USER_PRESSED_DISMISS_BUTTON:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    invoke-interface {v2, p1}, Le/a/d5/b;->c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V

    const/4 p1, 0x5

    .line 11
    invoke-static {p0, v5, v4, v5, p1}, Le/a/d5/d;->f(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;I)V

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    return v3
.end method
