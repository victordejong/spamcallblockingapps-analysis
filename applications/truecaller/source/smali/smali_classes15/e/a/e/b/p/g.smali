.class public final Le/a/e/b/p/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/p/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/p/f;",
        ">;",
        "Le/a/e/b/p/e;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/p5/g;

.field public final h:Le/a/h5/m;

.field public final i:Le/a/q2/a;

.field public final j:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final k:Le/a/h5/w;

.field public final l:Le/a/u3/g;

.field public final m:Le/a/c0/h;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/a0;Le/a/p5/g;Le/a/h5/m;Le/a/q2/a;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/h5/w;Le/a/u3/g;Le/a/c0/h;)V
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

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/b/p/g;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/e/b/p/g;->f:Le/a/p5/a0;

    iput-object p3, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    iput-object p4, p0, Le/a/e/b/p/g;->h:Le/a/h5/m;

    iput-object p5, p0, Le/a/e/b/p/g;->i:Le/a/q2/a;

    iput-object p6, p0, Le/a/e/b/p/g;->j:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p7, p0, Le/a/e/b/p/g;->k:Le/a/h5/w;

    iput-object p8, p0, Le/a/e/b/p/g;->l:Le/a/u3/g;

    iput-object p9, p0, Le/a/e/b/p/g;->m:Le/a/c0/h;

    .line 2
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    iput-object p1, p0, Le/a/e/b/p/g;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public Ah()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/p/g;->k:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/e/b/p/f;->Tv(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public B8()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/p/g;->k:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->l()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/e/b/p/f;->Tv(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public H3()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/f;->T8()V

    :cond_0
    return-void
.end method

.method public final Ij(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Context"

    const-string v2, "settings_screen"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Permission"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "State"

    const-string v1, "Asked"

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/e/b/p/g;->i:Le/a/q2/a;

    .line 6
    new-instance v1, Le/a/q2/g$b$a;

    const/4 v2, 0x0

    const-string v3, "PermissionChanged"

    invoke-direct {v1, v3, v2, v0, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v0, "event.build()"

    .line 7
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public Jg(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Le/a/e/b/p/g;->d:Ljava/util/Set;

    .line 2
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/p/f;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/e/b/p/f;->setTitle(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/e/b/p/g;->Jj()V

    return-void
.end method

.method public final Jj()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-le v0, v3, :cond_0

    iget-object v0, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->r()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Le/a/e/b/p/g;->l:Le/a/u3/g;

    .line 3
    iget-object v4, v3, Le/a/u3/g;->h6:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x179

    aget-object v5, v5, v6

    invoke-virtual {v4, v3, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    iget-object v3, p0, Le/a/e/b/p/g;->m:Le/a/c0/h;

    .line 6
    iget-object v3, v3, Le/a/c0/h;->j:Le/a/c0/c;

    .line 7
    invoke-virtual {v3}, Le/a/c0/c;->f()Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/truecaller/abtest/TwoVariants;

    if-nez v3, :cond_1

    .line 8
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;->DEFAULT:Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v2, :cond_2

    .line 10
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;->VARIANT_A:Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 12
    :cond_3
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;->VARIANT_B:Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;

    goto :goto_1

    .line 13
    :cond_4
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;->DEFAULT:Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;

    .line 14
    :goto_1
    iget-object v4, p0, Le/a/e/b/p/g;->d:Ljava/util/Set;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    .line 17
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 18
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 19
    :pswitch_0
    iget-object v7, p0, Le/a/e/b/p/g;->f:Le/a/p5/a0;

    const-string v8, "android.permission.RECORD_AUDIO"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 20
    :pswitch_1
    iget-object v7, p0, Le/a/e/b/p/g;->f:Le/a/p5/a0;

    invoke-interface {v7}, Le/a/p5/a0;->c()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 21
    :pswitch_2
    iget-object v7, p0, Le/a/e/b/p/g;->j:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v7}, Le/a/k0/a/e;->f()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Le/a/e/b/p/g;->j:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v7}, Le/a/k0/a/e;->d()Z

    move-result v7

    if-nez v7, :cond_6

    :goto_3
    :pswitch_3
    move v7, v2

    goto :goto_4

    .line 22
    :pswitch_4
    iget-object v7, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->t()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->f()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 23
    :pswitch_5
    iget-object v7, p0, Le/a/e/b/p/g;->g:Le/a/p5/g;

    invoke-interface {v7}, Le/a/p5/g;->z()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :pswitch_6
    if-nez v0, :cond_6

    .line 24
    iget-object v7, p0, Le/a/e/b/p/g;->f:Le/a/p5/a0;

    invoke-interface {v7}, Le/a/p5/a0;->k()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move v7, v1

    goto :goto_4

    :pswitch_7
    move v7, v0

    :goto_4
    if-eqz v7, :cond_5

    .line 25
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 27
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/p/f;

    if-eqz v1, :cond_8

    invoke-interface {v1, v3, v0}, Le/a/e/b/p/f;->Tu(Lcom/truecaller/ui/settings/troubleshoot/CallerIdState;Ljava/util/Set;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Tc()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/f;->Dm()V

    :cond_0
    return-void
.end method

.method public V3()V
    .locals 0

    return-void
.end method

.method public dj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/f;->ri()V

    :cond_0
    const-string v0, "DrawOnTop"

    .line 2
    invoke-virtual {p0, v0}, Le/a/e/b/p/g;->Ij(Ljava/lang/String;)V

    return-void
.end method

.method public ej()V
    .locals 6

    .line 1
    new-instance v3, Le/a/e/b/p/g$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/e/b/p/g$a;-><init>(Le/a/e/b/p/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string v0, "CallerIdApp"

    .line 2
    invoke-virtual {p0, v0}, Le/a/e/b/p/g;->Ij(Ljava/lang/String;)V

    return-void
.end method

.method public i5()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/f;->jj()V

    :cond_0
    return-void
.end method

.method public nj()V
    .locals 6

    .line 1
    new-instance v3, Le/a/e/b/p/g$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/e/b/p/g$b;-><init>(Le/a/e/b/p/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string v0, "DialerApp"

    .line 2
    invoke-virtual {p0, v0}, Le/a/e/b/p/g;->Ij(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/e/b/p/g;->Jj()V

    return-void
.end method

.method public z2()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/p/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/p/f;->Bq()V

    :cond_0
    const-string v0, "BatteryOptimization"

    .line 2
    invoke-virtual {p0, v0}, Le/a/e/b/p/g;->Ij(Ljava/lang/String;)V

    return-void
.end method
