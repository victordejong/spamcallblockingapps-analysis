.class public final Le/a/d/b/b/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/b/b/i;",
        ">;",
        "Le/a/d/b/b/h;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lcom/truecaller/voip/VoipUser;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Le/a/d/l;

.field public j:Le/a/d/b/b/g;

.field public final k:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/VoipUser;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Le/a/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/d/x/r/o;

.field public final n:Le/a/d/c0/q1;

.field public final o:Le/a/d/c0/j1;

.field public final p:Le/a/d/c0/x1/e;

.field public final q:Le/a/d/x/r/n;

.field public final r:Le/a/d/c0/o;

.field public final s:Le/a/d/c0/f0;

.field public final t:Le/a/d/c0/m1;

.field public final u:Le/a/s2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/x/r/o;Le/a/d/c0/q1;Le/a/d/c0/j1;Le/a/d/c0/x1/e;Le/a/d/x/r/n;Le/a/d/c0/o;Le/a/d/c0/f0;Le/a/d/c0/m1;Le/a/s2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Le/a/d/c0/x1/e;
        .annotation runtime Ljavax/inject/Named;
            value = "LegacyAudioUtil"
        .end annotation
    .end param
    .param p7    # Le/a/d/c0/o;
        .annotation runtime Ljavax/inject/Named;
            value = "LegacyHapticFeedbackUtil"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUserResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmLoginManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hapticFeedbackUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipTelecomUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerId"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/d/b/b/b;->m:Le/a/d/x/r/o;

    iput-object p3, p0, Le/a/d/b/b/b;->n:Le/a/d/c0/q1;

    iput-object p4, p0, Le/a/d/b/b/b;->o:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/b/b/b;->p:Le/a/d/c0/x1/e;

    iput-object p6, p0, Le/a/d/b/b/b;->q:Le/a/d/x/r/n;

    iput-object p7, p0, Le/a/d/b/b/b;->r:Le/a/d/c0/o;

    iput-object p8, p0, Le/a/d/b/b/b;->s:Le/a/d/c0/f0;

    iput-object p9, p0, Le/a/d/b/b/b;->t:Le/a/d/c0/m1;

    iput-object p10, p0, Le/a/d/b/b/b;->u:Le/a/s2/a;

    .line 2
    new-instance v0, Le/a/d/l;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p8, 0x0

    const/4 p9, 0x0

    const/16 p10, 0xff

    move-object p1, v0

    invoke-direct/range {p1 .. p10}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    iput-object v0, p0, Le/a/d/b/b/b;->i:Le/a/d/l;

    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p2

    iput-object p2, p0, Le/a/d/b/b/b;->k:Lq3/a/w2/h;

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/d/b/b/b;->l:Lq3/a/w2/h;

    return-void
.end method

