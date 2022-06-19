.class public final Le/a/d/b/a/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/b/a/g;",
        ">;",
        "Le/a/d/b/a/f;"
    }
.end annotation


# instance fields
.field public final A:Le/a/d/c0/o;

.field public final B:Le/a/p5/c0;

.field public final C:Le/a/d/c0/x1/e;

.field public final D:Le/a/d/x/r/n;

.field public final E:Le/a/d/c0/f0;

.field public final J:Le/a/d/c0/m1;

.field public final K:Le/a/d/c0/g1;

.field public final L:Le/a/d/c0/u1;

.field public final M:Le/a/d/c0/a2/a;

.field public final N:Le/a/d/c0/y1/b;

.field public d:Le/a/d/b/a/e;

.field public e:Ljava/lang/String;

.field public f:Lcom/truecaller/voip/VoipUser;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Le/a/d/l;

.field public j:Le/a/d/x/p;

.field public k:Z

.field public l:J

.field public final m:Ls1/g;

.field public n:Lq3/a/p1;

.field public o:Ljava/lang/String;

.field public final p:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/VoipUser;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Le/a/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lq3/a/w2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/r<",
            "Le/a/d/x/p;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ls1/w/f;

.field public final u:Le/a/d/x/l;

.field public final v:Le/a/d/x/r/o;

.field public final w:Le/a/d/c0/j1;

.field public final x:Le/a/d/c0/q1;

.field public final y:Le/a/p5/c;

