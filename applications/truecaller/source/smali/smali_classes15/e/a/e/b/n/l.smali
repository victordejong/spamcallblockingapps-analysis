.class public final Le/a/e/b/n/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/n/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/n/k;",
        ">;",
        "Le/a/e/b/n/j;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/a/i0;

.field public final h:Le/a/c/b/j;

.field public final i:Le/a/c/i/e/c;

.field public final j:Le/a/c/c0/o;

.field public final k:Le/a/c/e/c;

.field public final l:Le/a/e4/p;

.field public final m:Le/a/q2/a;

.field public final n:Le/a/p5/a0;

.field public final o:Le/a/e/b/g;

.field public final p:Le/a/u3/g;

.field public final q:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Le/a/a/k/a/a/u;

.field public final s:Le/a/b0/e/f;

.field public final t:Le/a/t/a/a/t;

.field public final u:Le/a/b0/o/a;

.field public final v:Le/a/q2/i0;

.field public final w:Le/a/f5/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/p5/g;Le/a/a/i0;Le/a/c/b/j;Le/a/c/i/e/c;Le/a/c/c0/o;Le/a/c/e/c;Le/a/e4/p;Le/a/q2/a;Le/a/p5/a0;Le/a/e/b/g;Le/a/u3/g;Le/a/r2/f;Le/a/a/k/a/a/u;Le/a/b0/e/f;Le/a/t/a/a/t;Le/a/b0/o/a;Le/a/q2/i0;Le/a/f5/a;)V
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
            "Le/a/p5/g;",
            "Le/a/a/i0;",
            "Le/a/c/b/j;",
            "Le/a/c/i/e/c;",
            "Le/a/c/c0/o;",
            "Le/a/c/e/c;",
            "Le/a/e4/p;",
            "Le/a/q2/a;",
            "Le/a/p5/a0;",
            "Le/a/e/b/g;",
            "Le/a/u3/g;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/a/k/a/a/u;",
            "Le/a/b0/e/f;",
            "Le/a/t/a/a/t;",
            "Le/a/b0/o/a;",
            "Le/a/q2/i0;",
            "Le/a/f5/a;",
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

    const-string v0, "deviceInfoUtil"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFeedbackManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsUIPref"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imReportHelper"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tenorHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishManager"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/e/b/n/l;->d:Ls1/w/f;

    iput-object v2, v0, Le/a/e/b/n/l;->e:Ls1/w/f;

    iput-object v3, v0, Le/a/e/b/n/l;->f:Le/a/p5/g;

    iput-object v4, v0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    iput-object v5, v0, Le/a/e/b/n/l;->h:Le/a/c/b/j;

    iput-object v6, v0, Le/a/e/b/n/l;->i:Le/a/c/i/e/c;

    iput-object v7, v0, Le/a/e/b/n/l;->j:Le/a/c/c0/o;

    iput-object v8, v0, Le/a/e/b/n/l;->k:Le/a/c/e/c;

    iput-object v9, v0, Le/a/e/b/n/l;->l:Le/a/e4/p;

    iput-object v10, v0, Le/a/e/b/n/l;->m:Le/a/q2/a;

    iput-object v11, v0, Le/a/e/b/n/l;->n:Le/a/p5/a0;

    iput-object v12, v0, Le/a/e/b/n/l;->o:Le/a/e/b/g;

    iput-object v13, v0, Le/a/e/b/n/l;->p:Le/a/u3/g;

    iput-object v14, v0, Le/a/e/b/n/l;->q:Le/a/r2/f;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/e/b/n/l;->r:Le/a/a/k/a/a/u;

    iput-object v15, v0, Le/a/e/b/n/l;->s:Le/a/b0/e/f;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/e/b/n/l;->t:Le/a/t/a/a/t;

    iput-object v2, v0, Le/a/e/b/n/l;->u:Le/a/b0/o/a;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/e/b/n/l;->v:Le/a/q2/i0;

    iput-object v2, v0, Le/a/e/b/n/l;->w:Le/a/f5/a;

    return-void
.end method


# virtual methods
.method public De()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->q:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    invoke-interface {v0}, Le/a/a/k/a/a/m;->p()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    return-void
.end method

