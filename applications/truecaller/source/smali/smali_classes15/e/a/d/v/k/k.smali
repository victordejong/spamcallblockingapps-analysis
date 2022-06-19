.class public final Le/a/d/v/k/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/j;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/d/v/g;

.field public final e:Le/a/d/v/i;

.field public final f:Le/a/d/v/k/p;

.field public final g:Le/a/d/c0/x1/e;

.field public final h:Le/a/d/x/q/h;

.field public final i:Le/a/d/v/k/p0;

.field public final j:Le/a/d/v/k/r0;

.field public final k:Le/a/d/v/k/z0;

.field public final l:Le/a/d/v/k/b1;

.field public final m:Le/a/d/v/k/a0;

.field public final n:Le/a/d/x/r/h;

.field public final o:Le/a/d/q/v;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Ljava/lang/String;Le/a/d/v/g;Le/a/d/v/i;Le/a/d/v/k/p;Le/a/d/c0/x1/e;Le/a/d/x/q/h;Le/a/d/v/k/p0;Le/a/d/v/k/r0;Le/a/d/v/k/z0;Le/a/d/v/k/b1;Le/a/d/v/k/a0;Le/a/d/x/r/h;Le/a/d/q/v;)V
    .locals 16
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

    const-string v0, "coroutineScope"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownVoipId"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyAudioRoute"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playTones"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggleProximitySensor"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatePeers"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inviteToGroupCall"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callConnectionManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/d/v/k/k;->a:Lq3/a/i0;

    iput-object v2, v0, Le/a/d/v/k/k;->b:Ljava/lang/String;

    iput-object v3, v0, Le/a/d/v/k/k;->c:Ljava/lang/String;

    iput-object v4, v0, Le/a/d/v/k/k;->d:Le/a/d/v/g;

    iput-object v5, v0, Le/a/d/v/k/k;->e:Le/a/d/v/i;

    iput-object v6, v0, Le/a/d/v/k/k;->f:Le/a/d/v/k/p;

    iput-object v7, v0, Le/a/d/v/k/k;->g:Le/a/d/c0/x1/e;

    iput-object v8, v0, Le/a/d/v/k/k;->h:Le/a/d/x/q/h;

    iput-object v9, v0, Le/a/d/v/k/k;->i:Le/a/d/v/k/p0;

    iput-object v10, v0, Le/a/d/v/k/k;->j:Le/a/d/v/k/r0;

    iput-object v11, v0, Le/a/d/v/k/k;->k:Le/a/d/v/k/z0;

    iput-object v12, v0, Le/a/d/v/k/k;->l:Le/a/d/v/k/b1;

    iput-object v13, v0, Le/a/d/v/k/k;->m:Le/a/d/v/k/a0;

    iput-object v14, v0, Le/a/d/v/k/k;->n:Le/a/d/x/r/h;

    iput-object v15, v0, Le/a/d/v/k/k;->o:Le/a/d/q/v;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/d/v/h$c;->b:Le/a/d/v/h$c;

    sget-object v1, Ls1/s;->a:Ls1/s;

    instance-of v2, p2, Le/a/d/v/k/k$b;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Le/a/d/v/k/k$b;

    iget v3, v2, Le/a/d/v/k/k$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/v/k/k$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/v/k/k$b;

    invoke-direct {v2, p0, p2}, Le/a/d/v/k/k$b;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Le/a/d/v/k/k$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/v/k/k$b;->e:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v3, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v2, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/v/k/k;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :pswitch_1
    iget-object p1, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v4, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v6, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/v/k/k;

    :try_start_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :pswitch_2
    iget-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/v/k/k;

    :try_start_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/v/k/k;

    :try_start_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/v/k/k;

    :try_start_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/d0;

    iget-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/v/k/k;

    :try_start_5
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :pswitch_6
    iget-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/r;

    iget-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/v/k/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v4, p0, Le/a/d/v/k/k;->e:Le/a/d/v/i;

    .line 4
    iget-object p2, v4, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object p0, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object p2, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v2, Le/a/d/v/k/k$b;->e:I

    invoke-interface {p2, v5, v2}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1

    return-object v3

    :cond_1
    move-object v7, p0

    move-object v6, p1

    move-object p1, p2

    .line 6
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p2

    .line 7
    iget-object v4, v7, Le/a/d/v/k/k;->e:Le/a/d/v/i;

    invoke-virtual {v4}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/h;

    invoke-virtual {v4, v0}, Le/a/d/a0/a;->a(Le/a/d/a0/a;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_2
    :try_start_7
    iget-object v4, v7, Le/a/d/v/k/k;->k:Le/a/d/v/k/z0;

    invoke-interface {v4}, Le/a/d/v/k/z0;->toggle()Lq3/a/p1;

    .line 10
    iget-object v4, v7, Le/a/d/v/k/k;->o:Le/a/d/q/v;

    iput-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object p2, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v2, Le/a/d/v/k/k$b;->e:I

    invoke-interface {v4, v2}, Le/a/d/q/v;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v4, v3, :cond_3

    return-object v3

    :cond_3
    move-object v4, p1

    move-object p1, p2

    .line 11
    :goto_2
    :try_start_8
    iput-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, v2, Le/a/d/v/k/k$b;->e:I

    invoke-virtual {v7, v2}, Le/a/d/v/k/k;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_4

    return-object v3

    .line 12
    :cond_4
    :goto_3
    iput-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v2, Le/a/d/v/k/k$b;->e:I

    invoke-virtual {v7, v2}, Le/a/d/v/k/k;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_5

    return-object v3

    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez p2, :cond_6

    .line 13
    invoke-interface {v4, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v1

    .line 14
    :cond_6
    :try_start_9
    iput-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 p2, 0x5

    iput p2, v2, Le/a/d/v/k/k$b;->e:I

    .line 15
    new-instance p2, Le/a/d/x/r/j;

    .line 16
    iget-object v8, v7, Le/a/d/v/k/k;->c:Ljava/lang/String;

    .line 17
    sget-object v9, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Joined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    .line 18
    invoke-direct {p2, v8, v9}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    .line 19
    iget-object v8, v7, Le/a/d/v/k/k;->n:Le/a/d/x/r/h;

    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v8, p2, v2}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_7

    return-object v3

    .line 20
    :cond_7
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    .line 21
    iget-object p1, v7, Le/a/d/v/k/k;->f:Le/a/d/v/k/p;

    sget-object p2, Le/a/d/v/h$b$b;->b:Le/a/d/v/h$b$b;

    invoke-interface {p1, p2}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    goto :goto_8

    .line 22
    :cond_8
    iget-object p2, v7, Le/a/d/v/k/k;->m:Le/a/d/v/k/a0;

    invoke-interface {p2, v6}, Le/a/d/v/k/a0;->o(Ljava/util/Set;)Lq3/a/n0;

    move-result-object p2

    iput-object v7, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    iput-object v5, v2, Le/a/d/v/k/k$b;->j:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v2, Le/a/d/v/k/k$b;->e:I

    invoke-interface {p2, v2}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_9

    return-object v3

    :cond_9
    move-object v6, v7

    .line 23
    :goto_6
    iget-object p2, v6, Le/a/d/v/k/k;->l:Le/a/d/v/k/b1;

    iput-object v6, v2, Le/a/d/v/k/k$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/v/k/k$b;->h:Ljava/lang/Object;

    iput-object p1, v2, Le/a/d/v/k/k$b;->i:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v2, Le/a/d/v/k/k$b;->e:I

    invoke-interface {p2, v2}, Le/a/d/v/k/b1;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-ne p2, v3, :cond_a

    return-object v3

    :cond_a
    move-object v3, v4

    .line 24
    :goto_7
    :try_start_a
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v9, Le/a/d/v/k/l;

    invoke-direct {v9, v6, v5}, Le/a/d/v/k/l;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 26
    invoke-interface {p1, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v4, v3

    .line 27
    :goto_8
    invoke-interface {v4, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_9

    :catchall_2
    move-exception p2

    move-object v4, p1

    move-object p1, p2

    :goto_9
    move-object v3, v4

    :goto_a
    invoke-interface {v3, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic c(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Le/a/d/v/k/k$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/v/k/k$c;

    iget v1, v0, Le/a/d/v/k/k$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/k$c;

    invoke-direct {v0, p0, p1}, Le/a/d/v/k/k$c;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/v/k/k$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/k$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/d/v/k/k$c;->h:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/x1/e;

    iget-object v0, v0, Le/a/d/v/k/k$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/v/k/k;

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
    iget-object v2, v0, Le/a/d/v/k/k$c;->i:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/x1/e;

    iget-object v4, v0, Le/a/d/v/k/k$c;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/x1/e;

    iget-object v5, v0, Le/a/d/v/k/k$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/d/v/k/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Le/a/d/v/k/k;->g:Le/a/d/c0/x1/e;

    .line 5
    iput-object p0, v0, Le/a/d/v/k/k$c;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/k$c;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/k$c;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/k$c;->e:I

    invoke-interface {v2, v0}, Le/a/d/c0/x1/e;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v4, v2

    .line 6
    :goto_1
    iget-object p1, v5, Le/a/d/v/k/k;->a:Lq3/a/i0;

    iput-object v5, v0, Le/a/d/v/k/k$c;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/d/v/k/k$c;->h:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Le/a/d/v/k/k$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/k$c;->e:I

    invoke-interface {v2, p1, v0}, Le/a/d/c0/x1/e;->e(Lq3/a/i0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v5

    .line 7
    :goto_2
    iget-object p1, v0, Le/a/d/v/k/k;->i:Le/a/d/v/k/p0;

    invoke-interface {p1}, Le/a/d/v/k/p0;->a()Lq3/a/p1;

    .line 8
    iget-object p1, v0, Le/a/d/v/k/k;->j:Le/a/d/v/k/r0;

    invoke-interface {p1}, Le/a/d/v/k/r0;->a()Lq3/a/p1;

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final e(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Le/a/d/v/k/k$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/v/k/k$d;

    iget v1, v0, Le/a/d/v/k/k$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/k$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/k$d;

    invoke-direct {v0, p0, p1}, Le/a/d/v/k/k$d;-><init>(Le/a/d/v/k/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/v/k/k$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/k$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/v/k/k$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/v/k/k;

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
    iget-object p1, p0, Le/a/d/v/k/k;->h:Le/a/d/x/q/h;

    invoke-interface {p1}, Le/a/d/x/q/h;->c()Lq3/a/n0;

    move-result-object p1

    iput-object p0, v0, Le/a/d/v/k/k$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/k$d;->e:I

    invoke-interface {p1, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/voip/manager/rtc/ChannelJoin;

    .line 6
    instance-of v1, p1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$a;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    instance-of v1, p1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;

    if-eqz v1, :cond_7

    .line 8
    check-cast p1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;

    .line 9
    iget-object p1, p1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;->a:Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-ne p1, v3, :cond_5

    .line 11
    sget-object p1, Le/a/d/v/h$b$e;->b:Le/a/d/v/h$b$e;

    .line 12
    iget-object v0, v0, Le/a/d/v/k/k;->f:Le/a/d/v/k/p;

    invoke-interface {v0, p1}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    const/4 v3, 0x0

    .line 13
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Token info should be always available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/k;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/util/Set;)Lq3/a/p1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "inviteNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/v/k/k$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/v/k/k$a;-><init>(Le/a/d/v/k/k;Ljava/util/Set;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method
