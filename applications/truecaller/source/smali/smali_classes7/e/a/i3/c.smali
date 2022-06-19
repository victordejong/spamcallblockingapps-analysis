.class public final Le/a/i3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i3/b;


# instance fields
.field public final a:I

.field public final b:Landroid/content/Context;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/b0/e/r/a;

.field public final e:Le/a/z4/a;

.field public final f:Le/a/z4/d;

.field public final g:Le/a/w/b/b;

.field public final h:Le/a/q2/b1/a;

.field public final i:Le/a/h0/m;

.field public final j:Le/a/u3/g;

.field public final k:Le/a/o5/j;

.field public final l:Le/a/a/i0;

.field public final m:Le/a/c/c0/o;

.field public final n:Le/a/b0/b/f/a;

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a4/e<",
            "Lcom/truecaller/TrueApp;",
            ">;>;"
        }
    .end annotation
.end field

.field public final p:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/x3/c;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Le/a/o5/b0;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/z4/a;Le/a/z4/d;Le/a/w/b/b;Le/a/q2/b1/a;Le/a/h0/m;Le/a/u3/g;Le/a/o5/j;Le/a/a/i0;Le/a/c/c0/o;Le/a/b0/b/f/a;Lo3/a;Lo3/a;Le/a/o5/b0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/z4/a;",
            "Le/a/z4/d;",
            "Le/a/w/b/b;",
            "Le/a/q2/b1/a;",
            "Le/a/h0/m;",
            "Le/a/u3/g;",
            "Le/a/o5/j;",
            "Le/a/a/i0;",
            "Le/a/c/c0/o;",
            "Le/a/b0/b/f/a;",
            "Lo3/a<",
            "Le/a/a4/e<",
            "Lcom/truecaller/TrueApp;",
            ">;>;",
            "Lo3/a<",
            "Le/a/x3/c;",
            ">;",
            "Le/a/o5/b0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralSettings"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appListener"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installationDetailsProvider"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInitManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move/from16 v15, p1

    iput v15, v0, Le/a/i3/c;->a:I

    iput-object v1, v0, Le/a/i3/c;->b:Landroid/content/Context;

    iput-object v2, v0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iput-object v3, v0, Le/a/i3/c;->d:Le/a/b0/e/r/a;

    iput-object v4, v0, Le/a/i3/c;->e:Le/a/z4/a;

    iput-object v5, v0, Le/a/i3/c;->f:Le/a/z4/d;

    iput-object v6, v0, Le/a/i3/c;->g:Le/a/w/b/b;

    iput-object v7, v0, Le/a/i3/c;->h:Le/a/q2/b1/a;

    iput-object v8, v0, Le/a/i3/c;->i:Le/a/h0/m;

    iput-object v9, v0, Le/a/i3/c;->j:Le/a/u3/g;

    iput-object v10, v0, Le/a/i3/c;->k:Le/a/o5/j;

    iput-object v11, v0, Le/a/i3/c;->l:Le/a/a/i0;

    iput-object v12, v0, Le/a/i3/c;->m:Le/a/c/c0/o;

    iput-object v13, v0, Le/a/i3/c;->n:Le/a/b0/b/f/a;

    iput-object v14, v0, Le/a/i3/c;->o:Lo3/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/i3/c;->p:Lo3/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/i3/c;->q:Le/a/o5/b0;

    return-void
.end method


# virtual methods
.method public a()Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    const-string v1, "lastUpdateInstallationVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Le/a/i3/c;->a:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Le/a/i3/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(false)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/i3/c;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(updateConfigInternal())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/i3/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/i3/c;->k()Z

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(true)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(false)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    move-object v0, p1

    :catch_1
    :goto_1
    return-object v0
.end method

