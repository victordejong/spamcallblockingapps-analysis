.class public final Le/a/f/z/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/d;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p2/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/g/j/h0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k3/l/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Le/a/g/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/u3/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/p2/i;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/g/j/h0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/k3/l/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/k/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "afterCallScreen"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callingSettings"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "featuresRegistry"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceInfoUtil"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "afterCallPromotionManager"

    invoke-static {p6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "acsVisibilityHelper"

    invoke-static {p7, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "numberProvider"

    invoke-static {p8, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoCallerId"

    invoke-static {p9, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/f/z/e;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/f/z/e;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/f/z/e;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/f/z/e;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Le/a/f/z/e;->f:Ljavax/inject/Provider;

    iput-object p7, p0, Le/a/f/z/e;->g:Ljavax/inject/Provider;

    iput-object p8, p0, Le/a/f/z/e;->h:Ljavax/inject/Provider;

    iput-object p9, p0, Le/a/f/z/e;->i:Ljavax/inject/Provider;

    .line 2
    new-instance p1, Le/a/f/z/e$a;

    invoke-direct {p1, p0}, Le/a/f/z/e$a;-><init>(Le/a/f/z/e;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/f/z/e;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 1
    sget-object p4, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    goto :goto_0

    :cond_0
    move-object p4, p8

    goto :goto_0

    :cond_1
    move-object p4, p7

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_3

    move-object p4, p6

    goto :goto_0

    :cond_3
    move-object p4, p5

    :cond_4
    :goto_0
    return-object p4
.end method

.method public final b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;
    .locals 1

    iget-object v0, p0, Le/a/f/z/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    return-object v0
.end method

.method public c(Lcom/truecaller/data/entity/HistoryEvent;ZZZLs1/w/d;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "ZZZ",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/incallui/utils/FacsBehavior;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Le/a/f/z/e$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/f/z/e$b;

    iget v4, v3, Le/a/f/z/e$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/f/z/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/f/z/e$b;

    invoke-direct {v3, v0, v2}, Le/a/f/z/e$b;-><init>(Le/a/f/z/e;Ls1/w/d;)V

    :goto_0
    move-object v8, v3

    iget-object v2, v8, Le/a/f/z/e$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v8, Le/a/f/z/e$b;->e:I

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v13, :cond_1

    iget v1, v8, Le/a/f/z/e$b;->m:I

    iget v3, v8, Le/a/f/z/e$b;->l:I

    iget v4, v8, Le/a/f/z/e$b;->k:I

    iget-boolean v5, v8, Le/a/f/z/e$b;->j:Z

    iget-boolean v6, v8, Le/a/f/z/e$b;->i:Z

    iget-boolean v7, v8, Le/a/f/z/e$b;->h:Z

    iget-object v8, v8, Le/a/f/z/e$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/f/z/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v15, v1

    move/from16 v19, v6

    move/from16 v18, v7

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/f/z/e;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/g/c;

    invoke-interface {v2}, Le/a/g/c;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    return-object v1

    .line 6
    :cond_3
    iget v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-eq v2, v13, :cond_1c

    if-eq v2, v11, :cond_1c

    .line 7
    iget-object v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v12

    .line 11
    :goto_1
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v13

    goto :goto_2

    :cond_5
    move v4, v12

    .line 13
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v14, v4

    goto :goto_3

    :cond_6
    move v14, v12

    .line 15
    :goto_3
    iget v15, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 16
    iget-object v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    if-ne v4, v13, :cond_7

    move v5, v13

    goto :goto_4

    :cond_7
    move v5, v12

    .line 18
    :goto_4
    iget-object v6, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 19
    iput-object v0, v8, Le/a/f/z/e$b;->g:Ljava/lang/Object;

    move/from16 v1, p2

    iput-boolean v1, v8, Le/a/f/z/e$b;->h:Z

    move/from16 v10, p3

    iput-boolean v10, v8, Le/a/f/z/e$b;->i:Z

    move/from16 v9, p4

    iput-boolean v9, v8, Le/a/f/z/e$b;->j:Z

    iput v2, v8, Le/a/f/z/e$b;->k:I

    iput v14, v8, Le/a/f/z/e$b;->l:I

    iput v15, v8, Le/a/f/z/e$b;->m:I

    iput v13, v8, Le/a/f/z/e$b;->e:I

    .line 20
    iget-object v4, v0, Le/a/f/z/e;->i:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/k/h;

    invoke-interface {v4}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-static/range {v4 .. v10}, Le/a/p5/s0/g;->v1(Le/a/k/c/c2;ZLjava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    return-object v3

    :cond_8
    move/from16 v19, p3

    move/from16 v5, p4

    move-object v8, v0

    move/from16 v18, v1

    move v3, v14

    move-object/from16 v25, v4

    move v4, v2

    move-object/from16 v2, v25

    .line 21
    :goto_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "afterCallForPbContacts"

    if-eqz v5, :cond_12

    if-eqz v4, :cond_9

    move v4, v13

    goto :goto_6

    :cond_9
    move v4, v12

    :goto_6
    if-eqz v3, :cond_a

    move v3, v13

    goto :goto_7

    :cond_a
    move v3, v12

    .line 22
    :goto_7
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 23
    iget-object v3, v8, Le/a/f/z/e;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v3, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v13

    if-eq v15, v11, :cond_b

    move v12, v13

    :cond_b
    and-int/2addr v2, v12

    if-eqz v2, :cond_c

    .line 24
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    goto/16 :goto_e

    .line 25
    :cond_c
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v2

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbIncomingAcceptVideoCallerId()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v2

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v2

    :goto_8
    move-object/from16 v20, v2

    .line 26
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v2

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbMissedVideoCallerId()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    :goto_9
    move-object/from16 v24, v1

    const/16 v19, 0x0

    .line 27
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 28
    sget-object v22, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    .line 29
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedPbOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 30
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto/16 :goto_e

    :cond_f
    if-eqz v3, :cond_10

    const/16 v19, 0x0

    .line 31
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedIdentifiedIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v20

    .line 32
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedIdentifiedIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 33
    sget-object v22, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    .line 34
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedIdentifiedOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    .line 35
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedIdentifiedMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v24

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 36
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto/16 :goto_e

    :cond_10
    if-nez v3, :cond_11

    const/16 v19, 0x0

    .line 37
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedUnresolvedIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v20

    .line 38
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedUnresolvedIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 39
    sget-object v22, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    .line 40
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedUnresolvedOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    .line 41
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getLockedUnresolvedMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v24

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 42
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto/16 :goto_e

    .line 43
    :cond_11
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    goto/16 :goto_e

    :cond_12
    if-eqz v4, :cond_13

    move v4, v13

    goto :goto_a

    :cond_13
    move v4, v12

    :goto_a
    if-eqz v3, :cond_14

    move v3, v13

    goto :goto_b

    :cond_14
    move v3, v12

    .line 44
    :goto_b
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_19

    .line 45
    iget-object v3, v8, Le/a/f/z/e;->c:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v3, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v13

    if-eq v15, v11, :cond_15

    move v12, v13

    :cond_15
    and-int/2addr v2, v12

    if-eqz v2, :cond_16

    .line 46
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    goto/16 :goto_e

    .line 47
    :cond_16
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v2

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbIncomingAcceptVideoCallerId()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v2

    goto :goto_c

    :cond_17
    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v2

    :goto_c
    move-object/from16 v20, v2

    .line 48
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v2

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbMissedVideoCallerId()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    :goto_d
    move-object/from16 v24, v1

    .line 49
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 50
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbIncomingDismissNotification()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v22

    .line 51
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedPbOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 52
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto :goto_e

    :cond_19
    if-eqz v3, :cond_1a

    .line 53
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedIdentifiedIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v20

    .line 54
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedIdentifiedIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 55
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedIdentifiedIncomingDismissNotification()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v22

    .line 56
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedIdentifiedOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    .line 57
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedIdentifiedMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v24

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 58
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto :goto_e

    :cond_1a
    if-nez v3, :cond_1b

    .line 59
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedUnresolvedIncomingAccept()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v20

    .line 60
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedUnresolvedIncomingDismiss()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v21

    .line 61
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedUnresolvedIncomingDismissNotification()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v22

    .line 62
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedUnresolvedOutgoing()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v23

    .line 63
    invoke-virtual {v8}, Le/a/f/z/e;->b()Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;->getUnlockedUnresolvedMissed()Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v24

    move-object/from16 v16, v8

    move/from16 v17, v15

    .line 64
    invoke-virtual/range {v16 .. v24}, Le/a/f/z/e;->a(IZZLcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;)Lcom/truecaller/incallui/utils/FacsBehavior;

    move-result-object v1

    goto :goto_e

    .line 65
    :cond_1b
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    :goto_e
    return-object v1

    .line 66
    :cond_1c
    sget-object v1, Lcom/truecaller/incallui/utils/FacsBehavior;->DO_NOTHING:Lcom/truecaller/incallui/utils/FacsBehavior;

    return-object v1
.end method
