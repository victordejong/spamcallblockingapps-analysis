.class public final Le/a/d/z/c/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/z/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/z/c/c;",
        ">;",
        "Le/a/d/z/c/b;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/voip/VoipGroupPushNotification;

.field public final e:Lq3/a/b3/c;

.field public final f:Ls1/w/f;

.field public final g:Le/a/d/w/d;

.field public final h:Le/a/d/g;

.field public final i:Le/a/p5/c0;

.field public final j:Le/a/d/y/c/k;

.field public final k:Le/a/d/c0/e;

.field public final l:Le/a/d/c0/z1/b;

.field public final m:Le/a/d/c0/f0;

.field public final n:Le/a/s2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/w/d;Le/a/d/g;Le/a/p5/c0;Le/a/d/y/c/k;Le/a/d/c0/e;Le/a/d/c0/z1/b;Le/a/d/c0/f0;Le/a/s2/a;)V
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

    const-string v0, "invitationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missedVoipNotification"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busyCallInvitationHandler"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerId"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/z/c/e;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    iput-object p3, p0, Le/a/d/z/c/e;->h:Le/a/d/g;

    iput-object p4, p0, Le/a/d/z/c/e;->i:Le/a/p5/c0;

    iput-object p5, p0, Le/a/d/z/c/e;->j:Le/a/d/y/c/k;

    iput-object p6, p0, Le/a/d/z/c/e;->k:Le/a/d/c0/e;

    iput-object p7, p0, Le/a/d/z/c/e;->l:Le/a/d/c0/z1/b;

    iput-object p8, p0, Le/a/d/z/c/e;->m:Le/a/d/c0/f0;

    iput-object p9, p0, Le/a/d/z/c/e;->n:Le/a/s2/a;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/z/c/e;->e:Lq3/a/b3/c;

    return-void
.end method

