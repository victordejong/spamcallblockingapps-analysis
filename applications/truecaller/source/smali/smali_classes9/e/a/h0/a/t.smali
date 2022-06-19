.class public final Le/a/h0/a/t;
.super Le/a/h0/a/s;
.source "SourceFile"

# interfaces
.implements Le/a/i/m;


# instance fields
.field public b:Z

.field public c:Le/a/i/f0/m/d;

.field public d:Z

.field public final e:Le/a/h0/m;

.field public final f:Lcom/truecaller/settings/CallingSettings;

.field public final g:Le/a/a/i0;

.field public final h:Le/a/h5/w;

.field public final i:Le/a/p5/a0;

.field public final j:Le/a/q2/a;

.field public final k:Le/a/i/f0/d;

.field public final l:Le/a/i/s;

.field public final m:Le/a/p5/c0;

.field public final n:Le/a/l/p2/v0;

.field public final o:Le/a/u3/g;

.field public final p:Ln3/m0/y;

.field public final q:Le/a/h0/p;

.field public final r:Le/a/p5/g;

.field public final s:Le/a/h5/m;


# direct methods
.method public constructor <init>(Le/a/h0/m;Lcom/truecaller/settings/CallingSettings;Le/a/a/i0;Le/a/h5/w;Le/a/p5/a0;Le/a/q2/a;Le/a/i/f0/d;Le/a/i/s;Le/a/p5/c0;Le/a/l/p2/v0;Le/a/u3/g;Ln3/m0/y;Le/a/h0/p;Le/a/p5/g;Le/a/h5/m;)V
    .locals 16

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

    const-string v0, "filterSettings"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsProvider"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitConfig"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighbourhoodDigitsAdjuster"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/h0/a/s;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    iput-object v2, v0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    iput-object v3, v0, Le/a/h0/a/t;->g:Le/a/a/i0;

    iput-object v4, v0, Le/a/h0/a/t;->h:Le/a/h5/w;

    iput-object v5, v0, Le/a/h0/a/t;->i:Le/a/p5/a0;

    iput-object v6, v0, Le/a/h0/a/t;->j:Le/a/q2/a;

    iput-object v7, v0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    iput-object v8, v0, Le/a/h0/a/t;->l:Le/a/i/s;

    iput-object v9, v0, Le/a/h0/a/t;->m:Le/a/p5/c0;

    iput-object v10, v0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    iput-object v11, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    iput-object v12, v0, Le/a/h0/a/t;->p:Ln3/m0/y;

    iput-object v13, v0, Le/a/h0/a/t;->q:Le/a/h0/p;

    iput-object v14, v0, Le/a/h0/a/t;->r:Le/a/p5/g;

    iput-object v15, v0, Le/a/h0/a/t;->s:Le/a/h5/m;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/i;->C9()V

    :cond_0
    return-void
.end method