.method public Ec(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->U3(Z)V

    return-void
.end method

.method public F6(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->p4(Z)V

    return-void
.end method

.method public Ih(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/e/b/n/l;->Jj(ZI)V

    return-void
.end method

.method public final Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "type"

    .line 1
    invoke-static {p1, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "name"

    const-string v4, "value"

    move-object v1, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    .line 2
    invoke-static/range {v1 .. v7}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 3
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p3

    invoke-virtual {p3, p1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p3, p2}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p3, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p3}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/a/e/b/n/l;->m:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->C0(Lorg/apache/avro/generic/GenericRecord;Le/a/q2/a;)V

    return-void
.end method

.method public J6(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/e/b/n/l;->Jj(ZI)V

    return-void
.end method

.method public final Jj(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p2, p1}, Le/a/a/i0;->d(IZ)V

    const-string p2, "Setting"

    const-string v0, "context"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/e/b/f;

    invoke-static {p1}, Le/a/e/a2;->e(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SmsDeliveryReport"

    invoke-direct {v0, p2, v1, p1}, Le/a/e/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/e/b/n/l;->m:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Ld(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->J(Z)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoJoinGroupSettingChanged"

    const-string v2, "value"

    invoke-virtual {p0, v1, v2, v0}, Le/a/e/b/n/l;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v4, p0, Le/a/e/b/n/l;->d:Ls1/w/f;

    const/4 v5, 0x0

    new-instance v6, Le/a/e/b/n/l$a;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Le/a/e/b/n/l$a;-><init>(Le/a/e/b/n/l;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public O9()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->f:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/n/k;->x8()V

    :cond_0
    return-void
.end method

.method public Re(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->N2(Z)V

    return-void
.end method

.method public T3(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/e/b/n/l;->i:Le/a/c/i/e/c;

    invoke-interface {p1}, Le/a/c/i/e/c;->i()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/e/b/n/l;->i:Le/a/c/i/e/c;

    invoke-interface {p1}, Le/a/c/i/e/c;->f()V

    :goto_0
    return-void
.end method

.method public Tf(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->v3(Z)V

    return-void
.end method

.method public Y9(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Le/a/c/a/n/d/a;->e:Le/a/c/a/n/d/a;

    .line 2
    sget-object v0, Le/a/c/a/n/d/a;->a:Le/a/c/r/d/b;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Le/a/c/a/n/d/a;->e:Le/a/c/a/n/d/a;

    .line 4
    sget-object v0, Le/a/c/a/n/d/a;->b:Le/a/c/r/d/b;

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/e/b/n/l;->k:Le/a/c/e/c;

    invoke-interface {v1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 6
    iget-object v0, p0, Le/a/e/b/n/l;->u:Le/a/b0/o/a;

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "smart_notifications_disabled"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "settings_screen"

    const-string v1, "context"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Le/a/e/b/f;

    invoke-static {p1}, Le/a/e/a2;->e(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "smartNotifications"

    invoke-direct {v1, v0, v2, p1}, Le/a/e/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/e/b/n/l;->m:Le/a/q2/a;

    invoke-static {v1, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Yf(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Le/a/a/i0;->Z0(IZ)V

    return-void
.end method

.method public ea(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Le/a/c/a/n/d/a;->e:Le/a/c/a/n/d/a;

    .line 2
    sget-object v0, Le/a/c/a/n/d/a;->c:Le/a/c/r/d/b;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Le/a/c/a/n/d/a;->e:Le/a/c/a/n/d/a;

    .line 4
    sget-object v0, Le/a/c/a/n/d/a;->d:Le/a/c/r/d/b;

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/e/b/n/l;->k:Le/a/c/e/c;

    invoke-interface {v1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 6
    iget-object v0, p0, Le/a/e/b/n/l;->j:Le/a/c/c0/o;

    invoke-interface {v0, p1}, Le/a/c/c0/o;->E0(Z)V

    return-void
.end method

.method public ge(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->k3(Z)V

    .line 2
    iget-object v0, p0, Le/a/e/b/n/l;->v:Le/a/q2/i0;

    const-string v1, "settings"

    invoke-interface {v0, p1, v1}, Le/a/q2/i0;->d(ZLjava/lang/String;)V

    return-void
.end method

.method public h5(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/e/b/n/k;->zd(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->d3(Z)V

    if-eqz p1, :cond_1

    const-string p1, "ImGifSettingSwitch"

    const-string v0, "value"

    const-string v1, "on"

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Le/a/e/b/n/l;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k5(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Le/a/c/a/c/i/a;->f:Le/a/c/r/d/b;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/c/a/c/i/a;->g:Le/a/c/r/d/b;

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/e/b/n/l;->k:Le/a/c/e/c;

    invoke-interface {v1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 4
    iget-object v0, p0, Le/a/e/b/n/l;->j:Le/a/c/c0/o;

    invoke-interface {v0, p1}, Le/a/c/c0/o;->q(Z)V

    return-void
.end method

.method public m8(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->k2(Z)V

    .line 2
    iget-object v0, p0, Le/a/e/b/n/l;->r:Le/a/a/k/a/a/u;

    invoke-interface {v0, p1}, Le/a/a/k/a/a/u;->e(Z)V

    return-void
.end method

.method public mf(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Le/a/a/i0;->Z0(IZ)V

    return-void
.end method

.method public oa(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->h4(Z)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->f:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f1206a2

    goto :goto_0

    :cond_0
    const v1, 0x7f12066d

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f08041c

    goto :goto_1

    :cond_1
    const v0, 0x7f0805f1

    .line 2
    :goto_1
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/n/k;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, v0}, Le/a/e/b/n/k;->Os(II)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Le/a/e/c2/i0;

    .line 3
    new-instance v1, Le/a/e/c2/i0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f12062a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4, v2}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    .line 4
    new-instance v1, Le/a/e/c2/i0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f120629

    invoke-direct {v1, v5, v3, v4, v2}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->Q2()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 7
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/n/k;

    if-eqz v3, :cond_3

    invoke-interface {v3, v0, v1}, Le/a/e/b/n/k;->y6(Ljava/util/List;I)V

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/e/b/n/l;->h:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Le/a/e/b/n/k;->ww(Z)V

    .line 10
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_5

    iget-object v1, p0, Le/a/e/b/n/l;->i:Le/a/c/i/e/c;

    invoke-interface {v1}, Le/a/c/i/e/c;->h()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Rx(Z)V

    .line 11
    :cond_5
    iget-object v0, p0, Le/a/e/b/n/l;->o:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_8

    invoke-interface {v0, v5}, Le/a/e/b/n/k;->Oj(Z)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_7

    iget-object v1, p0, Le/a/e/b/n/l;->u:Le/a/b0/o/a;

    const-string v3, "featureSmartNotifications"

    invoke-interface {v1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Oj(Z)V

    .line 14
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_8

    iget-object v1, p0, Le/a/e/b/n/l;->u:Le/a/b0/o/a;

    const-string v3, "smart_notifications_disabled"

    invoke-interface {v1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->ab(Z)V

    .line 15
    :cond_8
    :goto_2
    iget-object v0, p0, Le/a/e/b/n/l;->h:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_9

    invoke-interface {v0, v2}, Le/a/e/b/n/k;->iy(Z)V

    .line 17
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_a

    iget-object v1, p0, Le/a/e/b/n/l;->j:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->k0()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Xu(Z)V

    .line 18
    :cond_a
    iget-object v0, p0, Le/a/e/b/n/l;->h:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_b

    invoke-interface {v0, v2}, Le/a/e/b/n/k;->Z6(Z)V

    .line 20
    :cond_b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_c

    iget-object v1, p0, Le/a/e/b/n/l;->j:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->B0()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->rf(Z)V

    .line 21
    :cond_c
    iget-object v0, p0, Le/a/e/b/n/l;->l:Le/a/e4/p;

    invoke-interface {v0, v5}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    const-string v3, "multiSimManager.getCarri\u2026uration(simInfo.simToken)"

    if-nez v0, :cond_d

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_11

    invoke-interface {v0, v5}, Le/a/e/b/n/k;->a8(Z)V

    goto :goto_4

    .line 23
    :cond_d
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/e/b/n/k;

    if-eqz v4, :cond_e

    invoke-interface {v4, v2}, Le/a/e/b/n/k;->a8(Z)V

    .line 24
    :cond_e
    iget-object v4, p0, Le/a/e/b/n/l;->l:Le/a/e4/p;

    iget-object v0, v0, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/e/b/n/k;

    if-eqz v4, :cond_f

    invoke-interface {v0}, Le/a/e4/i;->d()Z

    move-result v0

    invoke-interface {v4, v0}, Le/a/e/b/n/k;->Cz(Z)V

    .line 26
    :cond_f
    iget-object v0, p0, Le/a/e/b/n/l;->n:Le/a/p5/a0;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Le/a/e/b/n/l;->f:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->B()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v5

    .line 27
    :goto_3
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/e/b/n/k;

    if-eqz v4, :cond_11

    invoke-interface {v4, v0}, Le/a/e/b/n/k;->R6(Z)V

    .line 28
    :cond_11
    :goto_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_12

    iget-object v4, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v4, v5}, Le/a/a/i0;->r1(I)Z

    move-result v4

    invoke-interface {v0, v4}, Le/a/e/b/n/k;->el(Z)V

    .line 29
    :cond_12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_13

    iget-object v4, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v4, v5}, Le/a/a/i0;->H0(I)Z

    move-result v4

    invoke-interface {v0, v4}, Le/a/e/b/n/k;->ht(Z)V

    .line 30
    :cond_13
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_14

    iget-object v4, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v4, v5}, Le/a/a/i0;->B2(I)Z

    move-result v4

    invoke-interface {v0, v4}, Le/a/e/b/n/k;->ib(Z)V

    .line 31
    :cond_14
    iget-object v0, p0, Le/a/e/b/n/l;->l:Le/a/e4/p;

    invoke-interface {v0, v2}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-nez v0, :cond_15

    .line 32
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_19

    invoke-interface {v0, v5}, Le/a/e/b/n/k;->S6(Z)V

    goto :goto_6

    .line 33
    :cond_15
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/e/b/n/k;

    if-eqz v4, :cond_16

    invoke-interface {v4, v2}, Le/a/e/b/n/k;->S6(Z)V

    .line 34
    :cond_16
    iget-object v4, p0, Le/a/e/b/n/l;->l:Le/a/e4/p;

    iget-object v0, v0, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/n/k;

    if-eqz v3, :cond_17

    invoke-interface {v0}, Le/a/e4/i;->d()Z

    move-result v0

    invoke-interface {v3, v0}, Le/a/e/b/n/k;->Q9(Z)V

    .line 36
    :cond_17
    iget-object v0, p0, Le/a/e/b/n/l;->n:Le/a/p5/a0;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Le/a/e/b/n/l;->f:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->B()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_5

    :cond_18
    move v0, v5

    .line 37
    :goto_5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/n/k;

    if-eqz v1, :cond_19

    invoke-interface {v1, v0}, Le/a/e/b/n/k;->qu(Z)V

    .line 38
    :cond_19
    :goto_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1, v2}, Le/a/a/i0;->r1(I)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->nu(Z)V

    .line 39
    :cond_1a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1, v2}, Le/a/a/i0;->H0(I)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Qh(Z)V

    .line 40
    :cond_1b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1, v2}, Le/a/a/i0;->B2(I)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->lv(Z)V

    .line 41
    :cond_1c
    iget-object v0, p0, Le/a/e/b/n/l;->o:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 42
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_23

    invoke-interface {v0, v5}, Le/a/e/b/n/k;->no(Z)V

    goto :goto_7

    .line 43
    :cond_1d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_1e

    invoke-interface {v0, v2}, Le/a/e/b/n/k;->no(Z)V

    .line 44
    :cond_1e
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->b2()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->uz(Z)V

    .line 45
    :cond_1f
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_20

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->k()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Mi(Z)V

    .line 46
    :cond_20
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_21

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->H2()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->hs(Z)V

    .line 47
    :cond_21
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_22

    iget-object v1, p0, Le/a/e/b/n/l;->s:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->wA(Z)V

    .line 48
    :cond_22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_23

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->N3()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->zd(Z)V

    .line 49
    :cond_23
    :goto_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_24

    iget-object v1, p0, Le/a/e/b/n/l;->p:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Zz(Z)V

    .line 50
    :cond_24
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_25

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->m1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->K6(Z)V

    .line 51
    :cond_25
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_26

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->q3()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->jk(Z)V

    .line 52
    :cond_26
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_27

    iget-object v1, p0, Le/a/e/b/n/l;->p:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->zo(Z)V

    .line 53
    :cond_27
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_28

    iget-object v1, p0, Le/a/e/b/n/l;->w:Le/a/f5/a;

    invoke-interface {v1}, Le/a/f5/a;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->wo(Z)V

    .line 54
    :cond_28
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_29

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->P3()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->Ch(Z)V

    .line 55
    :cond_29
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/n/k;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->u1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/n/k;->kg(Z)V

    :cond_2a
    return-void
.end method

.method public s8(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->N3()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/n/k;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/e/b/n/k;->Rr()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/e/b/n/l;->t:Le/a/t/a/a/t;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/t/a/a/t;->d(Z)V

    .line 4
    iget-object p1, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    invoke-interface {p1, v0}, Le/a/a/i0;->d3(Z)V

    const-string p1, "ImGifSettingSwitch"

    const-string v0, "value"

    const-string v1, "off"

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Le/a/e/b/n/l;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public v9(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Le/a/a/i0;->W(IZ)V

    return-void
.end method

.method public wg(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/l;->g:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Le/a/a/i0;->W(IZ)V

    return-void
.end method