.field public final z:Le/a/d/c0/t;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/x/l;Le/a/d/x/r/o;Le/a/d/c0/j1;Le/a/d/c0/q1;Le/a/p5/c;Le/a/d/c0/t;Le/a/d/c0/o;Le/a/p5/c0;Le/a/d/c0/x1/e;Le/a/d/x/r/n;Le/a/d/c0/f0;Le/a/d/c0/m1;Le/a/d/c0/g1;Le/a/d/c0/u1;Le/a/d/c0/a2/a;Le/a/d/c0/y1/b;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p8    # Le/a/d/c0/o;
        .annotation runtime Ljavax/inject/Named;
            value = "LegacyHapticFeedbackUtil"
        .end annotation
    .end param
    .param p10    # Le/a/d/c0/x1/e;
        .annotation runtime Ljavax/inject/Named;
            value = "LegacyAudioUtil"
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

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUserResolver"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeCallStateModel"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hapticFeedbackUtil"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmLoginManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipTelecomUtil"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakeUpPushManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDomainResolver"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAvailabilityUtil"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/d/b/a/b;->t:Ls1/w/f;

    iput-object v2, v0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    iput-object v3, v0, Le/a/d/b/a/b;->v:Le/a/d/x/r/o;

    iput-object v4, v0, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    iput-object v5, v0, Le/a/d/b/a/b;->x:Le/a/d/c0/q1;

    iput-object v6, v0, Le/a/d/b/a/b;->y:Le/a/p5/c;

    iput-object v7, v0, Le/a/d/b/a/b;->z:Le/a/d/c0/t;

    iput-object v8, v0, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    iput-object v9, v0, Le/a/d/b/a/b;->B:Le/a/p5/c0;

    iput-object v10, v0, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    iput-object v11, v0, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    iput-object v12, v0, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    iput-object v13, v0, Le/a/d/b/a/b;->J:Le/a/d/c0/m1;

    iput-object v14, v0, Le/a/d/b/a/b;->K:Le/a/d/c0/g1;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/d/b/a/b;->L:Le/a/d/c0/u1;

    iput-object v15, v0, Le/a/d/b/a/b;->M:Le/a/d/c0/a2/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/d/b/a/b;->N:Le/a/d/c0/y1/b;

    .line 2
    new-instance v1, Le/a/d/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    invoke-direct/range {p1 .. p10}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    iput-object v1, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 3
    new-instance v1, Le/a/d/x/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p6, v6

    move/from16 p7, v7

    invoke-direct/range {p1 .. p7}, Le/a/d/x/p;-><init>(ZZZZLe/a/d/c0/x1/b;I)V

    iput-object v1, v0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 4
    new-instance v1, Le/a/d/b/a/b$d;

    invoke-direct {v1, v0}, Le/a/d/b/a/b$d;-><init>(Le/a/d/b/a/b;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/d/b/a/b;->m:Ls1/g;

    const/4 v1, -0x1

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v2

    iput-object v2, v0, Le/a/d/b/a/b;->p:Lq3/a/w2/h;

    .line 6
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v2

    iput-object v2, v0, Le/a/d/b/a/b;->q:Lq3/a/w2/h;

    .line 7
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v1

    iput-object v1, v0, Le/a/d/b/a/b;->r:Lq3/a/w2/h;

    .line 8
    new-instance v1, Lq3/a/w2/r;

    new-instance v2, Le/a/d/x/p;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    invoke-direct/range {p1 .. p7}, Le/a/d/x/p;-><init>(ZZZZLe/a/d/c0/x1/b;I)V

    invoke-direct {v1, v2}, Lq3/a/w2/r;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    return-void
.end method

.method public static final synthetic Ij(Le/a/d/b/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "channelId"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic Jj(Le/a/d/b/a/b;)Lcom/truecaller/voip/VoipUser;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "voipUser"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final Kj(Le/a/d/b/a/b;Lcom/truecaller/voip/ConnectionState;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 2
    iget-object v1, v0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/truecaller/voip/VoipStateReason;->CONNECTION_STATE_CHANGED:Lcom/truecaller/voip/VoipStateReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf9

    move-object v3, p1

    invoke-static/range {v0 .. v9}, Le/a/d/l;->a(Le/a/d/l;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)Le/a/d/l;

    move-result-object v0

    iput-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/d/b/a/b;->Mj()Lq3/a/p1;

    .line 6
    :goto_0
    iget-object p1, p0, Le/a/d/b/a/b;->q:Lq3/a/w2/h;

    .line 7
    iget-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Le/a/d/b/a/b;->bk()V

    :goto_1
    return-void
.end method

.method public static final Lj(Le/a/d/b/a/b;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 2
    iget-boolean v1, v0, Le/a/d/x/p;->c:Z

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1b

    move v3, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object v0

    iput-object v0, p0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 4
    iget-object v0, p0, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    invoke-interface {v0}, Le/a/d/c0/o;->d()V

    .line 5
    invoke-virtual {p0}, Le/a/d/b/a/b;->bk()V

    .line 6
    iget-object p0, p0, Le/a/d/b/a/b;->r:Lq3/a/w2/h;

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static synthetic hk(Le/a/d/b/a/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-void
.end method


# virtual methods
.method public final Mj()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/a/b$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/b/a/b$c;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Nj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/b/a/b;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "voipUser"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/d/b/a/b;->h:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final Oj()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->B:Le/a/p5/c0;

    .line 2
    sget v1, Lcom/truecaller/voip/R$string;->voip_truecaller_audio_call:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    sget v3, Lcom/truecaller/voip/R$string;->voip_text:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 4
    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ring.voip_text)\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final Pj()Le/a/d/x/p;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 2
    invoke-virtual {v0}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/p;

    return-object v0
.end method

.method public final Qj()Le/a/d/l;
    .locals 11

    .line 1
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Le/a/d/x/p;->c:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 4
    iget-boolean v1, v0, Le/a/d/x/p;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, v0, Le/a/d/x/p;->b:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 7
    iget-object v0, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 8
    sget-object v2, Lcom/truecaller/voip/VoipState;->ONGOING:Lcom/truecaller/voip/VoipState;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    sget v5, Lcom/truecaller/voip/R$string;->voip_status_call_muted:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x37

    const-string v8, "Peer has muted the microphone."

    .line 10
    invoke-static/range {v1 .. v10}, Le/a/d/l;->a(Le/a/d/l;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)Le/a/d/l;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Le/a/d/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13
    sget v5, Lcom/truecaller/voip/R$string;->voip_status_on_hold:I

    .line 14
    sget v6, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x87

    const-string v8, "Call is on hold..."

    move-object v1, v0

    .line 15
    invoke-direct/range {v1 .. v10}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    :goto_1
    return-object v0
.end method

.method public final Rj(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/d/b/a/b$e;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/b/a/b$e;

    iget v2, v1, Le/a/d/b/a/b$e;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/b/a/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/b/a/b$e;

    invoke-direct {v1, p0, p1}, Le/a/d/b/a/b$e;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/b/a/b$e;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/b/a/b$e;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/d/b/a/b$e;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

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
    iget-object p1, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 5
    iget-object p1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz p1, :cond_4

    const-string v3, "Call encryption is disabled manually unless it is forced, peer does not support it."

    invoke-interface {p1, v3}, Le/a/d/b/a/e;->a(Ljava/lang/String;)Lq3/a/p1;

    .line 8
    :cond_4
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    iget-object p1, p0, Le/a/d/b/a/b;->m:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x17

    .line 10
    invoke-static/range {v5 .. v11}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object p1

    .line 11
    iget-object v3, p0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 12
    invoke-static {v3, p1}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    check-cast p1, Le/a/d/x/d;

    .line 14
    iget-object v3, p1, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 15
    invoke-interface {v3}, Lq3/a/x2/z0;->f()V

    .line 16
    invoke-virtual {p1}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    :cond_5
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Le/a/d/b/a/b;->Uj(Lq3/a/n0;)Lq3/a/n0;

    move-result-object p1

    .line 18
    iput-object p0, v1, Le/a/d/b/a/b$e;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/d/b/a/b$e;->e:I

    check-cast p1, Lq3/a/o0;

    .line 19
    invoke-virtual {p1, v1}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v1, p0

    .line 20
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v1, p1}, Le/a/d/b/a/b;->Vj(Z)V

    :goto_2
    return-object v0
.end method

.method public final synthetic Sj(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/d/b/a/b$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/b/a/b$f;

    iget v1, v0, Le/a/d/b/a/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/b/a/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/b/a/b$f;

    invoke-direct {v0, p0, p1}, Le/a/d/b/a/b$f;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/b/a/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/b/a/b$f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/d/b/a/b$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    iput-object p0, v0, Le/a/d/b/a/b$f;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/d/b/a/b$f;->e:I

    invoke-interface {p1, p0, v0}, Le/a/d/c0/x1/e;->e(Lq3/a/i0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, Le/a/d/b/a/b$f;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/b/a/b$f;->e:I

    invoke-virtual {v2, v0}, Le/a/d/b/a/b;->Tj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic Tj(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/d/b/a/b$g;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/b/a/b$g;

    iget v2, v1, Le/a/d/b/a/b$g;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/b/a/b$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/b/a/b$g;

    invoke-direct {v1, p0, p1}, Le/a/d/b/a/b$g;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/b/a/b$g;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/b/a/b$g;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/d/b/a/b$g;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

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
    iget-object p1, p0, Le/a/d/b/a/b;->J:Le/a/d/c0/m1;

    const/4 v3, 0x0

    invoke-static {p1, v3, v4, v3}, Le/a/p5/s0/g;->u0(Le/a/d/c0/m1;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    iput-object p0, v1, Le/a/d/b/a/b$g;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/d/b/a/b$g;->e:I

    invoke-interface {p1, v1}, Le/a/d/c0/x1/e;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    .line 6
    :goto_1
    iget-object p1, v1, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    invoke-interface {p1}, Le/a/d/c0/x1/e;->f()V

    return-object v0
.end method

.method public final Uj(Lq3/a/n0;)Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/d/b/a/b$h;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/b/a/b$h;-><init>(Le/a/d/b/a/b;Lq3/a/n0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public final Vj(Z)V
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/a/b$j;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/b/a/b$j;-><init>(Le/a/d/b/a/b;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 2
    new-instance v0, Le/a/d/b/a/b$i;

    invoke-direct {v0, p0}, Le/a/d/b/a/b$i;-><init>(Le/a/d/b/a/b;)V

    move-object v1, p1

    check-cast v1, Lq3/a/u1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3, v0}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    .line 4
    iput-object p1, p0, Le/a/d/b/a/b;->n:Lq3/a/p1;

    return-void
.end method

.method public final Wj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 2
    iget-object v0, v0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final Xj(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/b/a/b$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/b/a/b$k;

    iget v1, v0, Le/a/d/b/a/b$k;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/b/a/b$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/b/a/b$k;

    invoke-direct {v0, p0, p1}, Le/a/d/b/a/b$k;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    move-object v4, v0

    iget-object p1, v4, Le/a/d/b/a/b$k;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v4, Le/a/d/b/a/b$k;->e:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    iget-object v0, v4, Le/a/d/b/a/b$k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/b;

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
    iget-object v1, p0, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object p0, v4, Le/a/d/b/a/b$k;->g:Ljava/lang/Object;

    iput v7, v4, Le/a/d/b/a/b$k;->e:I

    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->B0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Le/a/d/x/r/m;

    .line 6
    instance-of v1, p1, Le/a/d/x/r/p;

    if-eqz v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    instance-of v1, p1, Le/a/d/x/r/g;

    if-eqz v1, :cond_8

    .line 8
    check-cast p1, Le/a/d/x/r/g;

    .line 9
    iget-object p1, p1, Le/a/d/x/r/g;->a:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v7, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 11
    :cond_5
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->LOGIN_RTM_FAILED:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_2

    .line 12
    :cond_6
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->GET_RTM_TOKEN_FAILED:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_2

    .line 13
    :cond_7
    sget-object p1, Lcom/truecaller/voip/VoipStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/VoipStateReason;

    .line 14
    :goto_2
    sget-object v1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    invoke-virtual {v0, v1, p1}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    const/4 v7, 0x0

    .line 15
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :cond_8
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public Yj()V
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/a/b$l;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/b/a/b$l;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object v0, p0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 3
    iget-object v0, v0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/truecaller/voip/VoipStateReason;->HUNG_UP:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/truecaller/voip/VoipStateReason;->INVITE_CANCELLED:Lcom/truecaller/voip/VoipStateReason;

    .line 7
    :goto_0
    sget-object v1, Lcom/truecaller/voip/VoipState;->ENDED:Lcom/truecaller/voip/VoipState;

    invoke-virtual {p0, v1, v0}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-void
.end method

.method public Zj(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    move v2, p1

    invoke-static/range {v0 .. v6}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 3
    invoke-static {v0, p1}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Le/a/d/b/a/b;->ak()V

    .line 5
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object p1

    .line 6
    iget-boolean p1, p1, Le/a/d/x/p;->b:Z

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/g;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {v0}, Le/a/d/b/a/g;->g()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Le/a/d/b/a/g;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ak()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v1

    .line 2
    iget-boolean v1, v1, Le/a/d/x/p;->c:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    check-cast v0, Le/a/d/x/d;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->enableAudio()I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->disableAudio()I

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v1

    .line 7
    iget-boolean v1, v1, Le/a/d/x/p;->b:Z

    .line 8
    check-cast v0, Le/a/d/x/d;

    .line 9
    invoke-virtual {v0}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->muteLocalAudioStream(Z)I

    :cond_2
    return-void
.end method

.method public final bk()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/d/b/a/b;->Qj()Le/a/d/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/d/l;->e()I

    move-result v1

    sget v2, Lcom/truecaller/voip/R$string;->voip_empty:I

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/d/b/a/b;->Oj()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/d/b/a/b;->B:Le/a/p5/c0;

    invoke-virtual {v0}, Le/a/d/l;->e()I

    move-result v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getString(state.viewStatusId)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/g;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Le/a/d/b/a/g;->G(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Le/a/d/l;->e()I

    move-result v2

    invoke-virtual {v0}, Le/a/d/l;->b()I

    move-result v3

    invoke-virtual {v0}, Le/a/d/l;->c()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/a/e;->b(IIZ)Lq3/a/p1;

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Le/a/d/l;->d()Z

    move-result v2

    iget-wide v3, p0, Le/a/d/b/a/b;->l:J

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/a/g;->l3(ZJ)V

    .line 8
    :cond_3
    iget-object v1, p0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Le/a/d/l;->d()Z

    move-result v2

    iget-wide v3, p0, Le/a/d/b/a/b;->l:J

    invoke-interface {v1, v2, v3, v4}, Le/a/d/b/a/e;->c(ZJ)Lq3/a/p1;

    .line 9
    :cond_4
    iget-object v1, p0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, v0, Le/a/d/l;->g:Ljava/lang/String;

    .line 11
    invoke-interface {v1, v0}, Le/a/d/b/a/e;->a(Ljava/lang/String;)Lq3/a/p1;

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12
    new-instance v5, Le/a/d/b/a/b$m;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Le/a/d/b/a/b$m;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/d/c0/j1;->C(Z)V

    .line 3
    iget-object v0, p0, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/a/e;->t()Lq3/a/p1;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    move-object v1, v0

    check-cast v1, Le/a/d/x/d;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Le/a/d/x/h;

    const/4 v0, 0x0

    invoke-direct {v4, v1, v0}, Le/a/d/x/h;-><init>(Le/a/d/x/d;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/b/a/g;->p3()V

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/d/b/a/b;->C:Le/a/d/c0/x1/e;

    invoke-interface {v0}, Le/a/d/c0/x1/e;->g()V

    .line 9
    iget-object v0, p0, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    invoke-interface {v0}, Le/a/d/x/r/n;->a()V

    .line 10
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public final ck(Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/VoipUser;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/b/a/b$n;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/b/a/b$n;

    iget v1, v0, Le/a/d/b/a/b$n;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/b/a/b$n;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/b/a/b$n;

    invoke-direct {v0, p0, p3}, Le/a/d/b/a/b$n;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/b/a/b$n;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/b/a/b$n;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/b/a/b$n;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    .line 4
    iput-object p0, v0, Le/a/d/b/a/b$n;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/b/a/b$n;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/d/b/a/b;->dk(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/truecaller/voip/VoipUser;

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_2
    move-object p1, p0

    move-object p3, p2

    :goto_3
    if-eqz p3, :cond_6

    .line 5
    invoke-virtual {p1, p3}, Le/a/d/b/a/b;->ik(Lcom/truecaller/voip/VoipUser;)V

    .line 6
    iput-boolean v3, p1, Le/a/d/b/a/b;->g:Z

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final dk(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/VoipUser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/b/a/b$o;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/b/a/b$o;

    iget v1, v0, Le/a/d/b/a/b$o;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/b/a/b$o;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/b/a/b$o;

    invoke-direct {v0, p0, p2}, Le/a/d/b/a/b$o;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/b/a/b$o;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/b/a/b$o;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d/b/a/b$o;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Le/a/d/b/a/b$o;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/b/a/b$o;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/d/b/a/b$o;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v7

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    iget-boolean v2, p0, Le/a/d/b/a/b;->k:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    :goto_1
    iput-object p0, v0, Le/a/d/b/a/b$o;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/b/a/b$o;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/d/b/a/b$o;->e:I

    invoke-interface {p2, p1, v2, v0}, Le/a/d/c0/j1;->E(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    .line 5
    :goto_2
    check-cast v2, Le/a/d/c0/f1;

    if-nez v2, :cond_6

    .line 6
    sget-object p2, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    sget-object v0, Lcom/truecaller/voip/VoipStateReason;->SEARCH_FAILED:Lcom/truecaller/voip/VoipStateReason;

    invoke-virtual {p1, p2, v0}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-object v3

    .line 7
    :cond_6
    iget-object v5, p1, Le/a/d/b/a/b;->p:Lq3/a/w2/h;

    const-string v6, ""

    .line 8
    invoke-static {v2, v6}, Le/a/p5/s0/g;->Q1(Le/a/d/c0/f1;Ljava/lang/String;)Lcom/truecaller/voip/VoipUser;

    move-result-object v6

    invoke-interface {v5, v6}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 9
    iget-object v5, p1, Le/a/d/b/a/b;->x:Le/a/d/c0/q1;

    iput-object p1, v0, Le/a/d/b/a/b$o;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/b/a/b$o;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/d/b/a/b$o;->e:I

    check-cast v5, Le/a/d/c0/r1;

    invoke-virtual {v5, v2, v0}, Le/a/d/c0/r1;->b(Le/a/d/c0/f1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 10
    :cond_7
    :goto_3
    check-cast p2, Lcom/truecaller/voip/VoipUser;

    if-nez p2, :cond_8

    .line 11
    sget-object p2, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    sget-object v0, Lcom/truecaller/voip/VoipStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/VoipStateReason;

    invoke-virtual {p1, p2, v0}, Le/a/d/b/a/b;->gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-object v3

    :cond_8
    return-object p2
.end method

.method public final ek()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/a/b$p;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/b/a/b$p;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final fk(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Le/a/d/x/p;->c:Z

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/d/b/a/b;->Wj()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1b

    move v4, p1

    invoke-static/range {v1 .. v7}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 6
    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Le/a/d/b/a/b;->ak()V

    .line 8
    invoke-virtual {p0}, Le/a/d/b/a/b;->bk()V

    .line 9
    invoke-virtual {p0}, Le/a/d/b/a/b;->ek()Lq3/a/p1;

    .line 10
    iget-object v0, p0, Le/a/d/b/a/b;->r:Lq3/a/w2/h;

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final gk(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 2
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v5, p1

    if-ne v5, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/d/b/a/b;->Wj()Z

    move-result v1

    xor-int/2addr v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 5
    sget-object v1, Le/a/d/b/a/b$b;->d:Le/a/d/b/a/b$b;

    .line 6
    sget-object v14, Le/a/d/b/a/b$b;->c:Le/a/d/b/a/b$b;

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 8
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 9
    :pswitch_0
    new-instance v14, Le/a/d/b/a/b$a;

    const/4 v2, 0x3

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 10
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_call_failed:I

    .line 12
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Call failed. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 13
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 14
    :pswitch_1
    new-instance v14, Le/a/d/b/a/b$a;

    const/4 v2, 0x2

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 15
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 16
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    .line 17
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Call ended. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 18
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 19
    :pswitch_2
    new-instance v14, Le/a/d/b/a/b$a;

    invoke-direct {v14, v3, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 20
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xbe

    const-string v11, "Call blocked. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 21
    :pswitch_3
    new-instance v1, Le/a/d/b/a/b$a;

    invoke-direct {v1, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 22
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 23
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_ok_color:I

    const/4 v10, 0x1

    const/4 v12, 0x1

    const/16 v13, 0xe

    const-string v11, "Channel joined. Say hello!"

    move-object v4, v2

    move-object/from16 v5, p1

    .line 24
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 25
    :pswitch_4
    new-instance v1, Le/a/d/b/a/b$a;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 26
    new-instance v14, Le/a/d/b/a/b$a;

    const/16 v2, 0xc

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 27
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 28
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_busy:I

    .line 29
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "User is in another call. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 30
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 31
    :pswitch_5
    new-instance v1, Le/a/d/b/a/b$a;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 32
    new-instance v14, Le/a/d/b/a/b$a;

    const/16 v2, 0xa

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 33
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 34
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_rejected:I

    .line 35
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Invite rejected. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 36
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 37
    :pswitch_6
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xbe

    const-string v11, "Invite accepted."

    move-object v4, v2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 38
    :pswitch_7
    new-instance v14, Le/a/d/b/a/b$a;

    const/16 v2, 0x8

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 39
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 40
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_no_answer:I

    .line 41
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "User did not answer. Exiting..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 42
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_1

    .line 43
    :pswitch_8
    new-instance v14, Le/a/d/b/a/b$a;

    const/4 v2, 0x7

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 44
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 45
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_ringing:I

    .line 46
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_ok_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Invite received. Ringing..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 47
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_1

    .line 48
    :pswitch_9
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 49
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 50
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Invite is received by peer. Waiting for ringing message..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 51
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_1

    .line 52
    :pswitch_a
    new-instance v1, Le/a/d/b/a/b$a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 53
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 54
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 55
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Inviting user to voip call..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 56
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_1

    .line 57
    :pswitch_b
    new-instance v1, Le/a/d/b/a/b$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 58
    new-instance v14, Le/a/d/b/a/b$a;

    const/4 v2, 0x5

    invoke-direct {v14, v2, p0}, Le/a/d/b/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 59
    new-instance v2, Le/a/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 60
    sget v8, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 61
    sget v9, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x86

    const-string v11, "Initializing, resolving the user..."

    move-object v4, v2

    move-object/from16 v5, p1

    .line 62
    invoke-direct/range {v4 .. v13}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_1

    .line 63
    :pswitch_c
    iget-object v2, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 64
    :goto_1
    iput-object v2, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfd

    move-object/from16 v4, p2

    .line 65
    invoke-static/range {v2 .. v11}, Le/a/d/l;->a(Le/a/d/l;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)Le/a/d/l;

    move-result-object v2

    iput-object v2, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    .line 66
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Le/a/d/b/a/b;->bk()V

    .line 68
    invoke-interface {v14}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 69
    iget-object v1, v0, Le/a/d/b/a/b;->q:Lq3/a/w2/h;

    .line 70
    iget-object v2, v0, Le/a/d/b/a/b;->i:Le/a/d/l;

    invoke-interface {v1, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ik(Lcom/truecaller/voip/VoipUser;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    .line 2
    iget-object v0, p0, Le/a/d/b/a/b;->p:Lq3/a/w2/h;

    .line 3
    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/g;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    const-string v1, "voipUser"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Le/a/d/b/a/g;->h(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/a/d/b/a/b;->f:Lcom/truecaller/voip/VoipUser;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/p5/s0/g;->H(Lcom/truecaller/voip/VoipUser;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/d/b/a/g;->m3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method public final jk(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUser;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/VoipUser;",
            "Ljava/lang/Boolean;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/d/b/a/b$q;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/d/b/a/b$q;

    iget v5, v4, Le/a/d/b/a/b$q;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d/b/a/b$q;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d/b/a/b$q;

    invoke-direct {v4, v0, v2}, Le/a/d/b/a/b$q;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/d/b/a/b$q;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d/b/a/b$q;->e:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v1, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d/b/a/b$q;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/b/a/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v1, v4, Le/a/d/b/a/b$q;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v4, Le/a/d/b/a/b$q;->h:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget-object v12, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    check-cast v12, Le/a/d/b/a/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p1, :cond_5

    if-nez v1, :cond_5

    return-object v3

    :cond_5
    if-eqz p1, :cond_6

    move-object/from16 v1, p1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 4
    iget-object v1, v1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v1, v10

    :goto_1
    if-eqz v1, :cond_13

    .line 5
    iput-object v1, v0, Le/a/d/b/a/b;->h:Ljava/lang/String;

    if-eqz p2, :cond_8

    move-object/from16 v2, p2

    goto :goto_2

    :cond_8
    const-string v2, "UUID.randomUUID().toString()"

    .line 6
    invoke-static {v2}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz p2, :cond_9

    move v2, v11

    goto :goto_3

    :cond_9
    move v2, v7

    .line 7
    :goto_3
    iput-boolean v2, v0, Le/a/d/b/a/b;->k:Z

    if-nez v2, :cond_d

    .line 8
    iget-object v2, v0, Le/a/d/b/a/b;->N:Le/a/d/c0/y1/b;

    iput-object v0, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    move-object/from16 v6, p4

    iput-object v6, v4, Le/a/d/b/a/b$q;->h:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/b/a/b$q;->i:Ljava/lang/Object;

    iput v11, v4, Le/a/d/b/a/b$q;->e:I

    invoke-interface {v2, v1, v4}, Le/a/d/c0/y1/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_a

    return-object v5

    :cond_a
    move-object v12, v0

    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 9
    iget-object v2, v12, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/b/a/g;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Le/a/d/b/a/g;->n3(Ljava/lang/String;)V

    :cond_b
    return-object v3

    :cond_c
    move-object v3, v12

    goto :goto_5

    :cond_d
    move-object/from16 v6, p4

    move-object v3, v0

    :goto_5
    if-eqz v6, :cond_e

    .line 10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_7

    :cond_e
    iget-object v2, v3, Le/a/d/b/a/b;->N:Le/a/d/c0/y1/b;

    iput-object v3, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/b/a/b$q;->h:Ljava/lang/Object;

    iput-object v10, v4, Le/a/d/b/a/b$q;->i:Ljava/lang/Object;

    iput v9, v4, Le/a/d/b/a/b$q;->e:I

    invoke-interface {v2, v1, v4}, Le/a/d/c0/y1/b;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_f

    return-object v5

    :cond_f
    :goto_6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_7
    move/from16 v19, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v3, v19

    if-nez v3, :cond_11

    .line 11
    iget-object v3, v1, Le/a/d/b/a/b;->m:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    move/from16 v16, v7

    goto :goto_9

    :cond_11
    :goto_8
    move/from16 v16, v11

    .line 12
    :goto_9
    invoke-virtual {v1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v12

    .line 13
    iget-boolean v13, v1, Le/a/d/b/a/b;->k:Z

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x16

    .line 14
    invoke-static/range {v12 .. v18}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object v3

    .line 15
    iget-object v6, v1, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 16
    invoke-static {v6, v3}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 17
    iget-object v3, v1, Le/a/d/b/a/b;->M:Le/a/d/c0/a2/a;

    iput-object v1, v4, Le/a/d/b/a/b$q;->g:Ljava/lang/Object;

    iput-object v10, v4, Le/a/d/b/a/b$q;->h:Ljava/lang/Object;

    iput-object v10, v4, Le/a/d/b/a/b$q;->i:Ljava/lang/Object;

    iput v8, v4, Le/a/d/b/a/b$q;->e:I

    invoke-interface {v3, v2, v4}, Le/a/d/c0/a2/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_12

    return-object v5

    .line 18
    :cond_12
    :goto_a
    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Le/a/d/b/a/b;->o:Ljava/lang/String;

    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_13
    return-object v3
.end method
