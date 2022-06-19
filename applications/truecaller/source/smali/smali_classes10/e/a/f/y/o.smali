.class public final Le/a/f/y/o;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/y/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/y/k;",
        ">;",
        "Le/a/f/y/i;"
    }
.end annotation


# instance fields
.field public final A:Le/a/o/c;

.field public final B:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final C:Le/a/u3/g;

.field public final D:Ls1/w/f;

.field public final E:Le/a/k/h;

.field public final J:Le/a/f/z/m;

.field public final K:Le/a/k/d;

.field public final L:Le/a/b0/e/l;

.field public final M:Le/a/k3/e;

.field public d:Ljava/lang/Boolean;

.field public e:Lq3/a/i0;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/service/ServiceUIEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/callbubbles/CallBubbleUIEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ls1/g;

.field public final n:Ls1/g;

.field public final o:Le/a/f/y/v;

.field public final p:Le/a/f/y/c;

.field public final q:Le/a/f/z/k;

.field public final r:Le/a/p5/c0;

.field public final s:Le/a/f/z/m0/a;

.field public final t:Le/a/f3/c;

.field public final u:Le/a/f/z/f0;

.field public final v:Le/a/p5/c;

.field public final w:Le/a/f/w/c;

.field public final x:Le/a/f/z/l0;

.field public final y:Le/a/p5/g;

.field public final z:Le/a/f/z/d;


# direct methods
.method public constructor <init>(Le/a/f/y/v;Le/a/f/y/c;Le/a/f/z/k;Le/a/p5/c0;Le/a/f/z/m0/a;Le/a/f3/c;Le/a/f/z/f0;Le/a/p5/c;Le/a/f/w/c;Le/a/f/z/l0;Le/a/p5/g;Le/a/f/z/d;Le/a/o/c;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/u3/g;Ls1/w/f;Le/a/k/h;Le/a/f/z/m;Le/a/k/d;Le/a/b0/e/l;Le/a/k3/e;)V
    .locals 16
    .param p15    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .param p16    # Ls1/w/f;
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

    move-object/from16 v0, p16

    const-string v0, "ongoingCallHelper"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoProvider"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBubbles"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationUtil"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proximitySensorHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerLabelFactory"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessVideoCallerIDAnalytics"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEventFactory"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 1
    invoke-direct {v0, v15}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/f/y/o;->o:Le/a/f/y/v;

    iput-object v2, v0, Le/a/f/y/o;->p:Le/a/f/y/c;

    iput-object v3, v0, Le/a/f/y/o;->q:Le/a/f/z/k;

    iput-object v4, v0, Le/a/f/y/o;->r:Le/a/p5/c0;

    iput-object v5, v0, Le/a/f/y/o;->s:Le/a/f/z/m0/a;

    iput-object v6, v0, Le/a/f/y/o;->t:Le/a/f3/c;

    iput-object v7, v0, Le/a/f/y/o;->u:Le/a/f/z/f0;

    iput-object v8, v0, Le/a/f/y/o;->v:Le/a/p5/c;

    iput-object v9, v0, Le/a/f/y/o;->w:Le/a/f/w/c;

    iput-object v10, v0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    iput-object v11, v0, Le/a/f/y/o;->y:Le/a/p5/g;

    iput-object v12, v0, Le/a/f/y/o;->z:Le/a/f/z/d;

    iput-object v13, v0, Le/a/f/y/o;->A:Le/a/o/c;

    iput-object v14, v0, Le/a/f/y/o;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/f/y/o;->C:Le/a/u3/g;

    iput-object v15, v0, Le/a/f/y/o;->D:Ls1/w/f;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/f/y/o;->E:Le/a/k/h;

    iput-object v2, v0, Le/a/f/y/o;->J:Le/a/f/z/m;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/f/y/o;->K:Le/a/k/d;

    iput-object v2, v0, Le/a/f/y/o;->L:Le/a/b0/e/l;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/f/y/o;->M:Le/a/k3/e;

    .line 2
    new-instance v1, Le/a/f/y/r;

    invoke-direct {v1, v0}, Le/a/f/y/r;-><init>(Le/a/f/y/o;)V

    .line 3
    iput-object v1, v0, Le/a/f/y/o;->e:Lq3/a/i0;

    const-string v1, ""

    .line 4
    iput-object v1, v0, Le/a/f/y/o;->f:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Le/a/f/y/o;->h:Z

    const/16 v2, 0xa

    .line 6
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v3

    iput-object v3, v0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    .line 7
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v2

    iput-object v2, v0, Le/a/f/y/o;->l:Lq3/a/w2/h;

    .line 8
    new-instance v2, Le2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Le2;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v2

    iput-object v2, v0, Le/a/f/y/o;->m:Ls1/g;

    .line 9
    new-instance v2, Le2;

    invoke-direct {v2, v1, v0}, Le2;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/f/y/o;->n:Ls1/g;

    return-void