.method public static final Ij(Le/a/d/b/b/b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/b/b/b;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Le/a/d/b/b/b;->Mj(Lcom/truecaller/voip/VoipUser;)V

    :goto_0
    return-void

    :cond_1
    const-string p0, "voipUser"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static Jj(Le/a/d/b/b/b;JI)Lq3/a/p1;
    .locals 6

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x3e8

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Le/a/d/b/b/j;

    const/4 p3, 0x0

    invoke-direct {v3, p0, p1, p2, p3}, Le/a/d/b/b/j;-><init>(Le/a/d/b/b/b;JLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Qj(Le/a/d/b/b/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-void
.end method


# virtual methods
.method public Gh()V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/voip/VoipState;->REJECTED:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    return-void
.end method

.method public J0()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/voip/VoipUser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->k:Lq3/a/w2/h;

    return-object v0
.end method

.method public K1()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Le/a/d/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->l:Lq3/a/w2/h;

    return-object v0
.end method

.method public final Kj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/b/b/b;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "voipUser"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/d/b/b/b;->h:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final Lj(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->o:Le/a/d/c0/j1;

    new-instance v8, Le/a/d/c0/w0;

    sget-object v3, Lcom/truecaller/voip/util/VoipEventType;->BLOCKED:Lcom/truecaller/voip/util/VoipEventType;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Le/a/d/c0/w0;-><init>(Ljava/lang/String;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;I)V

    invoke-interface {v0, v8}, Le/a/d/c0/j1;->F(Le/a/d/c0/w0;)V

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/d/b/b/i;->j()V

    :cond_0
    return-void
.end method

.method public final Mj(Lcom/truecaller/voip/VoipUser;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->o:Le/a/d/c0/j1;

    new-instance v8, Le/a/d/c0/w0;

    .line 2
    iget-object v2, p1, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/truecaller/voip/util/VoipEventType;->MISSED:Lcom/truecaller/voip/util/VoipEventType;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Le/a/d/c0/w0;-><init>(Ljava/lang/String;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;I)V

    invoke-interface {v0, v8}, Le/a/d/c0/j1;->F(Le/a/d/c0/w0;)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/d/b/b/i;->i()V

    :cond_0
    return-void
.end method

.method public final Nj(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/b/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/b/b/b$b;-><init>(Le/a/d/b/b/b;Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public final Oj(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Le/a/d/b/b/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/b/b/b$c;

    iget v1, v0, Le/a/d/b/b/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/b/b/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/b/b/b$c;

    invoke-direct {v0, p0, p1}, Le/a/d/b/b/b$c;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/b/b/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/b/b/b$c;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/b/b/b$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/b;

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
    iget-object p1, p0, Le/a/d/b/b/b;->m:Le/a/d/x/r/o;

    iget-object v2, p0, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v2, :cond_6

    new-instance v5, Lcom/truecaller/voip/manager/rtm/RtmMsg;

    sget-object v6, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->RINGING:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    iget-object v7, p0, Le/a/d/b/b/b;->d:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-direct {v5, v6, v7}, Lcom/truecaller/voip/manager/rtm/RtmMsg;-><init>(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V

    iput-object p0, v0, Le/a/d/b/b/b$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/b/b/b$c;->e:I

    invoke-interface {p1, v2, v5, v0}, Le/a/d/x/r/o;->a(Lcom/truecaller/voip/VoipUser;Lcom/truecaller/voip/manager/rtm/RtmMsg;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lcom/truecaller/voip/VoipState;->FAILED:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x2

    invoke-static {v0, p1, v4, v1}, Le/a/d/b/b/b;->Qj(Le/a/d/b/b/b;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;I)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    const-string p1, "channelId"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p1, "voipUser"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public final Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 2
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    const/16 v2, 0xc

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/16 v6, 0xb

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v10, p1

    if-ne v10, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v2, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 5
    sget-object v1, Le/a/d/b/b/b$d;->b:Le/a/d/b/b/b$d;

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v7, :cond_9

    const/4 v11, 0x6

    const/4 v12, 0x4

    if-eq v9, v12, :cond_8

    if-eq v9, v4, :cond_7

    if-eq v9, v11, :cond_6

    const/16 v1, 0xa

    if-eq v9, v5, :cond_5

    if-eq v9, v1, :cond_4

    if-eq v9, v6, :cond_3

    .line 7
    new-instance v1, Le/a/d/b/b/b$a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 8
    new-instance v2, Le/a/d/b/b/b$a;

    invoke-direct {v2, v12, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 9
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 10
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    .line 11
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Error. Exiting..."

    move-object v9, v3

    move-object/from16 v10, p1

    .line 12
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_3

    .line 13
    :cond_3
    new-instance v1, Le/a/d/b/b/b$a;

    invoke-direct {v1, v7, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 14
    new-instance v2, Le/a/d/b/b/b$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 15
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 16
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    .line 17
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Call cancelled. Exiting..."

    move-object v9, v3

    move-object/from16 v10, p1

    .line 18
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_3

    .line 19
    :cond_4
    new-instance v1, Le/a/d/b/b/b$a;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 20
    new-instance v2, Le/a/d/b/b/b$a;

    invoke-direct {v2, v8, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 21
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xbe

    const-string v16, "Call blocked. Exiting..."

    move-object v9, v3

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto/16 :goto_3

    .line 22
    :cond_5
    new-instance v2, Le/a/d/b/b/b$a;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 23
    new-instance v3, Le/a/d/b/b/b$a;

    invoke-direct {v3, v1, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 24
    new-instance v1, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 25
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_rejected:I

    .line 26
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Incoming call is rejected. Exiting..."

    move-object v9, v1

    move-object/from16 v10, p1

    .line 27
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    move-object/from16 v19, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_2

    .line 28
    :cond_6
    new-instance v2, Le/a/d/b/b/b$a;

    invoke-direct {v2, v3, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 29
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 30
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 31
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Incoming call is accepted. Opening VoIP screen..."

    move-object v9, v3

    move-object/from16 v10, p1

    .line 32
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_3

    .line 33
    :cond_7
    new-instance v1, Le/a/d/b/b/b$a;

    invoke-direct {v1, v6, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 34
    new-instance v3, Le/a/d/b/b/b$a;

    invoke-direct {v3, v2, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 35
    new-instance v2, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 36
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_no_answer:I

    .line 37
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "No answer. Exiting..."

    move-object v9, v2

    move-object/from16 v10, p1

    .line 38
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    move-object/from16 v19, v3

    move-object v3, v2

    :goto_2
    move-object/from16 v2, v19

    goto :goto_3

    .line 39
    :cond_8
    new-instance v1, Le/a/d/b/b/b$a;

    invoke-direct {v1, v11, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 40
    new-instance v2, Le/a/d/b/b/b$a;

    invoke-direct {v2, v5, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 41
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 42
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_incoming_call:I

    .line 43
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Incoming call is received."

    move-object v9, v3

    move-object/from16 v10, p1

    .line 44
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    goto :goto_3

    .line 45
    :cond_9
    new-instance v2, Le/a/d/b/b/b$a;

    invoke-direct {v2, v4, v0}, Le/a/d/b/b/b$a;-><init>(ILjava/lang/Object;)V

    .line 46
    new-instance v3, Le/a/d/l;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 47
    sget v13, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 48
    sget v14, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x86

    const-string v16, "Initializing and resolving user details..."

    move-object v9, v3

    move-object/from16 v10, p1

    .line 49
    invoke-direct/range {v9 .. v18}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    .line 50
    :goto_3
    iput-object v3, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfd

    move-object/from16 v5, p2

    .line 51
    invoke-static/range {v3 .. v12}, Le/a/d/l;->a(Le/a/d/l;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)Le/a/d/l;

    move-result-object v3

    iput-object v3, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 52
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 53
    iget-object v1, v0, Le/a/d/b/b/b;->j:Le/a/d/b/b/g;

    if-eqz v1, :cond_a

    iget-object v3, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 54
    iget v4, v3, Le/a/d/l;->d:I

    .line 55
    invoke-virtual {v3}, Le/a/d/l;->b()I

    move-result v3

    iget-object v5, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    invoke-virtual {v5}, Le/a/d/l;->c()Z

    move-result v5

    invoke-interface {v1, v4, v3, v5}, Le/a/d/b/b/g;->Ne(IIZ)V

    .line 56
    :cond_a
    iget-object v1, v0, Le/a/d/b/b/b;->j:Le/a/d/b/b/g;

    if-eqz v1, :cond_b

    iget-object v3, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 57
    iget-object v3, v3, Le/a/d/l;->g:Ljava/lang/String;

    .line 58
    invoke-interface {v1, v3}, Le/a/d/b/b/g;->nc(Ljava/lang/String;)V

    .line 59
    :cond_b
    iget-object v1, v0, Le/a/d/b/b/b;->l:Lq3/a/w2/h;

    .line 60
    iget-object v3, v0, Le/a/d/b/b/b;->i:Le/a/d/l;

    invoke-interface {v1, v3}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v2}, Le/a/d/b/b/b$a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public T9(Le/a/d/b/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d/b/b/b;->j:Le/a/d/b/b/g;

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->r:Le/a/d/c0/o;

    invoke-interface {v0}, Le/a/d/c0/o;->a()V

    .line 2
    iget-object v0, p0, Le/a/d/b/b/b;->u:Le/a/s2/a;

    invoke-interface {v0}, Le/a/s2/a;->release()V

    .line 3
    iget-object v0, p0, Le/a/d/b/b/b;->p:Le/a/d/c0/x1/e;

    invoke-interface {v0}, Le/a/d/c0/x1/e;->g()V

    .line 4
    iget-object v0, p0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 5
    iget-object v0, v0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 6
    sget-object v1, Lcom/truecaller/voip/VoipState;->ACCEPTED:Lcom/truecaller/voip/VoipState;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Le/a/d/b/b/b;->q:Le/a/d/x/r/n;

    invoke-interface {v0}, Le/a/d/x/r/n;->a()V

    .line 8
    iget-object v0, p0, Le/a/d/b/b/b;->o:Le/a/d/c0/j1;

    iget-object v1, p0, Le/a/d/b/b/b;->i:Le/a/d/l;

    .line 9
    iget-object v1, v1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    .line 10
    sget-object v2, Lcom/truecaller/voip/VoipState;->REJECTED:Lcom/truecaller/voip/VoipState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/d/c0/j1;->C(Z)V

    .line 11
    :cond_1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public getState()Le/a/d/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->i:Le/a/d/l;

    return-object v0
.end method

.method public ke()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/d/b/b/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/voip/VoipState;->ACCEPTED:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V

    :cond_0
    return-void
.end method

.method public m3()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/b/b;->r:Le/a/d/c0/o;

    invoke-interface {v0}, Le/a/d/c0/o;->a()V

    .line 2
    iget-object v0, p0, Le/a/d/b/b/b;->p:Le/a/d/c0/x1/e;

    invoke-interface {v0}, Le/a/d/c0/x1/e;->c()V

    return-void
.end method