.method public Ij(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h0/a/t;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->i()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/a/h0/a/t;->b:Z

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/h0/a/u;->mA()V

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/a/h0/a/t;->Yj()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Le/a/h0/a/t;->b:Z

    const-string v0, "RingSilent"

    goto :goto_0

    .line 8
    :cond_4
    sget-object v1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    const-string v0, "RejectAutomatically"

    :goto_0
    const-string v1, "BlocktabSettings_Action"

    .line 9
    invoke-static {v1, v0}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 10
    iget-object v7, p0, Le/a/h0/a/t;->j:Le/a/q2/a;

    const/4 v5, 0x0

    const-string v2, "BLOCKSETTINGS_BlockMethod"

    const-string v6, "event.build()"

    move-object v3, v5

    .line 11
    invoke-static/range {v2 .. v7}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 12
    iget-object v0, p0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "blockCallMethod"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public Jj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/i;->s6()V

    :cond_0
    return-void
.end method

.method public Kj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/i;->kz()V

    :cond_0
    return-void
.end method

.method public Lj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/i;->tj()V

    :cond_0
    return-void
.end method

.method public Mj()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->r:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Context"

    const-string v1, "blockView"

    .line 3
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Permission"

    const-string v1, "DialerApp"

    .line 4
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "State"

    const-string v1, "Asked"

    .line 5
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v6, p0, Le/a/h0/a/t;->j:Le/a/q2/a;

    const/4 v4, 0x0

    const-string v1, "PermissionChanged"

    const-string v5, "event.build()"

    move-object v2, v4

    .line 7
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 8
    iget-object v0, p0, Le/a/h0/a/t;->s:Le/a/h5/m;

    invoke-interface {v0}, Le/a/h5/m;->c()V

    return-void
.end method

.method public Nj(Le/a/h0/a/v;)V
    .locals 2

    const-string v0, "blockingSwitch"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Le/a/h0/a/v$h;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->i()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/h0/a/t;->q:Le/a/h0/p;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Le/a/h0/p;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Le/a/h0/a/t;->q:Le/a/h0/p;

    invoke-virtual {v1}, Le/a/h0/p;->c()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Le/a/h0/a/u;->j5(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Oj(Le/a/h0/a/v;)V
    .locals 1

    const-string v0, "blockingSwitch"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Le/a/h0/a/v$h;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/h0/a/u;->o4()V

    :cond_0
    return-void
.end method

.method public Pj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/a/u;->Ei()V

    :cond_0
    return-void
.end method

.method public Qj(Le/a/h0/a/v;Z)V
    .locals 7

    sget-object v0, Ln3/m0/q;->b:Ln3/m0/q;

    const-class v1, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v3, "blockingSwitch"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v3, p1, Le/a/h0/a/v$a;

    if-eqz v3, :cond_2

    .line 2
    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->TOPSPAMMER_UPDATE:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 6
    :cond_2
    instance-of v3, p1, Le/a/h0/a/v$j;

    const-string v4, "FilterSettingsUploadWorker"

    const-string v5, "workManager"

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 7
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_TOP_SPAMMERS:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->k(Z)V

    .line 11
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 12
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 13
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 15
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 16
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 17
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 18
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 19
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 20
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockSpammers"

    .line 21
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :cond_5
    instance-of v3, p1, Le/a/h0/a/v$i;

    if-eqz v3, :cond_8

    .line 23
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 24
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_NON_PHONEBOOK:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 25
    :cond_6
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 26
    :cond_7
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->m(Z)V

    .line 27
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 28
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 29
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 31
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 32
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 33
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 34
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 35
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 36
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockNonPhonebook"

    .line 37
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 38
    :cond_8
    instance-of v3, p1, Le/a/h0/a/v$f;

    if-eqz v3, :cond_b

    .line 39
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 40
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_9

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_FOREIGN_NUMBERS:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 41
    :cond_9
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 42
    :cond_a
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->g(Z)V

    .line 43
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 44
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 45
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 47
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 48
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 49
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 50
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 51
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 52
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockForeignNumbers"

    .line 53
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 54
    :cond_b
    instance-of v3, p1, Le/a/h0/a/v$h;

    if-eqz v3, :cond_e

    .line 55
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    .line 56
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_c

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_NEIGHBOUR_SPOOFING:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 57
    :cond_c
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 58
    :cond_d
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->o(Z)V

    .line 59
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 60
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 61
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 63
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 64
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 65
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 66
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 67
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 68
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockNeighbourSpoofing"

    .line 69
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 70
    :cond_e
    instance-of v3, p1, Le/a/h0/a/v$k;

    if-eqz v3, :cond_11

    .line 71
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    .line 72
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_f

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_HIDDEN_NUMBERS:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 73
    :cond_f
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 74
    :cond_10
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->j(Z)V

    .line 75
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 76
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 77
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 79
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 80
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 81
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 82
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 83
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 84
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockHiddenNumbers"

    .line 85
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_11
    instance-of v3, p1, Le/a/h0/a/v$g;

    if-eqz v3, :cond_14

    .line 87
    iget-object p1, p0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    .line 88
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_12

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_INDIAN_REGISTERED_TELEMARKETERS:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 89
    :cond_12
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto/16 :goto_1

    .line 90
    :cond_13
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, p2}, Le/a/h0/m;->a(Z)V

    .line 91
    iget-object p1, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {p1, v6}, Le/a/h0/m;->c(Z)V

    .line 92
    iget-object p1, p0, Le/a/h0/a/t;->p:Ln3/m0/y;

    .line 93
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 95
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 96
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 97
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 98
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 99
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 100
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    const-string p1, "BLOCKSETTINGS_BlockIndianTelemarketers"

    .line 101
    invoke-virtual {p0, p2, p1}, Le/a/h0/a/t;->Wj(ZLjava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_14
    instance-of v0, p1, Le/a/h0/a/v$e;

    if-eqz v0, :cond_16

    .line 103
    iget-object p1, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_15

    if-eqz p2, :cond_15

    .line 104
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_15

    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK_EXTENDED_TOP_SPAMMER_LIST:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, p2}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 105
    :cond_15
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto :goto_1

    .line 106
    :cond_16
    sget-object v0, Le/a/h0/a/v$b;->i:Le/a/h0/a/v$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    .line 107
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Le/a/h0/a/u;->lb()V

    .line 108
    :cond_17
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto :goto_1

    .line 109
    :cond_18
    iget-object p1, p0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    const-string p2, "blockCallNotification"

    invoke-interface {p1, p2, v6}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 110
    :cond_19
    sget-object v0, Le/a/h0/a/v$c;->i:Le/a/h0/a/v$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-nez p2, :cond_1b

    .line 111
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/u;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Le/a/h0/a/u;->ue()V

    .line 112
    :cond_1a
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    goto :goto_1

    .line 113
    :cond_1b
    iget-object p1, p0, Le/a/h0/a/t;->g:Le/a/a/i0;

    invoke-interface {p1, v6}, Le/a/a/i0;->M2(Z)V

    :goto_1
    return-void

    .line 114
    :cond_1c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public Rj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->BLOCK:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1}, Le/a/h0/a/u;->po(Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/h0/a/t;->d:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    :cond_0
    return-void
.end method

.method public Tj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h0/a/u;->Ki(Z)V

    :cond_0
    return-void
.end method

.method public Uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "blockCallNotification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    return-void
.end method

.method public Vj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->g:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->M2(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    return-void
.end method

.method public final Wj(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "Enabled"

    goto :goto_0

    :cond_0
    const-string v0, "Disabled"

    .line 1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "BlocktabSettings_Action"

    .line 2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/h0/a/t;->j:Le/a/q2/a;

    .line 4
    new-instance v2, Le/a/q2/g$b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p2, "event.build()"

    .line 5
    invoke-static {v2, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/h0/a/t;->j:Le/a/q2/a;

    .line 7
    new-instance p2, Le/a/q2/g$b$a;

    const-string v0, "BLOCKSETTINGS_Enabled"

    invoke-direct {p2, v0, v3, v3, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v0, "AnalyticsEvent.Builder(B\u2026ngs.Enabled.NAME).build()"

    .line 8
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_1
    return-void
.end method

.method public final Xj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/h0/a/u;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/h0/a/t;->Xj()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Le/a/h0/a/u;->Ki(Z)V

    :cond_0
    const-string p1, "blockView"

    const-string v0, "viewId"

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, p1, v1, v1}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/h0/a/t;->j:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    iget-object p1, p0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    invoke-interface {p1}, Le/a/i/f0/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/h0/a/t;->l:Le/a/i/s;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->l1(Le/a/i/f0/d;Le/a/i/s;Le/a/i/m;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    return-void
.end method

.method public final Yj()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/h0/a/t;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h0/a/t;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_1

    iget-object v4, p0, Le/a/h0/a/t;->m:Le/a/p5/c0;

    const v5, 0x7f120047

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/h0/a/u;->m(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Le/a/h0/a/t;->Ij(I)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ls1/k;

    .line 4
    new-instance v4, Ls1/k;

    const v5, 0x7f120045

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 5
    new-instance v4, Ls1/k;

    const v5, 0x7f120046

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 6
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "blockCallMethod"

    invoke-interface {v1, v3, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/k;

    .line 10
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_4
    :goto_2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h0/a/u;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0, v2}, Le/a/h0/a/u;->xu(Ljava/util/List;I)V

    :cond_5
    return-void
.end method

.method public final Zj()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/h0/a/u;

    if-eqz v2, :cond_f

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/h0/a/t;->Xj()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 3
    iget-boolean v5, v0, Le/a/h0/a/t;->d:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    .line 4
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v9, Le/a/h0/a/t$a;

    invoke-direct {v9, v7, v8}, Le/a/h0/a/t$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 8
    new-instance v10, Le/a/h0/a/t$b;

    invoke-direct {v10, v6}, Le/a/h0/a/t$b;-><init>(Ljava/util/List;)V

    .line 9
    sget-object v11, Le/a/h0/a/v;->h:Le/a/h0/a/v;

    .line 10
    sget-object v11, Le/a/h0/a/v;->g:Ls1/g;

    .line 11
    invoke-interface {v11}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 12
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/h0/a/v;

    .line 13
    sget-object v13, Le/a/h0/a/v$a;->i:Le/a/h0/a/v$a;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 15
    invoke-interface {v9, v12, v13, v1}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_3
    sget-object v13, Le/a/h0/a/v$j;->i:Le/a/h0/a/v$j;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 17
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->u()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 18
    iget-object v14, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v14}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v14

    invoke-interface {v14}, Le/a/u3/b;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v12, v13, v14}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_4
    sget-object v13, Le/a/h0/a/v$i;->i:Le/a/h0/a/v$i;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 20
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->b()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 21
    iget-object v14, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v14}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object v14

    invoke-interface {v14}, Le/a/u3/b;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v12, v13, v14}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_5
    sget-object v13, Le/a/h0/a/v$f;->i:Le/a/h0/a/v$f;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 23
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->x()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 24
    iget-object v14, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v14}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object v14

    invoke-interface {v14}, Le/a/u3/b;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v12, v13, v14}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 25
    :cond_6
    sget-object v13, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    .line 26
    iget-object v14, v13, Le/a/u3/g;->X3:Le/a/u3/g$a;

    sget-object v15, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v16, 0x104

    aget-object v15, v15, v16

    invoke-virtual {v14, v13, v15}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v13

    .line 27
    invoke-interface {v13}, Le/a/u3/b;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 28
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->f()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 29
    iget-object v14, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v14}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object v14

    invoke-interface {v14}, Le/a/u3/b;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v12, v13, v14}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 30
    :cond_7
    sget-object v13, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 31
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->r()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 32
    iget-object v14, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v14}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object v14

    invoke-interface {v14}, Le/a/u3/b;->isEnabled()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v12, v13, v14}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 33
    :cond_8
    sget-object v13, Le/a/h0/a/v$g;->i:Le/a/h0/a/v$g;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v0, Le/a/h0/a/t;->o:Le/a/u3/g;

    invoke-virtual {v13}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v13

    invoke-interface {v13}, Le/a/u3/b;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 34
    iget-object v13, v0, Le/a/h0/a/t;->e:Le/a/h0/m;

    invoke-interface {v13}, Le/a/h0/m;->s()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 35
    invoke-interface {v9, v12, v13, v1}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 36
    :cond_9
    sget-object v13, Le/a/h0/a/v$e;->i:Le/a/h0/a/v$e;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 37
    iget-object v13, v0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {v13}, Le/a/l/p2/v0;->H()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 38
    invoke-interface {v9, v12, v13, v1}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 39
    :cond_a
    sget-object v13, Le/a/h0/a/v$b;->i:Le/a/h0/a/v$b;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 40
    iget-object v13, v0, Le/a/h0/a/t;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v14, "blockCallNotification"

    invoke-interface {v13, v14, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 41
    :cond_b
    sget-object v13, Le/a/h0/a/v$c;->i:Le/a/h0/a/v$c;

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 42
    iget-object v13, v0, Le/a/h0/a/t;->g:Le/a/a/i0;

    invoke-interface {v13}, Le/a/a/i0;->C2()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 43
    :cond_c
    invoke-virtual/range {p0 .. p0}, Le/a/h0/a/t;->Yj()V

    .line 44
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v4

    invoke-interface {v2, v1, v9}, Le/a/h0/a/u;->zh(ZZ)V

    .line 45
    invoke-interface {v2, v6, v7, v8}, Le/a/h0/a/u;->Ee(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 46
    invoke-interface {v2, v5}, Le/a/h0/a/u;->Rl(Z)V

    .line 47
    iget-object v1, v0, Le/a/h0/a/t;->n:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-interface {v2, v1}, Le/a/h0/a/u;->Vl(Z)V

    xor-int/lit8 v1, v3, 0x1

    .line 48
    invoke-interface {v2, v1}, Le/a/h0/a/u;->Dq(Z)V

    .line 49
    iget-object v1, v0, Le/a/h0/a/t;->r:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->q()I

    move-result v1

    const/16 v3, 0x18

    if-lt v1, v3, :cond_d

    move v1, v4

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    .line 50
    :goto_3
    iget-object v3, v0, Le/a/h0/a/t;->r:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->f()Z

    move-result v3

    if-eqz v1, :cond_e

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    .line 51
    :goto_4
    invoke-interface {v2, v4}, Le/a/h0/a/u;->Ca(Z)V

    :cond_f
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/h0/a/t;->l:Le/a/i/s;

    invoke-interface {v0, v1, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    .line 2
    iget-object v0, p0, Le/a/h0/a/t;->c:Le/a/i/f0/m/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/f0/m/d;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/h0/a/t;->c:Le/a/i/f0/m/d;

    .line 4
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public ed(I)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    iget-object v2, p0, Le/a/h0/a/t;->l:Le/a/i/s;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Le/a/i/f0/d;->f(Le/a/i/s;I)Le/a/i/f0/m/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/a/h0/a/t;->k:Le/a/i/f0/d;

    iget-object v3, p0, Le/a/h0/a/t;->l:Le/a/i/s;

    invoke-interface {v2, v3, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    .line 4
    invoke-interface {v0, v1}, Le/a/h0/a/u;->R3(Le/a/i/f0/m/d;)V

    .line 5
    iget-object v0, p0, Le/a/h0/a/t;->c:Le/a/i/f0/m/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/f0/m/d;->destroy()V

    .line 6
    :cond_0
    iput-object v1, p0, Le/a/h0/a/t;->c:Le/a/i/f0/m/d;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/a/t;->h:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2
    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h0/a/u;->Gc()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h0/a/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h0/a/u;->finish()V

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Le/a/h0/a/t;->Zj()V

    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 0

    const-string p2, "ad"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
