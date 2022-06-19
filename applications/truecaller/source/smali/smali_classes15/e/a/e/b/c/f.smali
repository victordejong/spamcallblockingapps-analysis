.class public final Le/a/e/b/c/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/c/e;",
        ">;",
        "Le/a/e/b/c/d;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/e/b/g;

.field public final g:Le/a/p5/g;

.field public final h:Le/a/p5/a0;

.field public final i:Le/a/e/b/c/c;

.field public final j:Le/a/p5/c0;

.field public final k:Le/a/o5/l1;

.field public final l:Le/a/q2/a;

.field public final m:Le/a/h4/g;

.field public final n:Le/a/a/i0;

.field public final o:Le/a/h4/n;

.field public final p:Le/a/y/c/b;

.field public final q:Le/a/b0/o/a;

.field public final r:Le/a/d4/c;

.field public final s:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/e/b/g;Le/a/p5/g;Le/a/p5/a0;Le/a/e/b/c/c;Le/a/p5/c0;Le/a/o5/l1;Le/a/q2/a;Le/a/h4/g;Le/a/a/i0;Le/a/h4/n;Le/a/y/c/b;Le/a/b0/o/a;Le/a/d4/c;Le/a/u3/g;)V
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

    const-string v0, "asyncContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsUIPref"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soundSettingsHelper"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ringtoneNotificationSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingNotificationSettings"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemNotificationManager"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/e/b/c/f;->d:Ls1/w/f;

    iput-object v2, v0, Le/a/e/b/c/f;->e:Ls1/w/f;

    iput-object v3, v0, Le/a/e/b/c/f;->f:Le/a/e/b/g;

    iput-object v4, v0, Le/a/e/b/c/f;->g:Le/a/p5/g;

    iput-object v5, v0, Le/a/e/b/c/f;->h:Le/a/p5/a0;

    iput-object v6, v0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    iput-object v7, v0, Le/a/e/b/c/f;->j:Le/a/p5/c0;

    iput-object v8, v0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    iput-object v9, v0, Le/a/e/b/c/f;->l:Le/a/q2/a;

    iput-object v10, v0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    iput-object v11, v0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    iput-object v12, v0, Le/a/e/b/c/f;->o:Le/a/h4/n;

    iput-object v13, v0, Le/a/e/b/c/f;->p:Le/a/y/c/b;

    iput-object v14, v0, Le/a/e/b/c/f;->q:Le/a/b0/o/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/e/b/c/f;->r:Le/a/d4/c;

    iput-object v15, v0, Le/a/e/b/c/f;->s:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public A2()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/c/f;->g:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/c/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/c/e;->xc()V

    :cond_0
    return-void
.end method