.end method

.method public static final Ij(Le/a/f/y/o;Le/a/f/a/g;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2
    new-instance v17, Le/a/f/z/k0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3fff

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    goto :goto_2

    .line 3
    :cond_0
    new-instance v17, Le/a/f/z/k0;

    .line 4
    iget-object v2, v1, Le/a/f/a/g;->c:Ljava/lang/String;

    .line 5
    iget-object v3, v1, Le/a/f/a/g;->e:Ljava/lang/String;

    const/16 v21, 0x0

    .line 6
    iget-object v4, v1, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 7
    invoke-static {v4}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 8
    iget-boolean v4, v1, Le/a/f/a/g;->k:Z

    if-nez v4, :cond_2

    .line 9
    iget-object v4, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move/from16 v23, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 10
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v26

    .line 11
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v27

    .line 12
    iget-boolean v4, v1, Le/a/f/a/g;->t:Z

    const/16 v29, 0x0

    .line 13
    iget-boolean v5, v1, Le/a/f/a/g;->u:Z

    .line 14
    iget-boolean v1, v1, Le/a/f/a/g;->r:Z

    const/16 v32, 0x0

    const/16 v33, 0x2464

    move-object/from16 v18, v17

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v28, v4

    move/from16 v30, v5

    move/from16 v31, v1

    .line 15
    invoke-direct/range {v18 .. v33}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    move-object/from16 v1, v17

    .line 16
    :goto_2
    invoke-static {v1}, Le/a/m0/a1$k;->R0(Le/a/f/z/k0;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 17
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/y/k;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Le/a/f/y/k;->t(Le/a/f/z/k0;)V

    .line 18
    :cond_3
    iget-object v0, v0, Le/a/f/y/o;->t:Le/a/f3/c;

    invoke-static {v1}, Le/a/m0/a1$k;->R0(Le/a/f/z/k0;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    check-cast v0, Le/a/f3/o;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "config"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v0

    new-instance v2, Le/a/f3/s;

    invoke-direct {v2, v1}, Le/a/f3/s;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    invoke-interface {v0, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final Jj(Le/a/f/y/o;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/f/y/o;->r:Le/a/p5/c0;

    sget v0, Lcom/truecaller/incallui/R$string;->incallui_conference_call:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026incallui_conference_call)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/f/y/k;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Le/a/f/y/k;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/f/y/k;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Le/a/f/y/k;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/a/f/y/o;->Rj()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic Vj(Le/a/f/y/o;ZZI)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/f/y/o;->Uj(ZZ)V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->o()V

    :cond_0
    return-void
.end method

.method public B0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/f/y/o;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public E()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->E()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public H0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/f/y/o;->h:Z

    .line 2
    iput-boolean v0, p0, Le/a/f/y/o;->j:Z

    .line 3
    invoke-virtual {p0}, Le/a/f/y/o;->Wj()V

    .line 4
    invoke-virtual {p0}, Le/a/f/y/o;->Nj()V

    return-void
.end method

.method public H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls1/f0/w;->j0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    return-void
.end method

.method public J1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final Kj()Le/a/k0/h;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->getState()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/k0/h;

    .line 2
    iget-object v1, p0, Le/a/f/y/o;->m:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    check-cast v0, Le/a/k0/h;

    return-object v0
.end method

.method public final Lj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->w:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/f/y/o$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/f/y/o$b;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    invoke-static {p0, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    return-void
.end method

.method public final Mj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->n:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->n()V

    :cond_0
    return-void
.end method

.method public N1()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final Nj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/incallui/service/CallState;

    .line 2
    invoke-virtual {p0}, Le/a/f/y/o;->s()Lq3/a/w2/r;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/z/n0/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    iget-boolean v3, p0, Le/a/f/y/o;->h:Z

    iget-boolean v4, p0, Le/a/f/y/o;->i:Z

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "callState"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "audioRoute"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v5, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->EARPIECE:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object v0, v2, Le/a/f/z/l0;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final Oj()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/f/y/o;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/f/y/o;->s()Lq3/a/w2/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/f/y/o;->e:Lq3/a/i0;

    new-instance v2, Le/a/f/y/o$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le/a/f/y/o$c;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    invoke-static {v1, v0, v2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/f/y/o;->g:Z

    :cond_1
    return-void
.end method

.method public P1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->l()V

    :cond_0
    return-void
.end method

.method public final Pj(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/f/y/o$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/f/y/o$e;

    iget v1, v0, Le/a/f/y/o$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/y/o$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/y/o$e;

    invoke-direct {v0, p0, p1}, Le/a/f/y/o$e;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/f/y/o$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/y/o$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/f/y/o$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/o;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/f/y/o;->Oj()V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_3

    .line 6
    sget v2, Lcom/truecaller/incallui/R$string;->incallui_notification_outgoing_content:I

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p0}, Le/a/f/y/o;->Kj()Le/a/k0/h;

    move-result-object v5

    .line 8
    invoke-interface {p1, v2, v4, v5}, Le/a/f/y/k;->v(ILjava/lang/Long;Le/a/k0/h;)V

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    sget-object v2, Lcom/truecaller/incallui/service/ServiceUIEvent;->ONGOING_NOTIFICATION_SHOWN:Lcom/truecaller/incallui/service/ServiceUIEvent;

    invoke-interface {p1, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Le/a/f/y/o;->Mj()V

    .line 11
    iget-object p1, p0, Le/a/f/y/o;->A:Le/a/o/c;

    iget-object v2, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/truecaller/contextcall/utils/SecondCallContext$Context;->IN_CALL_UI:Lcom/truecaller/contextcall/utils/SecondCallContext$Context;

    iput-object p0, v0, Le/a/f/y/o$e;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/f/y/o$e;->e:I

    invoke-interface {p1, v2, v4, v0}, Le/a/o/c;->B(Ljava/lang/String;Lcom/truecaller/contextcall/utils/SecondCallContext$Context;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 12
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    iput-object p1, v0, Le/a/f/y/o;->d:Ljava/lang/Boolean;

    .line 14
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/f/y/k;->x()V

    .line 15
    :cond_5
    invoke-virtual {v0}, Le/a/f/y/o;->Lj()V

    .line 16
    invoke-virtual {v0}, Le/a/f/y/o;->Xj()V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Qj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->e:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {v0, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lq3/a/p1;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v0, Le/a/f/y/r;

    invoke-direct {v0, p0}, Le/a/f/y/r;-><init>(Le/a/f/y/o;)V

    .line 5
    iput-object v0, p0, Le/a/f/y/o;->e:Lq3/a/i0;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/a/f/y/o;->g:Z

    return-void
.end method

.method public final Rj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/f/y/o;->r:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_conference_call:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026incallui_conference_call)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/f/y/k;->h(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/y/k;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Le/a/f/y/k;->h(Ljava/lang/String;)V

    sget-object v0, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, Le/a/f/y/o;->r:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_unknown_caller:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026.incallui_unknown_caller)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/y/k;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/f/y/k;->h(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public S1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/f/y/k;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Sj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/f/y/o$f;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/f/y/o$f;

    iget v2, v1, Le/a/f/y/o$f;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/y/o$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/y/o$f;

    invoke-direct {v1, p0, p2}, Le/a/f/y/o$f;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/f/y/o$f;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/y/o$f;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/f/y/o$f;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/o;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    .line 4
    invoke-static {p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 5
    iget-boolean p2, p1, Le/a/f/a/g;->q:Z

    if-eqz p2, :cond_3

    goto :goto_4

    .line 6
    :cond_3
    iget-object p2, p0, Le/a/f/y/o;->J:Le/a/f/z/m;

    .line 7
    sget v3, Lcom/truecaller/incallui/R$string;->incallui_notification_caller_label_spam_call_score:I

    .line 8
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    iput-object p0, v1, Le/a/f/y/o$f;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/f/y/o$f;->e:I

    .line 10
    check-cast p2, Le/a/f/z/n;

    invoke-virtual {p2, p1, v5, v4, v1}, Le/a/f/z/n;->b(Le/a/f/a/g;Ljava/lang/Integer;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, p0

    .line 11
    :goto_1
    check-cast p2, Le/a/f/z/a;

    if-nez p2, :cond_5

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/f/y/k;->p()V

    goto :goto_3

    .line 13
    :cond_5
    instance-of v1, p2, Le/a/f/z/a$b;

    if-eqz v1, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    instance-of v1, p2, Le/a/f/z/a$d;

    if-eqz v1, :cond_7

    :goto_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_8

    invoke-interface {p1, p2}, Le/a/f/y/k;->D(Le/a/f/z/a;)V

    goto :goto_3

    .line 15
    :cond_7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/f/y/k;->p()V

    :cond_8
    :goto_3
    return-object v0

    .line 16
    :cond_9
    :goto_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/f/y/k;->p()V

    :cond_a
    return-object v0
.end method

.method public final Tj(Lcom/truecaller/incallui/utils/BlockAction;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final Uj(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/f/y/k;->j(Z)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    sget-object v0, Lcom/truecaller/incallui/service/ServiceUIEvent;->INCOMING_NOTIFICATION_SHOWN:Lcom/truecaller/incallui/service/ServiceUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/f/y/o;->Lj()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/f/y/o;->Xj()V

    return-void
.end method

.method public final Wj()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/incallui/service/CallState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 2
    :cond_1
    sget-object v0, Le/a/f3/y/a$b;->d:Le/a/f3/y/a$b;

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Le/a/f/y/o;->v:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v4

    iget-object v0, p0, Le/a/f/y/o;->v:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    .line 5
    :goto_1
    new-instance v0, Le/a/f3/y/a$c;

    invoke-direct {v0, v4, v5}, Le/a/f3/y/a$c;-><init>(J)V

    goto :goto_2

    .line 6
    :cond_4
    sget-object v0, Le/a/f3/y/a$a;->d:Le/a/f3/y/a$a;

    :goto_2
    if-eqz v0, :cond_5

    .line 7
    iget-object v2, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    check-cast v2, Le/a/f3/o;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v2

    new-instance v3, Le/a/f3/t;

    invoke-direct {v3, v0}, Le/a/f3/t;-><init>(Le/a/f3/y/a;)V

    invoke-interface {v2, v3}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 10
    :cond_5
    iget-boolean v2, p0, Le/a/f/y/o;->j:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Le/a/f/y/o;->l:Lq3/a/w2/h;

    sget-object v2, Lcom/truecaller/callbubbles/CallBubbleUIEvent;->VIEW_VISITED:Lcom/truecaller/callbubbles/CallBubbleUIEvent;

    invoke-interface {v0, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    check-cast v0, Le/a/f3/o;

    .line 13
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v2

    sget-object v3, Le/a/f3/u;->b:Le/a/f3/u;

    invoke-interface {v2, v3}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 14
    iget-boolean v2, v0, Le/a/f3/o;->b:Z

    if-eqz v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v3, v0, Le/a/f3/o;->e:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/f3/r;

    invoke-direct {v5, v0, v1}, Le/a/f3/r;-><init>(Le/a/f3/o;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Le/a/f3/o;->b:Z

    goto :goto_3

    .line 17
    :cond_7
    iget-object v0, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    check-cast v0, Le/a/f3/o;

    .line 18
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v0

    sget-object v1, Le/a/f3/q;->b:Le/a/f3/q;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public final Xj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->o:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/n0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Le/a/f/y/o;->Yj(Le/a/f/z/n0/a;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/f/y/k;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    const-string v1, "inCallUIServicePresenter"

    invoke-interface {v0, v1, p0}, Le/a/f/y/c;->p(Ljava/lang/String;Le/a/f/y/b;)V

    .line 5
    iget-object v0, p0, Le/a/f/y/o;->o:Le/a/f/y/v;

    invoke-interface {v0, p0}, Le/a/f/y/v;->b(Le/a/f/y/j;)V

    .line 6
    iget-object v0, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    new-instance v1, Le/a/f/y/s;

    invoke-direct {v1, p0}, Le/a/f/y/s;-><init>(Le/a/f/y/o;)V

    invoke-interface {p1, v0, v1}, Le/a/f/y/k;->z(Le/a/f3/c;Ls1/z/b/a;)V

    .line 7
    iget-object p1, p0, Le/a/f/y/o;->s:Le/a/f/z/m0/a;

    invoke-interface {p1}, Le/a/f/z/m0/a;->a()V

    .line 8
    iget-object p1, p0, Le/a/f/y/o;->s:Le/a/f/z/m0/a;

    iget-object v0, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    invoke-interface {p1, v0}, Le/a/f/z/m0/a;->d(Lq3/a/w2/h;)V

    .line 9
    iget-object p1, p0, Le/a/f/y/o;->s:Le/a/f/z/m0/a;

    iget-object v0, p0, Le/a/f/y/o;->l:Lq3/a/w2/h;

    invoke-interface {p1, v0}, Le/a/f/z/m0/a;->e(Lq3/a/w2/h;)V

    .line 10
    iget-object p1, p0, Le/a/f/y/o;->m:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/y/k;->k()V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    new-instance v3, Le/a/f/y/q;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/f/y/q;-><init>(Le/a/f/y/o;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method

.method public final Yj(Le/a/f/z/n0/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Le/a/f/z/n0/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/y/k;->g()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/y/k;->e()V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 5
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->SPEAKER:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/y/k;->c()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/y/k;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public Z7(Le/a/f/z/d0;)V
    .locals 7

    const-string v0, "inCallUiAcsData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/f/y/o$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/f/y/o$a;-><init>(Le/a/f/y/o;Le/a/f/z/d0;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->w()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    invoke-virtual {v0}, Le/a/f/z/l0;->a()V

    .line 3
    iget-object v0, p0, Le/a/f/y/o;->o:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->a()V

    .line 4
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    const-string v1, "inCallUIServicePresenter"

    invoke-interface {v0, v1, p0}, Le/a/f/y/c;->b(Ljava/lang/String;Le/a/f/y/b;)V

    .line 5
    iget-object v0, p0, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->release()V

    .line 6
    iget-object v0, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    check-cast v0, Le/a/f3/o;

    .line 7
    iget-boolean v1, v0, Le/a/f3/o;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v1

    new-instance v4, Le/a/f3/p;

    invoke-direct {v4, v0}, Le/a/f3/p;-><init>(Le/a/f3/o;)V

    invoke-interface {v1, v4}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Le/a/f3/o;->getCoroutineContext()Ls1/w/f;

    move-result-object v1

    invoke-static {v1, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v0

    invoke-static {v0, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Le/a/f/y/o;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->l(Z)V

    .line 12
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 13
    iget-object v0, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    sget-object v1, Lcom/truecaller/incallui/service/ServiceUIEvent;->NOTIFICATION_GONE:Lcom/truecaller/incallui/service/ServiceUIEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    invoke-static {v0, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public i0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/y/k;->d()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/y/k;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->i()V

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/f/y/o;->i:Z

    .line 2
    iget-object v0, p0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    invoke-virtual {v0}, Le/a/f/z/l0;->a()V

    return-void
.end method

.method public o1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/f/y/o;->h:Z

    .line 2
    iput-boolean v0, p0, Le/a/f/y/o;->j:Z

    .line 3
    invoke-virtual {p0}, Le/a/f/y/o;->Wj()V

    .line 4
    iget-object v0, p0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    invoke-virtual {v0}, Le/a/f/z/l0;->a()V

    return-void
.end method

.method public od()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/a/f/y/o;->Qj()V

    .line 3
    iget-object v0, p0, Le/a/f/y/o;->x:Le/a/f/z/l0;

    invoke-virtual {v0}, Le/a/f/z/l0;->a()V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->i()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/f/y/o;->k:Lq3/a/w2/h;

    sget-object v1, Lcom/truecaller/incallui/service/ServiceUIEvent;->NOTIFICATION_GONE:Lcom/truecaller/incallui/service/ServiceUIEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/a/f/y/o;->j:Z

    .line 7
    iget-object v0, p0, Le/a/f/y/o;->t:Le/a/f3/c;

    check-cast v0, Le/a/f3/o;

    .line 8
    invoke-virtual {v0}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v0

    sget-object v1, Le/a/f3/q;->b:Le/a/f3/q;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/y/k;->w()V

    :cond_1
    return-void
.end method

.method public p0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/f/y/o;->i:Z

    .line 2
    invoke-virtual {p0}, Le/a/f/y/o;->Nj()V

    return-void
.end method

.method public s()Lq3/a/w2/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/r<",
            "Le/a/f/z/n0/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->s()Lq3/a/w2/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public sc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public t1(C)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/f/y/o;->f:Ljava/lang/String;

    .line 2
    new-instance v4, Le/a/f/y/o$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/f/y/o$d;-><init>(Le/a/f/y/o;CLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public zj(Le/a/f/y/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/y/k;->i()V

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/f/y/a$f;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/f/y/a$f;

    .line 3
    iget-object p1, p1, Le/a/f/y/a$f;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/f/y/k;->A(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Le/a/f/y/a$b;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/f/y/a$b;

    .line 6
    iget-object p1, p1, Le/a/f/y/a$b;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/f/y/k;->A(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