.method public static final Ij(Le/a/d/z/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/d/z/c/e;->Kj()V

    :cond_0
    return-void
.end method

.method public static final Jj(Le/a/d/z/c/e;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Le/a/d/z/c/e;->i:Le/a/p5/c0;

    .line 2
    sget v0, Lcom/truecaller/voip/R$string;->voip_status_incoming_audio_call:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    sget v2, Lcom/truecaller/voip/R$string;->voip_text:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4
    invoke-interface {p0, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "resourceProvider.getStri\u2026ring.voip_text)\n        )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final Kj()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/u2/a/a;->Hj()Lq3/a/p1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/z/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/z/c/c;->t()V

    :cond_0
    return-void
.end method

.method public final Lj(Le/a/d/w/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/w/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/z/c/e$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/z/c/e$c;

    iget v1, v0, Le/a/d/z/c/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/z/c/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/z/c/e$c;

    invoke-direct {v0, p0, p2}, Le/a/d/z/c/e$c;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/z/c/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/z/c/e$c;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/z/c/e$c;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    check-cast v1, Le/a/d/w/b;

    iget-object v0, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/z/c/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/w/b;

    iget-object v2, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/z/c/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/w/b;

    iget-object v2, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/z/c/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Le/a/d/w/b;->getState()Lq3/a/x2/i1;

    move-result-object p2

    .line 5
    new-instance v2, Le/a/d/z/c/e$a;

    invoke-direct {v2, p2}, Le/a/d/z/c/e$a;-><init>(Lq3/a/x2/f;)V

    .line 6
    iput-object p0, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/d/z/c/e$c;->e:I

    .line 7
    invoke-static {v2, v0}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 8
    :goto_1
    check-cast p2, Le/a/d/w/h$b;

    .line 9
    instance-of v5, p2, Le/a/d/w/h$b$a;

    if-eqz v5, :cond_6

    iget-object p2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_b

    invoke-interface {p1}, Le/a/d/w/b;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Le/a/d/z/c/c;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :cond_6
    instance-of v5, p2, Le/a/d/w/h$b$j;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 11
    :cond_7
    instance-of v5, p2, Le/a/d/w/h$b$e;

    if-eqz v5, :cond_8

    goto :goto_2

    .line 12
    :cond_8
    instance-of v5, p2, Le/a/d/w/h$b$b;

    if-eqz v5, :cond_9

    goto :goto_2

    .line 13
    :cond_9
    instance-of v5, p2, Le/a/d/w/h$b$i;

    if-eqz v5, :cond_a

    :goto_2
    iput-object v2, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/d/z/c/e$c;->e:I

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p2, Le/a/d/z/c/j;

    invoke-direct {p2, v2, p1, v6}, Le/a/d/z/c/j;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, p2, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    .line 16
    :cond_a
    instance-of p2, p2, Le/a/d/w/h$b$c;

    if-eqz p2, :cond_b

    .line 17
    iget-object p2, v2, Le/a/d/z/c/e;->n:Le/a/s2/a;

    invoke-interface {p2}, Le/a/s2/a;->a()V

    .line 18
    iget-object p2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Le/a/d/z/c/c;->b()V

    .line 19
    :cond_b
    :goto_3
    iget-object p2, v2, Le/a/d/z/c/e;->e:Lq3/a/b3/c;

    .line 20
    iput-object v2, v0, Le/a/d/z/c/e$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/z/c/e$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/z/c/e$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/z/c/e$c;->e:I

    invoke-interface {p2, v6, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    return-object v1

    :cond_c
    move-object v1, p1

    move-object p1, p2

    move-object v0, v2

    .line 21
    :goto_4
    :try_start_0
    iget-object p2, v0, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    invoke-interface {p2}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object p2

    if-nez p2, :cond_d

    .line 22
    invoke-virtual {v0}, Le/a/d/z/c/e;->Kj()V

    goto :goto_5

    :cond_d
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 23
    new-instance v3, Le/a/d/z/c/e$b;

    invoke-direct {v3, v6, v0, v1}, Le/a/d/z/c/e$b;-><init>(Ls1/w/d;Le/a/d/z/c/e;Le/a/d/w/b;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_5
    invoke-interface {p1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p2

    .line 26
    invoke-interface {p1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method

.method public final Mj(Lcom/truecaller/voip/VoipGroupPushNotification;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/VoipGroupPushNotification;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ls1/s;->a:Ls1/s;

    instance-of v4, v2, Le/a/d/z/c/e$d;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/d/z/c/e$d;

    iget v5, v4, Le/a/d/z/c/e$d;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d/z/c/e$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d/z/c/e$d;

    invoke-direct {v4, v0, v2}, Le/a/d/z/c/e$d;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/d/z/c/e$d;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d/z/c/e$d;->e:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/z/c/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d/z/c/e$d;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/VoipGroupPushNotification;

    iget-object v1, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/z/c/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object v1, v4, Le/a/d/z/c/e$d;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/VoipGroupPushNotification;

    iget-object v6, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/z/c/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/d/z/c/e;->h:Le/a/d/g;

    check-cast v2, Le/a/d/e;

    invoke-virtual {v2}, Le/a/d/e;->a()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_5

    goto :goto_1

    .line 5
    :cond_5
    iget-object v2, v1, Lcom/truecaller/voip/VoipGroupPushNotification;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_1

    .line 6
    :cond_6
    iget-object v2, v1, Lcom/truecaller/voip/VoipGroupPushNotification;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v6, v9

    :goto_1
    if-nez v6, :cond_8

    return-object v3

    .line 7
    :cond_8
    iput-object v1, v0, Le/a/d/z/c/e;->d:Lcom/truecaller/voip/VoipGroupPushNotification;

    .line 8
    iget-object v10, v0, Le/a/d/z/c/e;->m:Le/a/d/c0/f0;

    .line 9
    new-instance v2, Le/a/d/c0/e0;

    .line 10
    sget-object v12, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x7e

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    .line 11
    invoke-direct/range {v11 .. v20}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 12
    sget-object v12, Lcom/truecaller/voip/util/VoipAnalyticsState;->WAKE_UP_RECEIVED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v14, 0x4

    move-object v13, v6

    move-object/from16 v15, v21

    .line 13
    invoke-static/range {v10 .. v15}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    .line 14
    iget-object v2, v0, Le/a/d/z/c/e;->l:Le/a/d/c0/z1/b;

    iput-object v0, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/z/c/e$d;->h:Ljava/lang/Object;

    iput v9, v4, Le/a/d/z/c/e$d;->e:I

    check-cast v2, Le/a/d/c0/z1/c;

    invoke-virtual {v2, v1, v4}, Le/a/d/c0/z1/c;->a(Lcom/truecaller/voip/VoipGroupPushNotification;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_9

    return-object v5

    :cond_9
    move-object v6, v0

    :goto_2
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_b

    .line 15
    iget-object v7, v6, Le/a/d/z/c/e;->k:Le/a/d/c0/e;

    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    sget-object v10, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    invoke-interface {v7, v6, v9, v10}, Le/a/d/c0/e;->d(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/groupcall/call/CallDirection;)Ljava/util/Map;

    move-result-object v7

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq3/a/x2/i1;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_a
    invoke-static {v9}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 20
    new-instance v9, Lq3/a/x2/k;

    invoke-direct {v9, v7}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v6, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/z/c/e$d;->h:Ljava/lang/Object;

    iput v8, v4, Le/a/d/z/c/e$d;->e:I

    invoke-virtual {v6, v9, v1, v2, v4}, Le/a/d/z/c/e;->Nj(Lq3/a/x2/f;Lcom/truecaller/voip/VoipGroupPushNotification;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_d

    return-object v5

    .line 22
    :cond_b
    invoke-virtual {v1}, Lcom/truecaller/voip/VoipGroupPushNotification;->a()Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-object v1, v1, Lcom/truecaller/voip/VoipGroupPushNotification;->c:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 24
    iget-object v8, v6, Le/a/d/z/c/e;->g:Le/a/d/w/d;

    invoke-interface {v8, v2, v1}, Le/a/d/w/d;->d(Ljava/lang/String;Ljava/lang/String;)Lq3/a/n0;

    move-result-object v1

    iput-object v6, v4, Le/a/d/z/c/e$d;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v4, Le/a/d/z/c/e$d;->h:Ljava/lang/Object;

    iput v7, v4, Le/a/d/z/c/e$d;->e:I

    invoke-interface {v1, v4}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_c

    return-object v5

    :cond_c
    move-object v1, v6

    .line 25
    :goto_4
    check-cast v2, Le/a/d/w/b;

    if-eqz v2, :cond_d

    .line 26
    invoke-virtual {v1, v2}, Le/a/d/z/c/e;->Oj(Le/a/d/w/b;)Lq3/a/p1;

    :cond_d
    :goto_5
    return-object v3

    .line 27
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sender id is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final Nj(Lq3/a/x2/f;Lcom/truecaller/voip/VoipGroupPushNotification;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lq3/a/x2/i1<",
            "+",
            "Le/a/d/c0/j;",
            ">;>;>;",
            "Lcom/truecaller/voip/VoipGroupPushNotification;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/d/z/c/e$e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/d/z/c/e$e;

    iget v1, v0, Le/a/d/z/c/e$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/z/c/e$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/z/c/e$e;

    invoke-direct {v0, p0, p4}, Le/a/d/z/c/e$e;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/d/z/c/e$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/z/c/e$e;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/z/c/e$e;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/z/c/e;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/z/c/e$e;->i:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ljava/util/List;

    iget-object p1, v0, Le/a/d/z/c/e$e;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/voip/VoipGroupPushNotification;

    iget-object p1, v0, Le/a/d/z/c/e$e;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/z/c/e;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/d/z/c/e;->i:Le/a/p5/c0;

    const/16 v2, 0x14

    invoke-static {p1, p4, v2}, Le/a/p5/s0/g;->K0(Lq3/a/x2/f;Le/a/p5/c0;I)Lq3/a/x2/f;

    move-result-object p1

    iput-object p0, v0, Le/a/d/z/c/e$e;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/z/c/e$e;->h:Ljava/lang/Object;

    iput-object p3, v0, Le/a/d/z/c/e$e;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/z/c/e$e;->e:I

    .line 5
    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p4, Le/a/d/c0/b;

    .line 7
    instance-of v2, p4, Le/a/d/c0/b$a;

    if-eqz v2, :cond_5

    .line 8
    check-cast p4, Le/a/d/c0/b$a;

    .line 9
    iget-object v2, p4, Le/a/d/c0/b$a;->a:Ljava/lang/String;

    iget-object v4, p4, Le/a/d/c0/b$a;->b:Ljava/lang/String;

    iget-object p4, p4, Le/a/d/c0/b$a;->c:Ljava/util/List;

    const-string v5, "names"

    .line 10
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "other"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "groupAvatarConfigs"

    invoke-static {p4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "numbers"

    invoke-static {p3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/d/c0/b$a;

    invoke-direct {v5, v2, v4, p4, p3}, Le/a/d/c0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object p4, v5

    .line 11
    :cond_5
    iget-object p3, p1, Le/a/d/z/c/e;->j:Le/a/d/y/c/k;

    .line 12
    iget-wide v4, p2, Lcom/truecaller/voip/VoipGroupPushNotification;->a:J

    .line 13
    iput-object p1, v0, Le/a/d/z/c/e$e;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Le/a/d/z/c/e$e;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/z/c/e$e;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/z/c/e$e;->e:I

    check-cast p3, Le/a/d/y/c/n;

    invoke-virtual {p3, p4, v4, v5, v0}, Le/a/d/y/c/n;->e(Le/a/d/c0/b;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {p1}, Le/a/d/z/c/e;->Kj()V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Oj(Le/a/d/w/b;)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/z/c/e$f;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/z/c/e$f;-><init>(Le/a/d/z/c/e;Le/a/d/w/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Le/a/d/z/c/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/d/z/c/c;->f()V

    .line 5
    new-instance v4, Le/a/d/z/c/k;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d/z/c/k;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    new-instance v10, Le/a/d/z/c/d;

    invoke-direct {v10, p0, p1}, Le/a/d/z/c/d;-><init>(Le/a/d/z/c/e;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