.method public final d(Le/a/b0/b/h/a$c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i3/c;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/x3/c;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Le/a/b0/b/h/a$c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x71534647

    if-eq v3, v4, :cond_4

    const v4, -0x2abfc9fe

    if-eq v3, v4, :cond_3

    const v4, 0x29f03b60

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "OPTIONAL"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/truecaller/forcedupdate/UpdateType;->OPTIONAL:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_2

    :cond_3
    const-string v3, "RETIRED_VERSION"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_2

    :cond_4
    const-string v3, "MANDATORY"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/truecaller/forcedupdate/UpdateType;->REQUIRED:Lcom/truecaller/forcedupdate/UpdateType;

    goto :goto_2

    .line 6
    :cond_5
    :goto_1
    sget-object v2, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    :goto_2
    if-eqz p1, :cond_6

    .line 7
    iget-object v3, p1, Le/a/b0/b/h/a$c;->b:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    if-eqz p1, :cond_7

    iget p1, p1, Le/a/b0/b/h/a$c;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7
    invoke-interface {v0, v2, v3, v1}, Le/a/x3/c;->e(Lcom/truecaller/forcedupdate/UpdateType;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object p1, p0, Le/a/i3/c;->k:Le/a/o5/j;

    invoke-virtual {p1}, Le/a/o5/j;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Le/a/x3/c;->b()Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/forcedupdate/UpdateType;->getSkippable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 9
    iget-object p1, p0, Le/a/i3/c;->b:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/truecaller/forcedupdate/ui/ForcedUpdateActivity;->pa(Landroid/content/Context;Z)Z

    :cond_8
    return-void
.end method

.method public final e(Le/a/b0/b/h/a$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureAftercall"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    .line 3
    iget-object v1, p1, Le/a/b0/b/h/a$b;->s:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureAftercallSaveContact"

    .line 4
    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->u:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureContactDetail"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->t:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureReferralDeeplink"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->v:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureReferralNavigationDrawer"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->x:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureGoPro"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    iget-object v1, p1, Le/a/b0/b/h/a$b;->A:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "featureReferralAfterCallPromo"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    .line 11
    iget-object p1, p1, Le/a/b0/b/h/a$b;->w:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "App Chooser"

    :goto_0
    const-string v1, "featureReferralShareApps"

    .line 12
    invoke-interface {v0, v1, p1}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    const/4 v0, 0x1

    const-string v1, "featureLaunchReferralFromDeeplink"

    invoke-interface {p1, v1, v0}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 14
    iget-object p1, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    const-string v1, "featureSearchScreenPromo"

    invoke-interface {p1, v1, v0}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    const-string v1, "featureReferralBottomBar"

    invoke-interface {p1, v1, v0}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 16
    iget-object p1, p0, Le/a/i3/c;->g:Le/a/w/b/b;

    const-string v1, "featureReferralPromoPopup"

    invoke-interface {p1, v1, v0}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Le/a/b0/b/h/a$b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 2
    iget-object v1, p1, Le/a/b0/b/h/a$b;->W:Ljava/lang/String;

    const-wide/16 v2, 0x5

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v1, "featureWhoViewedMeNewViewIntervalInDays"

    .line 3
    invoke-interface {v0, v1, v4, v5}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 5
    iget-object v1, p1, Le/a/b0/b/h/a$b;->Y:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    const-string v1, "featureWhoViewedMeShowNotificationAfterXLookups"

    .line 6
    invoke-interface {v0, v1, v4, v5}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 8
    iget-object v1, p1, Le/a/b0/b/h/a$b;->X:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    const-string v1, "featureWhoViewedMeShowNotificationAfterXDays"

    .line 9
    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 11
    iget-object v1, p1, Le/a/b0/b/h/a$b;->Z:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "whoViewedMePBContactEnabled"

    .line 12
    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 14
    iget-object v1, p1, Le/a/b0/b/h/a$b;->a0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "whoViewedMeACSEnabled"

    .line 15
    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Le/a/i3/c;->j:Le/a/u3/g;

    iget-object p1, p1, Le/a/b0/b/h/a$b;->V:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "featureWhoViewedMe"

    invoke-virtual {v0, v1, p1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p3, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Le/a/n/g0;->J(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    .line 1
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final i(Ljava/lang/String;I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public final j(Ljava/lang/String;J)J
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final k()Z
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    const-class v3, Le/a/b0/b/h/b;

    new-instance v4, Le/a/b0/b/a/b;

    invoke-direct {v4}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v5, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v4, v5}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v4, v3}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 4
    new-instance v5, Le/a/b0/b/g/b;

    invoke-direct {v5}, Le/a/b0/b/g/b;-><init>()V

    .line 5
    sget-object v6, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    invoke-static {v5, v6, v1, v0, v1}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 6
    new-instance v6, Le/a/b0/b/g/a$g;

    invoke-direct {v6, v2}, Le/a/b0/b/g/a$g;-><init>(Z)V

    iput-object v6, v5, Le/a/b0/b/g/b;->e:Le/a/b0/b/g/a$g;

    .line 7
    invoke-static {v5}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v5

    .line 8
    invoke-virtual {v4, v5}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 9
    invoke-virtual {v4, v3}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/b/h/b;

    .line 10
    invoke-interface {v3}, Le/a/b0/b/h/b;->getConfig()Lx3/b;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v3

    const-string v4, "ConfigRestAdapter.getConfig().execute()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lx3/a0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget-object v3, v3, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 14
    check-cast v3, Le/a/b0/b/h/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 15
    invoke-static {v3}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_16

    .line 16
    iget-object v5, v3, Le/a/b0/b/h/a;->a:Le/a/b0/b/h/a$b;

    if-eqz v5, :cond_15

    const-string v6, "features"

    .line 17
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v6, v5, Le/a/b0/b/h/a$b;->e:Ljava/lang/String;

    const-string v7, "featureOutgoingSearch"

    const-string v8, "0"

    invoke-virtual {p0, v7, v6, v8}, Le/a/i3/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v6, v5, Le/a/b0/b/h/a$b;->f:Ljava/lang/String;

    const-string v7, "featureStatsSearch"

    const-string v8, "1"

    invoke-virtual {p0, v7, v6, v8}, Le/a/i3/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v6, v5, Le/a/b0/b/h/a$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "featureEmailSource"

    invoke-static {v6, v2}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 21
    invoke-static {v6, v4}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 22
    :cond_1
    iget-object v6, v5, Le/a/b0/b/h/a$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v6}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 23
    new-instance v6, Le/a/j4/b/a/j;

    iget-object v7, p0, Le/a/i3/c;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Le/a/j4/b/a/j;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v6, v4}, Le/a/j4/b/a/a;->c(Z)V

    :cond_2
    const-wide/16 v6, 0x0

    .line 25
    :try_start_1
    iget-object v8, v5, Le/a/b0/b/h/a$b;->j:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, v5, Le/a/b0/b/h/a$b;->j:Ljava/lang/String;

    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v9, "features.featureTagUpload!!"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    move-wide v8, v6

    :goto_2
    const-string v10, "tagsKeywordsFeatureCurrentVersion"

    .line 26
    invoke-static {v10, v8, v9}, Le/a/n/g0;->y0(Ljava/lang/String;J)V

    cmp-long v8, v8, v6

    if-lez v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const-string v9, "featureAutoTagging"

    .line 27
    invoke-static {v9, v8}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 28
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->k:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureAvailability"

    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    iget-object v8, v5, Le/a/b0/b/h/a$b;->l:Ljava/lang/String;

    invoke-virtual {p0, v8}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "featureLoggingEnabled"

    .line 30
    invoke-static {v9, v8}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 31
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->n:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureCacheAdAfterCall"

    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->N:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureAdCtpRotation"

    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-object v8, p0, Le/a/i3/c;->e:Le/a/z4/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->c0:Ljava/lang/String;

    invoke-virtual {p0, v9, v6, v7}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "adsFeatureHouseAdsTimeout"

    invoke-interface {v8, v11, v9, v10}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 34
    iget-object v8, p0, Le/a/i3/c;->e:Le/a/z4/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->d0:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "adsFeatureUnifiedAdsBlock"

    invoke-interface {v8, v10, v9}, Le/a/z4/a;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    iget-object v8, p0, Le/a/i3/c;->e:Le/a/z4/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->e0:Ljava/lang/String;

    invoke-virtual {p0, v9, v6, v7}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "adFeatureRetentionTime"

    invoke-interface {v8, v11, v9, v10}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 36
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 37
    iget-object v9, v5, Le/a/b0/b/h/a$b;->I:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureOTPNotificationEnabled"

    .line 38
    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->E:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureUgcDisabled"

    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 41
    iget-object v9, v5, Le/a/b0/b/h/a$b;->C:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "featureUgcContactsWithoutIdentity"

    .line 42
    invoke-interface {v8, v10, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    iget-object v8, v5, Le/a/b0/b/h/a$b;->D3:Ljava/lang/String;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-virtual {p0, v8, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v8

    .line 44
    iget-object v12, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    const-string v13, "key_feature_fetch_top_spammers"

    invoke-interface {v12, v13, v8, v9}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 45
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->q:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "featureFlash"

    invoke-interface {v8, v12, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->M:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "featureCleverTap"

    invoke-interface {v8, v12, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->f0:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "featureSmartNotifications"

    invoke-interface {v8, v12, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->h0:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "featureShareImageInFlash"

    invoke-interface {v8, v12, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget-object v8, p0, Le/a/i3/c;->d:Le/a/b0/e/r/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->O:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v4

    const-string v12, "featureRegion1"

    invoke-interface {v8, v12, v9}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-object v8, p0, Le/a/i3/c;->d:Le/a/b0/e/r/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v9, "key_region_1_timestamp"

    invoke-interface {v8, v9, v12, v13}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    .line 51
    iget-object v8, v5, Le/a/b0/b/h/a$b;->o:Ljava/lang/String;

    invoke-virtual {p0, v8}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "featureDisableOutgoingOutside"

    .line 52
    invoke-static {v9, v8}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 53
    iget-object v8, v5, Le/a/b0/b/h/a$b;->p:Ljava/lang/String;

    invoke-virtual {p0, v8}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "featureHideDialpad"

    invoke-static {v9, v8}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 54
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->D:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "featureNumberScanner"

    invoke-interface {v8, v12, v9}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    iget-object v8, v5, Le/a/b0/b/h/a$b;->y:Ljava/lang/String;

    invoke-virtual {p0, v8, v2}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "featurePromoIncomingMsgCount"

    .line 56
    invoke-static {v9, v8}, Le/a/n/g0;->x0(Ljava/lang/String;I)V

    .line 57
    iget-object v8, v5, Le/a/b0/b/h/a$b;->m:Ljava/lang/String;

    const-string v9, "featureOperatorCustomization"

    .line 58
    invoke-static {v9, v8}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 60
    iget-object v9, v5, Le/a/b0/b/h/a$b;->R:Ljava/lang/String;

    .line 61
    sget-wide v12, Le/a/l4/r;->a:J

    .line 62
    invoke-virtual {p0, v9, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v9, "presence_interval"

    .line 63
    invoke-interface {v8, v9, v12, v13}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 64
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 65
    iget-object v9, v5, Le/a/b0/b/h/a$b;->S:Ljava/lang/String;

    sget v12, Le/a/l4/r;->e:I

    const-wide/16 v12, 0x1f4

    invoke-virtual {p0, v9, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v9, "presence_initial_delay"

    .line 66
    invoke-interface {v8, v9, v12, v13}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 67
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 68
    iget-object v9, v5, Le/a/b0/b/h/a$b;->T:Ljava/lang/String;

    .line 69
    sget-wide v12, Le/a/l4/r;->c:J

    .line 70
    invoke-virtual {p0, v9, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v9, "presence_stop_time"

    .line 71
    invoke-interface {v8, v9, v12, v13}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 72
    iget-object v8, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 73
    iget-object v9, v5, Le/a/b0/b/h/a$b;->U:Ljava/lang/String;

    .line 74
    sget-wide v12, Le/a/l4/r;->d:J

    .line 75
    invoke-virtual {p0, v9, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v9, "presence_recheck_time"

    .line 76
    invoke-interface {v8, v9, v12, v13}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 77
    iget-object v8, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 78
    iget-object v9, v5, Le/a/b0/b/h/a$b;->F:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "feature_global_unimportant_promo_period_days"

    .line 79
    invoke-interface {v8, v12, v9}, Le/a/z4/d;->R(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    iget-object v8, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 81
    iget-object v9, v5, Le/a/b0/b/h/a$b;->G:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "feature_unimportant_promo_period_days"

    .line 82
    invoke-interface {v8, v12, v9}, Le/a/z4/d;->R(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    iget-object v8, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 84
    iget-object v9, v5, Le/a/b0/b/h/a$b;->H:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "feature_unimportant_promo_dismissed_delay_days"

    .line 85
    invoke-interface {v8, v12, v9}, Le/a/z4/d;->R(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    iget-object v8, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 87
    iget-object v9, v5, Le/a/b0/b/h/a$b;->H2:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "featureNameFeedbackCoolDownPeriodSeconds"

    .line 88
    invoke-interface {v8, v12, v9}, Le/a/z4/d;->R(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    iget-object v8, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 90
    iget-object v9, v5, Le/a/b0/b/h/a$b;->I2:Ljava/lang/String;

    invoke-virtual {p0, v9}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "permissionNotificationCooldownSeconds"

    .line 91
    invoke-interface {v8, v12, v9}, Le/a/z4/d;->R(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    iget-object v8, p0, Le/a/i3/c;->h:Le/a/q2/b1/a;

    .line 93
    iget-object v9, v5, Le/a/b0/b/h/a$b;->k0:Ljava/lang/String;

    const/16 v12, 0x64

    invoke-virtual {p0, v9, v12}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v9

    const-string v13, "uploadEventsMaxBatchSize"

    .line 94
    invoke-interface {v8, v13, v9}, Le/a/q2/b1/a;->putInt(Ljava/lang/String;I)V

    .line 95
    iget-object v8, p0, Le/a/i3/c;->h:Le/a/q2/b1/a;

    .line 96
    iget-object v9, v5, Le/a/b0/b/h/a$b;->l0:Ljava/lang/String;

    invoke-virtual {p0, v9, v12}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v9

    const-string v12, "uploadEventsMinBatchSize"

    .line 97
    invoke-interface {v8, v12, v9}, Le/a/q2/b1/a;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v8, p0, Le/a/i3/c;->h:Le/a/q2/b1/a;

    .line 99
    iget-object v9, v5, Le/a/b0/b/h/a$b;->m0:Ljava/lang/String;

    const-wide/16 v12, 0x2710

    invoke-virtual {p0, v9, v12, v13}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v9, "uploadEventsRetryJitter"

    .line 100
    invoke-interface {v8, v9, v12, v13}, Le/a/q2/b1/a;->putLong(Ljava/lang/String;J)V

    .line 101
    iget-object v8, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v9, v5, Le/a/b0/b/h/a$b;->g0:Ljava/lang/String;

    invoke-virtual {p0, v9, v6, v7}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v8, v6, v7}, Le/a/a/i0;->e0(J)V

    .line 102
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->i0:Ljava/lang/String;

    const-wide/32 v8, 0x6400000

    invoke-virtual {p0, v7, v8, v9}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Le/a/a/i0;->u(J)V

    .line 103
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->j0:Ljava/lang/String;

    invoke-virtual {p0, v7}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->X0(Z)V

    .line 104
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->t0:Ljava/lang/String;

    invoke-interface {v6, v7}, Le/a/a/i0;->S3(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->o0:Ljava/lang/String;

    const/16 v8, 0x1e

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->n2(I)V

    .line 106
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->K0:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->S2(I)V

    .line 107
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->V0:Ljava/lang/String;

    const/16 v8, 0x19

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->X2(I)V

    .line 108
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->W0:Ljava/lang/String;

    const/16 v8, 0x14

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->f3(I)V

    .line 109
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->Y0:Ljava/lang/String;

    const/16 v8, 0x3b

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->X3(I)V

    .line 110
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->Z0:Ljava/lang/String;

    const/16 v8, 0x32

    invoke-virtual {p0, v7, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->A0(I)V

    .line 111
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->a1:Ljava/lang/String;

    const/16 v9, 0x12c

    invoke-virtual {p0, v7, v9}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->Q3(I)V

    .line 112
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->d2:Ljava/lang/String;

    const v9, 0x4b000

    invoke-virtual {p0, v7, v9}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->q1(I)V

    .line 113
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->e2:Ljava/lang/String;

    const/16 v9, 0x1e0

    invoke-virtual {p0, v7, v9}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->o(I)V

    .line 114
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->f2:Ljava/lang/String;

    const/16 v12, 0x280

    invoke-virtual {p0, v7, v12}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->t1(I)V

    .line 115
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->r2:Ljava/lang/String;

    invoke-virtual {p0, v7, v10, v11}, Le/a/i3/c;->j(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-interface {v6, v10, v11}, Le/a/a/i0;->t3(J)V

    .line 116
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->d3:Ljava/lang/String;

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const-string v7, "application/vnd.ms-powerpoint|application/vnd.openxmlformats-officedocument.presentationml.presentation|application/vnd.ms-excel|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet|application/msword|application/vnd.openxmlformats-officedocument.wordprocessingml.document|application/pdf|text/plain"

    :goto_4
    invoke-interface {v6, v7}, Le/a/a/i0;->v0(Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Le/a/i3/c;->m:Le/a/c/c0/o;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->e3:Ljava/lang/String;

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const-string v7, ""

    :goto_5
    invoke-interface {v6, v7}, Le/a/c/c0/o;->H(Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->z3:Ljava/lang/String;

    const/16 v10, 0x1c

    invoke-virtual {p0, v7, v10}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v7}, Le/a/a/i0;->E(I)V

    .line 119
    iget-object v6, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v7, v5, Le/a/b0/b/h/a$b;->A3:Ljava/lang/String;

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    const-string v7, "Apr 1, 2021"

    :goto_6
    const-string v10, "features.featureDefaultS\u2026SMS_APP_PROMO_DATE_STRING"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v10, p0, Le/a/i3/c;->q:Le/a/o5/b0;

    const-string v11, "MMM dd, yyyy"

    invoke-interface {v10, v7, v11}, Le/a/o5/b0;->p(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 121
    invoke-interface {v6, v10, v11}, Le/a/a/i0;->C0(J)V

    .line 122
    iget-object v6, v5, Le/a/b0/b/h/a$b;->b2:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 123
    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_7

    :cond_8
    move-object v6, v1

    :goto_7
    if-eqz v6, :cond_9

    .line 124
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 125
    iget-object v7, p0, Le/a/i3/c;->l:Le/a/a/i0;

    invoke-interface {v7, v6}, Le/a/a/i0;->R3(I)V

    .line 126
    :cond_9
    iget-object v6, v5, Le/a/b0/b/h/a$b;->Z3:Ljava/lang/String;

    if-eqz v6, :cond_a

    const-string v7, "\\|"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    invoke-static {v6, v7, v2, v2, v10}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v6

    goto :goto_8

    :cond_a
    move-object v6, v1

    :goto_8
    const/4 v7, 0x3

    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_b

    move v10, v4

    goto :goto_9

    :cond_b
    move v10, v2

    :goto_9
    if-eqz v10, :cond_c

    goto :goto_a

    :cond_c
    move-object v6, v1

    .line 127
    :goto_a
    iget-object v10, p0, Le/a/i3/c;->l:Le/a/a/i0;

    if-eqz v6, :cond_d

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_d

    invoke-static {v11}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_d
    invoke-interface {v10, v9}, Le/a/a/i0;->D1(I)V

    .line 128
    iget-object v9, p0, Le/a/i3/c;->l:Le/a/a/i0;

    if-eqz v6, :cond_e

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_e

    invoke-static {v10}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_b

    :cond_e
    const/16 v10, 0x140

    :goto_b
    invoke-interface {v9, v10}, Le/a/a/i0;->I3(I)V

    .line 129
    iget-object v9, p0, Le/a/i3/c;->l:Le/a/a/i0;

    if-eqz v6, :cond_f

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-static {v0}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c

    :cond_f
    const/16 v0, 0x11

    :goto_c
    invoke-interface {v9, v0}, Le/a/a/i0;->B(I)V

    .line 130
    iget-object v0, p0, Le/a/i3/c;->l:Le/a/a/i0;

    iget-object v6, v5, Le/a/b0/b/h/a$b;->k4:Ljava/lang/String;

    if-eqz v6, :cond_10

    goto :goto_d

    :cond_10
    const-string v6, "https://chat.truecaller.com/group/"

    :goto_d
    invoke-interface {v0, v6}, Le/a/a/i0;->r3(Ljava/lang/String;)V

    .line 131
    iget-object v0, v5, Le/a/b0/b/h/a$b;->u0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 132
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    const-string v6, "searchHitTtl"

    invoke-interface {v0, v6, v9, v10}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 133
    :cond_11
    iget-object v0, v5, Le/a/b0/b/h/a$b;->v0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/i3/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 134
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    const-string v6, "searchMissTtl"

    invoke-interface {v0, v6, v9, v10}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 135
    :cond_12
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 136
    iget-object v6, v5, Le/a/b0/b/h/a$b;->x0:Ljava/lang/String;

    const/16 v9, 0xa0

    invoke-virtual {p0, v6, v9}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "contactFeedbackCommentBoxMaxLength"

    .line 137
    invoke-interface {v0, v9, v6}, Le/a/b0/o/a;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 139
    iget-object v6, v5, Le/a/b0/b/h/a$b;->w0:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "contactFeedbackCommentBoxMinLength"

    .line 140
    invoke-interface {v0, v7, v6}, Le/a/b0/o/a;->putInt(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    .line 142
    iget-object v6, v5, Le/a/b0/b/h/a$b;->y0:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "contactFeedbackCommentsPageLimit"

    .line 143
    invoke-interface {v0, v7, v6}, Le/a/b0/o/a;->putInt(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 145
    iget-object v6, v5, Le/a/b0/b/h/a$b;->J0:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "feature_voip_promo_after_call_period_days"

    .line 146
    invoke-interface {v0, v7, v6}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 148
    iget-object v6, v5, Le/a/b0/b/h/a$b;->X0:Ljava/lang/String;

    const-string v7, "httpAnalyitcsHosts"

    .line 149
    invoke-interface {v0, v7, v6}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Le/a/i3/c;->f:Le/a/z4/d;

    .line 151
    iget-object v6, v5, Le/a/b0/b/h/a$b;->z2:Ljava/lang/String;

    const/16 v7, 0x3c

    invoke-virtual {p0, v6, v7}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "feature_name_feedback_interval_seconds"

    .line 152
    invoke-interface {v0, v7, v6}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Le/a/i3/c;->i:Le/a/h0/m;

    iget-object v6, v5, Le/a/b0/b/h/a$b;->b1:Ljava/lang/String;

    if-eqz v6, :cond_13

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_e

    :cond_13
    move-object v6, v1

    :goto_e
    invoke-interface {v0, v6}, Le/a/h0/m;->A(Ljava/lang/Integer;)V

    .line 154
    iget-object v0, p0, Le/a/i3/c;->i:Le/a/h0/m;

    iget-object v6, v5, Le/a/b0/b/h/a$b;->c1:Ljava/lang/String;

    if-eqz v6, :cond_14

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :cond_14
    invoke-interface {v0, v1}, Le/a/h0/m;->e(Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p0, Le/a/i3/c;->f:Le/a/z4/d;

    iget-object v1, v5, Le/a/b0/b/h/a$b;->A2:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Le/a/i3/c;->i(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "premiumIncognitoOnProfileViewBreakpoint"

    invoke-interface {v0, v6, v1}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Le/a/i3/c;->j:Le/a/u3/g;

    .line 157
    iget-object v1, v5, Le/a/b0/b/h/a$b;->z:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSwish"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 158
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCallRecordingsScopedStorageMigration"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 159
    iget-object v1, v5, Le/a/b0/b/h/a$b;->b0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSmsCategorizer"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 160
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureWhatsAppCalls"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, v5, Le/a/b0/b/h/a$b;->n0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEnableGoldCallerIdForContacts"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, v5, Le/a/b0/b/h/a$b;->p0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBusinessProfiles"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 163
    iget-object v1, v5, Le/a/b0/b/h/a$b;->q0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCreateBusinessProfiles"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 164
    iget-object v1, v5, Le/a/b0/b/h/a$b;->r0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNormalizeShortCodes"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 165
    iget-object v1, v5, Le/a/b0/b/h/a$b;->s0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSdkScanner"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 166
    iget-object v1, v5, Le/a/b0/b/h/a$b;->z0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockHiddenNumbersAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 167
    iget-object v1, v5, Le/a/b0/b/h/a$b;->A0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockTopSpammersAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 168
    iget-object v1, v5, Le/a/b0/b/h/a$b;->B0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockNonPhonebookAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 169
    iget-object v1, v5, Le/a/b0/b/h/a$b;->C0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockForeignNumbersAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 170
    iget-object v1, v5, Le/a/b0/b/h/a$b;->D0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockNeighbourSpoofingAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 171
    iget-object v1, v5, Le/a/b0/b/h/a$b;->E0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockRegisteredTelemarketersAsPremium"

    .line 172
    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, v5, Le/a/b0/b/h/a$b;->F0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureConvertBusinessProfileToPrivate"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 174
    iget-object v1, v5, Le/a/b0/b/h/a$b;->G0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVoIP"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 175
    iget-object v1, v5, Le/a/b0/b/h/a$b;->I0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVoIPGroup"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 176
    iget-object v1, v5, Le/a/b0/b/h/a$b;->H0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVoipLauncherFab"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 177
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVisiblePushCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 178
    iget-object v1, v5, Le/a/b0/b/h/a$b;->M0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePushCallerIdV2"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 179
    iget-object v1, v5, Le/a/b0/b/h/a$b;->N0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactFieldsPremiumForUgc"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 180
    iget-object v1, v5, Le/a/b0/b/h/a$b;->O0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactFieldsPremiumForProfile"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 181
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactEmailAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 182
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Q0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactAddressAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 183
    iget-object v1, v5, Le/a/b0/b/h/a$b;->R0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactJobAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 184
    iget-object v1, v5, Le/a/b0/b/h/a$b;->S0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactWebsiteAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 185
    iget-object v1, v5, Le/a/b0/b/h/a$b;->T0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactSocialAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 186
    iget-object v1, v5, Le/a/b0/b/h/a$b;->U0:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContactAboutAsPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 187
    iget-object v1, v5, Le/a/b0/b/h/a$b;->d1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInCallUI"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 188
    iget-object v1, v5, Le/a/b0/b/h/a$b;->f1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAppsInstalledHeartbeat"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 189
    iget-object v1, v5, Le/a/b0/b/h/a$b;->g1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePlacesSDK"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 190
    iget-object v1, v5, Le/a/b0/b/h/a$b;->h1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePlacesAutocomplete"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 191
    iget-object v1, v5, Le/a/b0/b/h/a$b;->i1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePlacesGeocoding"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 192
    iget-object v1, v5, Le/a/b0/b/h/a$b;->B1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDeviceAttestation"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 193
    iget-object v1, v5, Le/a/b0/b/h/a$b;->C1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePlayIntegrity"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 194
    iget-object v1, v5, Le/a/b0/b/h/a$b;->D1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureTrackCallerIdStepsPerformance"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 195
    iget-object v1, v5, Le/a/b0/b/h/a$b;->E1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDisablePBPremiumStatusJob"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 196
    iget-object v1, v5, Le/a/b0/b/h/a$b;->F1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureFetchPremiumStatusForSearchResults"

    .line 197
    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 198
    iget-object v1, v5, Le/a/b0/b/h/a$b;->G1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSmartCards"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 199
    iget-object v1, v5, Le/a/b0/b/h/a$b;->H1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureRawNormalization"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 200
    iget-object v1, v5, Le/a/b0/b/h/a$b;->I1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBrazilianNormalization"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 201
    iget-object v1, v5, Le/a/b0/b/h/a$b;->J1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureIndianNormalization"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 202
    iget-object v1, v5, Le/a/b0/b/h/a$b;->K1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNationalNormalization"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 203
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInitiateCallHelperRegionNormalization"

    .line 204
    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 205
    iget-object v1, v5, Le/a/b0/b/h/a$b;->M1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsUserFeedback"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 206
    iget-object v1, v5, Le/a/b0/b/h/a$b;->N1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsUserFeedbackButton"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 207
    iget-object v1, v5, Le/a/b0/b/h/a$b;->O1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsShowMoreBtn"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 208
    iget-object v1, v5, Le/a/b0/b/h/a$b;->j1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsTravel"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 209
    iget-object v1, v5, Le/a/b0/b/h/a$b;->k1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsHideTrxAction"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 210
    iget-object v1, v5, Le/a/b0/b/h/a$b;->l1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsOtpSmartCard"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 211
    iget-object v1, v5, Le/a/b0/b/h/a$b;->m1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsFinancePage"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 212
    iget-object v1, v5, Le/a/b0/b/h/a$b;->n1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureOtpConversationSmartAction"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 213
    iget-object v1, v5, Le/a/b0/b/h/a$b;->o1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsCovidSmartSms"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 214
    iget-object v1, v5, Le/a/b0/b/h/a$b;->p1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsBrandMonitoring"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 215
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsEmergencyContact"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Q1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSemiCard"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 217
    iget-object v1, v5, Le/a/b0/b/h/a$b;->R1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsFeatureRegistry"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 218
    iget-object v1, v5, Le/a/b0/b/h/a$b;->S1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsCategorizerSeedService"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 219
    iget-object v1, v5, Le/a/b0/b/h/a$b;->U1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsights"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 220
    iget-object v1, v5, Le/a/b0/b/h/a$b;->V1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsAnalytics"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 221
    iget-object v1, v5, Le/a/b0/b/h/a$b;->q1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsUpdates"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 222
    iget-object v1, v5, Le/a/b0/b/h/a$b;->r1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsUpdatesImportantTab"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 223
    iget-object v1, v5, Le/a/b0/b/h/a$b;->s1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsShareSmartCard"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 224
    iget-object v1, v5, Le/a/b0/b/h/a$b;->t1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSmartCardWithSnippet"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 225
    iget-object v1, v5, Le/a/b0/b/h/a$b;->u1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsUpdatesClassifier"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 226
    iget-object v1, v5, Le/a/b0/b/h/a$b;->v1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsRemindersInnerPage"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 227
    iget-object v1, v5, Le/a/b0/b/h/a$b;->w1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSmartBusinessIM"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 228
    iget-object v1, v5, Le/a/b0/b/h/a$b;->x1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsTenDigitSendersOTP"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 229
    iget-object v1, v5, Le/a/b0/b/h/a$b;->y1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsRerun"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 230
    iget-object v1, v5, Le/a/b0/b/h/a$b;->z1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsReconciliation"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 231
    iget-object v1, v5, Le/a/b0/b/h/a$b;->A1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsCategorizerDownloadOnInit"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 232
    iget-object v1, v5, Le/a/b0/b/h/a$b;->T1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureFBLogBackgroundWork"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, v5, Le/a/b0/b/h/a$b;->X1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsCustomSmartNotifications"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 234
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Y1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSmartSnippets"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 235
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Z1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsWomenHelpline"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 236
    iget-object v1, v5, Le/a/b0/b/h/a$b;->a2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsPayTransitionCompleted"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 237
    iget-object v1, v5, Le/a/b0/b/h/a$b;->c2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSdkBottomSheetDialog"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 238
    iget-object v1, v5, Le/a/b0/b/h/a$b;->g2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureYearInReview_v2021"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 239
    iget-object v1, v5, Le/a/b0/b/h/a$b;->W1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePromotionalMessageCategory"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 240
    iget-object v1, v5, Le/a/b0/b/h/a$b;->h2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureManageDataRegion2"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 241
    iget-object v1, v5, Le/a/b0/b/h/a$b;->i2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBusinessReminders"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 242
    iget-object v1, v5, Le/a/b0/b/h/a$b;->j2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureMessageTranslationForSwedish"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 243
    iget-object v1, v5, Le/a/b0/b/h/a$b;->m2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCrossDomainPresence"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 244
    iget-object v1, v5, Le/a/b0/b/h/a$b;->n2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePresenceWithoutJobScheduler"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 245
    iget-object v1, v5, Le/a/b0/b/h/a$b;->o2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureImportantTabOnboarding"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 246
    iget-object v1, v5, Le/a/b0/b/h/a$b;->p2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBusinessProfileV2"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 247
    iget-object v1, v5, Le/a/b0/b/h/a$b;->q2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEditBusinessProfileV2"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 248
    iget-object v1, v5, Le/a/b0/b/h/a$b;->s2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowACSAllIncoming"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 249
    iget-object v1, v5, Le/a/b0/b/h/a$b;->t2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowACSAllOutgoing"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 250
    iget-object v1, v5, Le/a/b0/b/h/a$b;->u2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdUnitIdCache"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 251
    iget-object v1, v5, Le/a/b0/b/h/a$b;->v2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowRingingDuration"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 252
    iget-object v1, v5, Le/a/b0/b/h/a$b;->w2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureHideACSSetting"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 253
    iget-object v1, v5, Le/a/b0/b/h/a$b;->x2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowACSPbSetting"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 254
    iget-object v1, v5, Le/a/b0/b/h/a$b;->k2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsBusinessTab"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 255
    iget-object v1, v5, Le/a/b0/b/h/a$b;->l2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureUrgentMessages"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 256
    iget-object v1, v5, Le/a/b0/b/h/a$b;->y2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCacheOnInCallNotification"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 257
    iget-object v1, v5, Le/a/b0/b/h/a$b;->B2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAcsRateAppPromo"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 258
    iget-object v1, v5, Le/a/b0/b/h/a$b;->C2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureMarkAsImportantROW"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 259
    iget-object v1, v5, Le/a/b0/b/h/a$b;->f3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsRowImportantSendersFeedback"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 260
    iget-object v1, v5, Le/a/b0/b/h/a$b;->g3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsSmartFeed"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 261
    iget-object v1, v5, Le/a/b0/b/h/a$b;->h3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsStarMessages"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 262
    iget-object v1, v5, Le/a/b0/b/h/a$b;->D2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContextCall"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 263
    iget-object v1, v5, Le/a/b0/b/h/a$b;->E2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowInternalAdsOnDetailsView"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 264
    iget-object v1, v5, Le/a/b0/b/h/a$b;->F2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowInternalAdsOnAftercall"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 265
    iget-object v1, v5, Le/a/b0/b/h/a$b;->G2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNameFeedbackCooldown"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 266
    iget-object v1, v5, Le/a/b0/b/h/a$b;->J2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureShowLargeBannerAdsOnAftercall"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 267
    iget-object v1, v5, Le/a/b0/b/h/a$b;->K2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePresenceOnUnlock"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 268
    iget-object v1, v5, Le/a/b0/b/h/a$b;->e1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInCallUIDefaultOptIn"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 269
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureForcedUpdateDialog"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 270
    iget-object v1, v5, Le/a/b0/b/h/a$b;->M2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDisableEnhancedSearch"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 271
    iget-object v1, v5, Le/a/b0/b/h/a$b;->N2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEnableOfflineAds"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 272
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEnableMediumBannerACS"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 273
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Q2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureHMSAttestation"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 274
    iget-object v1, v5, Le/a/b0/b/h/a$b;->R2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInCallUISwitchToVoip"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 275
    iget-object v1, v5, Le/a/b0/b/h/a$b;->S2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePersonalSafetyMenuItem"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 276
    iget-object v1, v5, Le/a/b0/b/h/a$b;->T2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePersonalSafetyPromo"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 277
    iget-object v1, v5, Le/a/b0/b/h/a$b;->U2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEnableEventsForOfflineAds"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 278
    iget-object v1, v5, Le/a/b0/b/h/a$b;->V2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePremiumUserTab"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 279
    iget-object v1, v5, Le/a/b0/b/h/a$b;->W2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdsCacheBasedOnPlacement"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 280
    iget-object v1, v5, Le/a/b0/b/h/a$b;->X2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInsightsNotificationBannersSupport"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 281
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Y2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBusinessIm"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 282
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Z2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBlockOptionsClevertap"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 283
    iget-object v1, v5, Le/a/b0/b/h/a$b;->a3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDirectAdRequestToFacebook"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 284
    iget-object v1, v5, Le/a/b0/b/h/a$b;->b3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureV2TaggerSearchUi"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 285
    iget-object v1, v5, Le/a/b0/b/h/a$b;->c3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEnableNewNativeAdImageTemplate"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 286
    iget-object v1, v5, Le/a/b0/b/h/a$b;->i3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdRouterMediation"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 287
    iget-object v1, v5, Le/a/b0/b/h/a$b;->j3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdPartnerSdkMediation"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 288
    iget-object v1, v5, Le/a/b0/b/h/a$b;->k3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdOfflineToOnline"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 289
    iget-object v1, v5, Le/a/b0/b/h/a$b;->l3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdNPAUserConsent"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 290
    iget-object v1, v5, Le/a/b0/b/h/a$b;->m3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdPixelCalls"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 291
    iget-object v1, v5, Le/a/b0/b/h/a$b;->o3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNeighbourSpoofingBlockOption"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 292
    iget-object v1, v5, Le/a/b0/b/h/a$b;->p3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBmGovServices"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 293
    iget-object v1, v5, Le/a/b0/b/h/a$b;->q3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNewDetailsViewForSpammers"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 294
    iget-object v1, v5, Le/a/b0/b/h/a$b;->r3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNewDetailsViewForPrivate"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 295
    iget-object v1, v5, Le/a/b0/b/h/a$b;->s3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNewDetailsViewAll"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 296
    iget-object v1, v5, Le/a/b0/b/h/a$b;->w3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSdkOAuth"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 297
    iget-object v1, v5, Le/a/b0/b/h/a$b;->x3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSdk1tap"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 298
    iget-object v1, v5, Le/a/b0/b/h/a$b;->y3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVerifiedBusinessAwareness"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 299
    iget-object v1, v5, Le/a/b0/b/h/a$b;->B3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDisableBusinessImCategorization"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 300
    iget-object v1, v5, Le/a/b0/b/h/a$b;->K:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePeriodicallyCheckPermissions"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 301
    iget-object v1, v5, Le/a/b0/b/h/a$b;->C3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDualNumberEditProfile"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 302
    iget-object v1, v5, Le/a/b0/b/h/a$b;->E3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInboxCleanup"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 303
    iget-object v1, v5, Le/a/b0/b/h/a$b;->F3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizCallReasonForBusinesses"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 304
    iget-object v1, v5, Le/a/b0/b/h/a$b;->K3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizPriorityCallAwareness"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 305
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizCovidDirectory"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 306
    iget-object v1, v5, Le/a/b0/b/h/a$b;->M3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizCovidDirectoryBanner"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 307
    iget-object v1, v5, Le/a/b0/b/h/a$b;->O3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureFetchBusinessCardOnPremiumStatusChange"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 308
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Q3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizVerifiedFeedbackAcsUi"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 309
    iget-object v1, v5, Le/a/b0/b/h/a$b;->R3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizModularCallReasonPCID"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 310
    iget-object v1, v5, Le/a/b0/b/h/a$b;->S3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizModularCallReasonPACS"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 311
    iget-object v1, v5, Le/a/b0/b/h/a$b;->T3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizCallRatingPACS"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 312
    iget-object v1, v5, Le/a/b0/b/h/a$b;->U3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureGoldPremiumGift"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 313
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "threeButtonPremiumLayoutEnabled"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 314
    iget-object v1, v5, Le/a/b0/b/h/a$b;->V3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVideoCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 315
    iget-object v1, v5, Le/a/b0/b/h/a$b;->W3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAlternativeDau"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 316
    iget-object v1, v5, Le/a/b0/b/h/a$b;->X3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCallRecordingNewDesign"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 317
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Y3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCallRecordingInternalPlayer"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 318
    iget-object v1, v5, Le/a/b0/b/h/a$b;->a4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizNewDetailsViewVerifiedBusinessProfiles"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 319
    iget-object v1, v5, Le/a/b0/b/h/a$b;->b4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureGAMInternalEvent"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 320
    iget-object v1, v5, Le/a/b0/b/h/a$b;->c4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdsGenericEvent"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 321
    iget-object v1, v5, Le/a/b0/b/h/a$b;->d4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdsRestrictCampaignProcessing"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 322
    iget-object v1, v5, Le/a/b0/b/h/a$b;->e4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureLogAdException"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 323
    iget-object v1, v5, Le/a/b0/b/h/a$b;->g4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureContextualAds"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 324
    iget-object v1, v5, Le/a/b0/b/h/a$b;->h4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBannerAdsOnListView"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 325
    iget-object v1, v5, Le/a/b0/b/h/a$b;->i4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureTruecallerNewsMenuItem"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 326
    iget-object v1, v5, Le/a/b0/b/h/a$b;->j4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureGroupInviteLinks"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 327
    iget-object v1, v5, Le/a/b0/b/h/a$b;->l4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureOptimizedAdsNativeView"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 328
    iget-object v1, v5, Le/a/b0/b/h/a$b;->m4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureGhostCall"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 329
    iget-object v1, v5, Le/a/b0/b/h/a$b;->n4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureWhatsappCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 330
    iget-object v1, v5, Le/a/b0/b/h/a$b;->o4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAnnounceCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 331
    iget-object v1, v5, Le/a/b0/b/h/a$b;->r4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdRouterOnGAM"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 332
    iget-object v1, v5, Le/a/b0/b/h/a$b;->I3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureChatSupportForGold"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 333
    iget-object v1, v5, Le/a/b0/b/h/a$b;->J3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureChatSupportForPremium"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 334
    iget-object v1, v5, Le/a/b0/b/h/a$b;->t4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizVideoCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 335
    iget-object v1, v5, Le/a/b0/b/h/a$b;->v4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizLandscapeVideoCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 336
    iget-object v1, v5, Le/a/b0/b/h/a$b;->w4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizPortraitVideoCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 337
    iget-object v1, v5, Le/a/b0/b/h/a$b;->x4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizFullscreenLandscapeVideoCallerId"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 338
    iget-object v1, v5, Le/a/b0/b/h/a$b;->s4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNewAdsKeywords"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 339
    iget-object v1, v5, Le/a/b0/b/h/a$b;->y4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featurePredictiveECPMModel"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 340
    iget-object v1, v5, Le/a/b0/b/h/a$b;->z4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureRestrictClickForAds"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 341
    iget-object v1, v5, Le/a/b0/b/h/a$b;->A4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNudgeToSendAsSMS"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 342
    iget-object v1, v5, Le/a/b0/b/h/a$b;->C4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCampaignKeywordsOnPrefs"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 343
    iget-object v1, v5, Le/a/b0/b/h/a$b;->B4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureTCY"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 344
    iget-object v1, v5, Le/a/b0/b/h/a$b;->t3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVoteComments"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 345
    iget-object v1, v5, Le/a/b0/b/h/a$b;->u3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCommentsDefaultSortByScore"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 346
    iget-object v1, v5, Le/a/b0/b/h/a$b;->v3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAllowSortComments"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 347
    iget-object v1, v5, Le/a/b0/b/h/a$b;->D4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAcsAdsRemovalForPriorityAndVb"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 348
    iget-object v1, v5, Le/a/b0/b/h/a$b;->E4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureDetailsAdsRemovalForPriorityAndVb"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 349
    iget-object v1, v5, Le/a/b0/b/h/a$b;->F4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureVideoCallerIdHideOption"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 350
    iget-object v1, v5, Le/a/b0/b/h/a$b;->G4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureFetchSurveys"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 351
    iget-object v1, v5, Le/a/b0/b/h/a$b;->H4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSurveyAcsFlow"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 352
    iget-object v1, v5, Le/a/b0/b/h/a$b;->I4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureClevertapExtras"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 353
    iget-object v1, v5, Le/a/b0/b/h/a$b;->J4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureStorageManager"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 354
    iget-object v1, v5, Le/a/b0/b/h/a$b;->K4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureWVMWeeklySummaryNotification"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 355
    iget-object v1, v5, Le/a/b0/b/h/a$b;->p4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureWVMRevealProfileView"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 356
    iget-object v1, v5, Le/a/b0/b/h/a$b;->q4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureOEMWebPayment"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 357
    iget-object v1, v5, Le/a/b0/b/h/a$b;->L4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSecondCallOnDemandCallReason"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 358
    iget-object v1, v5, Le/a/b0/b/h/a$b;->M4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureMidCallOnDemandCallReason"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 359
    iget-object v1, v5, Le/a/b0/b/h/a$b;->G3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizPACSCallMeBackForBusinesses"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 360
    iget-object v1, v5, Le/a/b0/b/h/a$b;->H3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizFACSCallMeBackForBusinesses"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 361
    iget-object v1, v5, Le/a/b0/b/h/a$b;->f4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureACSAdUnitIdOffline"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 362
    iget-object v1, v5, Le/a/b0/b/h/a$b;->u4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizVideoAvatarClick"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 363
    iget-object v1, v5, Le/a/b0/b/h/a$b;->N4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCommentWithoutBlocking"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 364
    iget-object v1, v5, Le/a/b0/b/h/a$b;->P4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureNewAdCampaigns"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 365
    iget-object v1, v5, Le/a/b0/b/h/a$b;->O4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSuperDuperCallLog"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 366
    iget-object v1, v5, Le/a/b0/b/h/a$b;->Q4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureEditMessage"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 367
    iget-object v1, v5, Le/a/b0/b/h/a$b;->R4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureInvitePBContacts"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 368
    iget-object v1, v5, Le/a/b0/b/h/a$b;->S4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureCallerIdBanner"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 369
    iget-object v1, v5, Le/a/b0/b/h/a$b;->U4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureUkraineHotline"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 370
    iget-object v1, v5, Le/a/b0/b/h/a$b;->N3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBizAnalyticRevamp"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 371
    iget-object v1, v5, Le/a/b0/b/h/a$b;->V4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureBusinessImCustomReplies"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 372
    iget-object v1, v5, Le/a/b0/b/h/a$b;->T4:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureSecuredMessagingTab"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 373
    iget-object v1, v5, Le/a/b0/b/h/a$b;->O2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureOfflineAdsOnDetailsView"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 374
    iget-object v1, v5, Le/a/b0/b/h/a$b;->n3:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/i3/c;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "featureAdAcsInteractionEvent"

    invoke-virtual {v0, v6, v1}, Le/a/u3/g;->k0(Ljava/lang/String;Z)V

    .line 375
    iget-object v0, p0, Le/a/i3/c;->o:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a4/e;

    invoke-interface {v0}, Le/a/a4/e;->a()V

    .line 376
    invoke-virtual {p0, v5}, Le/a/i3/c;->e(Le/a/b0/b/h/a$b;)V

    .line 377
    invoke-virtual {p0, v5}, Le/a/i3/c;->f(Le/a/b0/b/h/a$b;)V

    .line 378
    iget-object v0, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    const-string v1, "has_successfully_loaded_config_once"

    invoke-interface {v0, v1, v4}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_15
    const-string v0, "features object not present"

    .line 379
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 380
    :goto_f
    iget-object v0, v3, Le/a/b0/b/h/a;->b:Le/a/b0/b/h/a$c;

    invoke-virtual {p0, v0}, Le/a/i3/c;->d(Le/a/b0/b/h/a$c;)V

    :cond_16
    if-eqz v3, :cond_17

    move v2, v4

    :cond_17
    return v2
.end method

.method public final l()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/i3/c;->n:Le/a/b0/b/f/a;

    invoke-virtual {v1}, Le/a/b0/b/f/a;->a()Lcom/truecaller/account/network/InstallationDetailsDto;

    move-result-object v1

    .line 2
    const-class v2, Le/a/n2/a/c;

    const-string v3, "requestDto"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/a/b0/b/a/b;

    invoke-direct {v3}, Le/a/b0/b/a/b;-><init>()V

    .line 4
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v3, v4}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 6
    new-instance v4, Le/a/b0/b/g/b;

    invoke-direct {v4}, Le/a/b0/b/g/b;-><init>()V

    .line 7
    sget-object v5, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 8
    new-instance v5, Le/a/b0/b/g/a$g;

    invoke-direct {v5, v0}, Le/a/b0/b/g/a$g;-><init>(Z)V

    iput-object v5, v4, Le/a/b0/b/g/b;->e:Le/a/b0/b/g/a$g;

    .line 9
    invoke-static {v4}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 11
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/n2/a/c;

    .line 12
    invoke-interface {v2, v1}, Le/a/n2/a/c;->g(Lcom/truecaller/account/network/InstallationDetailsDto;)Lx3/b;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    const-string v2, "AccountRestAdapter.updat\u2026nstallationDto).execute()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Le/a/i3/c;->c:Le/a/b0/o/a;

    const-string v2, "lastUpdateInstallationVersion"

    iget v3, p0, Le/a/i3/c;->a:I

    invoke-interface {v1, v2, v3}, Le/a/b0/o/a;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 16
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method