.method public final Ij(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    const-string p1, "Truecaller Message"

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Truecaller Flash"

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ringtoneUri"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, v0, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object p1

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/e/b/c/f;->j:Le/a/p5/c0;

    const v0, 0x7f1205d9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026(R.string.RingtoneSilent)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/n1$a;",
            "III",
            "Ls1/z/b/l<",
            "-",
            "Landroid/net/Uri;",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move v0, p2

    .line 1
    iget-object v1, v7, Le/a/e/b/c/f;->h:Le/a/p5/a0;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    iget-object v1, v7, Le/a/e/b/c/f;->h:Le/a/p5/a0;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_1

    invoke-interface {v1, v2, p2}, Le/a/e/b/c/e;->Su(Ljava/lang/String;I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v7, Le/a/e/b/c/f;->h:Le/a/p5/a0;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_1

    invoke-interface {v1, v3, p2}, Le/a/e/b/c/e;->Su(Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    new-instance v10, Le/a/e/b/c/f$e;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v6}, Le/a/e/b/c/f$e;-><init>(Le/a/e/b/c/f;Le/a/o5/n1$a;Ls1/z/b/l;IILs1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/b/c/f;->g:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->m()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Le/a/e/b/c/e;->Rv(Z)V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/e/b/c/e;->ly(Z)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 5
    iget-object v2, v2, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 6
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Le/a/e/b/c/e;->gs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Le/a/e/b/c/e;->ho(Z)V

    .line 8
    :cond_2
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 9
    :cond_3
    :goto_0
    :try_start_1
    iget-object v2, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v2}, Le/a/h4/g;->h()Landroid/net/Uri;

    move-result-object v2

    .line 10
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Le/a/e/b/c/e;->Ub(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 11
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Le/a/e/b/c/e;->Ss(Z)V

    .line 12
    :cond_4
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 13
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v2}, Le/a/h4/g;->g()Landroid/net/Uri;

    move-result-object v2

    .line 14
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Le/a/e/b/c/e;->Yo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 15
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_6

    invoke-interface {v3, v0}, Le/a/e/b/c/e;->ee(Z)V

    .line 16
    :cond_6
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 17
    :cond_7
    :goto_2
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/c/e;

    if-eqz v2, :cond_8

    iget-object v3, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v3}, Le/a/h4/g;->f()Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/e/b/c/e;->K7(Z)V

    .line 18
    :cond_8
    iget-object v2, p0, Le/a/e/b/c/f;->f:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 19
    iget-object v2, p0, Le/a/e/b/c/f;->r:Le/a/d4/c;

    sget-object v3, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v2, v3}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    iget-object v2, p0, Le/a/e/b/c/f;->q:Le/a/b0/o/a;

    const-string v3, "featureFlash"

    invoke-interface {v2, v3, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Le/a/e/b/c/f;->s:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_3

    :cond_9
    move v2, v0

    :goto_3
    if-eqz v2, :cond_d

    .line 21
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/c/e;

    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Le/a/e/b/c/e;->hl(Z)V

    .line 22
    :cond_a
    :try_start_3
    iget-object v1, p0, Le/a/e/b/c/f;->p:Le/a/y/c/b;

    invoke-interface {v1}, Le/a/y/c/b;->d()Landroid/net/Uri;

    move-result-object v1

    .line 23
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/c/e;

    if-eqz v2, :cond_e

    invoke-virtual {p0, v1}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Le/a/e/b/c/e;->o7(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 24
    iget-object v2, p0, Le/a/e/b/c/f;->p:Le/a/y/c/b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Le/a/y/c/b;->c(Ljava/lang/String;)V

    .line 25
    :try_start_4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/c/e;

    if-eqz v2, :cond_c

    iget-object v3, p0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    invoke-interface {v3}, Le/a/o5/l1;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/e/b/c/e;->o7(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 26
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/c/e;

    if-eqz v3, :cond_b

    invoke-interface {v3, v0}, Le/a/e/b/c/e;->hl(Z)V

    .line 27
    :cond_b
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 28
    :cond_c
    :goto_4
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 29
    :cond_d
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_e

    invoke-interface {v1, v0}, Le/a/e/b/c/e;->hl(Z)V

    :cond_e
    :goto_5
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/e/b/c/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v1}, Le/a/h4/g;->e()Landroid/net/Uri;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v2}, Le/a/h4/g;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v2, v1}, Le/a/a/i0;->e4(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/c/e;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Le/a/e/b/c/e;->Ss(Z)V

    .line 8
    :cond_1
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v1}, Le/a/h4/g;->b()Landroid/net/Uri;

    move-result-object v1

    .line 10
    iget-object v2, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {v2}, Le/a/h4/g;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 11
    iget-object v2, p0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-interface {v2, p1}, Le/a/a/i0;->G1(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 12
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/c/e;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/e/b/c/e;->ee(Z)V

    .line 13
    :cond_4
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public Z9()V
    .locals 6

    .line 1
    sget-object v1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    .line 2
    new-instance v5, Le/a/e/b/c/f$c;

    invoke-direct {v5, p0}, Le/a/e/b/c/f$c;-><init>(Le/a/e/b/c/f;)V

    const/4 v2, 0x6

    const/4 v3, 0x2

    const v4, 0x7f120673

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    return-void
.end method

.method public cc()V
    .locals 6

    .line 1
    sget-object v1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    .line 2
    new-instance v5, Le/a/e/b/c/f$b;

    invoke-direct {v5, p0}, Le/a/e/b/c/f$b;-><init>(Le/a/e/b/c/f;)V

    const/16 v2, 0x9

    const/4 v3, 0x3

    const v4, 0x7f120673

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    return-void
.end method

.method public f8(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->D0(Z)V

    .line 2
    iget-object p1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {p1}, Le/a/h4/g;->d()V

    .line 3
    iget-object p1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {p1}, Le/a/h4/g;->a()V

    .line 4
    iget-object p1, p0, Le/a/e/b/c/f;->o:Le/a/h4/n;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/h4/n;->k(Z)Z

    return-void
.end method

.method public j5()V
    .locals 6

    .line 1
    sget-object v1, Le/a/o5/n1$a$c;->f:Le/a/o5/n1$a$c;

    .line 2
    sget-object v5, Le/a/e/b/c/f$d;->b:Le/a/e/b/c/f$d;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const v4, 0x7f120694

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz p3, :cond_3

    .line 2
    iget-object p1, p0, Le/a/e/b/c/f;->p:Le/a/y/c/b;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/c/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/c/e;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/e/b/c/e;->o7(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_3
    iget-object p1, p0, Le/a/e/b/c/f;->k:Le/a/o5/l1;

    invoke-interface {p1}, Le/a/o5/l1;->c()Landroid/net/Uri;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/a/e/b/c/f;->p:Le/a/y/c/b;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/y/c/b;->c(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/c/e;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/e/b/c/e;->o7(Ljava/lang/String;)V

    .line 7
    :cond_4
    :goto_1
    new-instance p1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;

    iget-object p2, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    invoke-virtual {p2, p3}, Le/a/e/b/c/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->FLASH:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-direct {p1, p2, p3}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;-><init>(Ljava/lang/String;Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;)V

    iget-object p2, p0, Le/a/e/b/c/f;->l:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto/16 :goto_3

    .line 8
    :cond_5
    iget-object p1, p0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-interface {p1, p2}, Le/a/a/i0;->e4(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {p1}, Le/a/h4/g;->a()V

    .line 10
    iget-object p1, p0, Le/a/e/b/c/f;->o:Le/a/h4/n;

    invoke-interface {p1, v1}, Le/a/h4/n;->k(Z)Z

    .line 11
    invoke-virtual {p0}, Le/a/e/b/c/f;->Kj()V

    .line 12
    new-instance p1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;

    iget-object p2, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    invoke-virtual {p2, p3}, Le/a/e/b/c/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->IM:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-direct {p1, p2, p3}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;-><init>(Ljava/lang/String;Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;)V

    iget-object p2, p0, Le/a/e/b/c/f;->l:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_3

    .line 13
    :cond_7
    iget-object p1, p0, Le/a/e/b/c/f;->n:Le/a/a/i0;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_8
    invoke-interface {p1, p2}, Le/a/a/i0;->G1(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Le/a/e/b/c/f;->m:Le/a/h4/g;

    invoke-interface {p1}, Le/a/h4/g;->d()V

    .line 15
    iget-object p1, p0, Le/a/e/b/c/f;->o:Le/a/h4/n;

    invoke-interface {p1, v1}, Le/a/h4/n;->k(Z)Z

    .line 16
    invoke-virtual {p0}, Le/a/e/b/c/f;->Kj()V

    .line 17
    new-instance p1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;

    iget-object p2, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    invoke-virtual {p2, p3}, Le/a/e/b/c/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->SMS:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-direct {p1, p2, p3}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;-><init>(Ljava/lang/String;Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;)V

    iget-object p2, p0, Le/a/e/b/c/f;->l:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_3

    .line 18
    :cond_9
    iget-object p1, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 19
    iget-object p1, p1, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p3, :cond_a

    .line 20
    iget-object p1, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 21
    iget-object p1, p1, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 22
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/c/e;

    if-eqz p1, :cond_b

    invoke-virtual {p0, p3}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/e/b/c/e;->gs(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    .line 23
    iget-object p1, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    .line 24
    iget-object p1, p1, Le/a/e/b/c/c;->a:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 25
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/c/e;

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2}, Le/a/e/b/c/f;->Ij(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/e/b/c/e;->gs(Ljava/lang/String;)V

    .line 26
    :cond_b
    :goto_2
    new-instance p1, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;

    iget-object p2, p0, Le/a/e/b/c/f;->i:Le/a/e/b/c/c;

    invoke-virtual {p2, p3}, Le/a/e/b/c/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;->CALL:Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;

    invoke-direct {p1, p2, p3}, Lcom/truecaller/ui/settings/sound/SoundSettingsEvent;-><init>(Ljava/lang/String;Lcom/truecaller/ui/settings/sound/SoundSettingsEvent$Type;)V

    iget-object p2, p0, Le/a/e/b/c/f;->l:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :goto_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 12

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length p2, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    aget p2, p3, v0

    :goto_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    const/4 p2, 0x6

    if-eq p1, p2, :cond_5

    const/4 p2, 0x7

    if-eq p1, p2, :cond_4

    const/16 p2, 0x9

    if-eq p1, p2, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    sget-object v1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    .line 3
    new-instance v5, Le/a/e/b/c/f$b;

    invoke-direct {v5, p0}, Le/a/e/b/c/f$b;-><init>(Le/a/e/b/c/f;)V

    const/16 v2, 0x9

    const/4 v3, 0x3

    const v4, 0x7f120673

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    goto :goto_2

    .line 5
    :cond_4
    sget-object v7, Le/a/o5/n1$a$a;->f:Le/a/o5/n1$a$a;

    .line 6
    new-instance v11, Le/a/e/b/c/f$a;

    invoke-direct {v11, p0}, Le/a/e/b/c/f$a;-><init>(Le/a/e/b/c/f;)V

    const/4 v8, 0x7

    const/4 v9, 0x4

    const v10, 0x7f12065a

    move-object v6, p0

    .line 7
    invoke-virtual/range {v6 .. v11}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    goto :goto_2

    .line 8
    :cond_5
    sget-object v1, Le/a/o5/n1$a$b;->f:Le/a/o5/n1$a$b;

    .line 9
    new-instance v5, Le/a/e/b/c/f$c;

    invoke-direct {v5, p0}, Le/a/e/b/c/f$c;-><init>(Le/a/e/b/c/f;)V

    const/4 v2, 0x6

    const/4 v3, 0x2

    const v4, 0x7f120673

    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    goto :goto_2

    .line 11
    :cond_6
    sget-object v7, Le/a/o5/n1$a$c;->f:Le/a/o5/n1$a$c;

    .line 12
    sget-object v11, Le/a/e/b/c/f$d;->b:Le/a/e/b/c/f$d;

    const/4 v8, 0x5

    const/4 v9, 0x1

    const v10, 0x7f120694

    move-object v6, p0

    .line 13
    invoke-virtual/range {v6 .. v11}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/e/b/c/f;->Kj()V

    return-void
.end method

.method public q6()V
    .locals 6

    .line 1
    sget-object v1, Le/a/o5/n1$a$a;->f:Le/a/o5/n1$a$a;

    .line 2
    new-instance v5, Le/a/e/b/c/f$a;

    invoke-direct {v5, p0}, Le/a/e/b/c/f$a;-><init>(Le/a/e/b/c/f;)V

    const/4 v2, 0x7

    const/4 v3, 0x4

    const v4, 0x7f12065a

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/a/e/b/c/f;->Jj(Le/a/o5/n1$a;IIILs1/z/b/l;)V

    return-void
.end method
