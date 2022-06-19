.class public final Le/a/d/w/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/g;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/d/w/i;

.field public final f:Le/a/d/x/r/h;

.field public final g:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/d/w/j/m;

.field public final i:Le/a/d/c0/z1/i;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Ljava/lang/String;Lq3/a/x2/a1;Le/a/d/w/i;Le/a/d/x/r/h;Lq3/a/x2/f;Le/a/d/w/j/m;Le/a/d/c0/z1/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;",
            "Le/a/d/w/i;",
            "Le/a/d/x/r/h;",
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;",
            "Le/a/d/w/j/m;",
            "Le/a/d/c0/z1/i;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderVoipId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderCallUser"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endInvitation"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/w/j/h;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/h;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/w/j/h;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/d/w/j/h;->d:Lq3/a/x2/a1;

    iput-object p5, p0, Le/a/d/w/j/h;->e:Le/a/d/w/i;

    iput-object p6, p0, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    iput-object p7, p0, Le/a/d/w/j/h;->g:Lq3/a/x2/f;

    iput-object p8, p0, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    iput-object p9, p0, Le/a/d/w/j/h;->i:Le/a/d/c0/z1/i;

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Le/a/d/w/h$c;->b:Le/a/d/w/h$c;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v0, Le/a/d/w/j/h$c;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Le/a/d/w/j/h$c;

    iget v5, v4, Le/a/d/w/j/h$c;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d/w/j/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d/w/j/h$c;

    invoke-direct {v4, v1, v0}, Le/a/d/w/j/h$c;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    :goto_0
    iget-object v0, v4, Le/a/d/w/j/h$c;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d/w/j/h$c;->e:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x5

    if-eqz v6, :cond_6

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_2

    if-ne v6, v12, :cond_1

    iget-object v5, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/d0;

    iget-object v6, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v4, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/w/j/h;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v6, v4, Le/a/d/w/j/h$c;->j:Ljava/lang/Object;

    check-cast v6, Le/a/d/x/r/i;

    iget-object v7, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/d0;

    iget-object v8, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    check-cast v8, Lq3/a/b3/c;

    iget-object v9, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    check-cast v9, Le/a/d/w/j/h;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v8

    move-object v8, v6

    move-object/from16 v6, v16

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    iget-object v6, v4, Le/a/d/w/j/h$c;->j:Ljava/lang/Object;

    check-cast v6, Le/a/d/x/r/i;

    iget-object v8, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    check-cast v8, Le/a/d/c0/d0;

    iget-object v9, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    check-cast v9, Lq3/a/b3/c;

    iget-object v13, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    check-cast v13, Le/a/d/w/j/h;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v8

    move-object v8, v6

    move-object v6, v9

    move-object/from16 v9, v16

    goto/16 :goto_3

    :cond_4
    iget-object v6, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    check-cast v6, Le/a/d/c0/d0;

    iget-object v9, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    check-cast v9, Lq3/a/b3/c;

    iget-object v13, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    check-cast v13, Le/a/d/w/j/h;

    :try_start_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, v16

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto/16 :goto_7

    :cond_5
    iget-object v6, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v13, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    check-cast v13, Le/a/d/c0/r;

    iget-object v14, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    check-cast v14, Le/a/d/w/j/h;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v13, v1, Le/a/d/w/j/h;->e:Le/a/d/w/i;

    .line 4
    iget-object v0, v13, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object v1, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    iput-object v13, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    iput-object v0, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    iput v10, v4, Le/a/d/w/j/h$c;->e:I

    invoke-interface {v0, v11, v4}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_7

    return-object v5

    :cond_7
    move-object v6, v0

    move-object v14, v1

    .line 6
    :goto_1
    :try_start_4
    invoke-virtual {v13}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v0

    .line 7
    iget-object v13, v14, Le/a/d/w/j/h;->e:Le/a/d/w/i;

    invoke-virtual {v13}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/d/w/h;

    invoke-virtual {v13, v2}, Le/a/d/a0/a;->a(Le/a/d/a0/a;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v13, :cond_8

    .line 8
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 9
    :cond_8
    :try_start_5
    iget-object v13, v14, Le/a/d/w/j/h;->g:Lq3/a/x2/f;

    iput-object v14, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    iput-object v0, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    iput v9, v4, Le/a/d/w/j/h$c;->e:I

    invoke-static {v13, v4}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_9

    return-object v5

    :cond_9
    move-object v13, v14

    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    .line 10
    :goto_2
    check-cast v0, Le/a/d/x/r/i;

    if-nez v0, :cond_a

    .line 11
    iget-object v0, v13, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$e;->b:Le/a/d/w/h$b$e;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 12
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 13
    :cond_a
    :try_start_6
    iget-object v14, v13, Le/a/d/w/j/h;->i:Le/a/d/c0/z1/i;

    iget-object v15, v13, Le/a/d/w/j/h;->c:Ljava/lang/String;

    sget-object v12, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput-object v13, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    iput-object v9, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    iput-object v0, v4, Le/a/d/w/j/h$c;->j:Ljava/lang/Object;

    iput v8, v4, Le/a/d/w/j/h$c;->e:I

    invoke-interface {v14, v15, v12, v4}, Le/a/d/c0/z1/i;->n(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_b

    return-object v5

    :cond_b
    move-object/from16 v16, v8

    move-object v8, v0

    move-object/from16 v0, v16

    :goto_3
    check-cast v0, Le/a/d/b0/a;

    if-eqz v0, :cond_c

    .line 14
    iget-object v12, v13, Le/a/d/w/j/h;->d:Lq3/a/x2/a1;

    invoke-interface {v12, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-boolean v0, v0, Le/a/d/b0/a;->g:Z

    if-eqz v0, :cond_c

    .line 16
    iget-object v0, v13, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$c;->b:Le/a/d/w/h$b$c;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 17
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    :cond_c
    const-wide/16 v14, 0x1388

    .line 18
    :try_start_7
    new-instance v0, Le/a/d/w/j/h$b;

    invoke-direct {v0, v11, v13, v4}, Le/a/d/w/j/h$b;-><init>(Ls1/w/d;Le/a/d/w/j/h;Ls1/w/d;)V

    iput-object v13, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    iput-object v9, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    iput-object v8, v4, Le/a/d/w/j/h$c;->j:Ljava/lang/Object;

    iput v7, v4, Le/a/d/w/j/h$c;->e:I

    invoke-static {v14, v15, v0, v4}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_d

    return-object v5

    :cond_d
    move-object v7, v9

    move-object v9, v13

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_f

    .line 19
    iget-object v0, v9, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$h;->b:Le/a/d/w/h$b$h;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 20
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 21
    :cond_f
    :try_start_8
    iget-object v0, v9, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    invoke-interface {v0}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v10, :cond_10

    .line 22
    iget-object v0, v9, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$i;->b:Le/a/d/w/h$b$i;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 23
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 24
    :cond_10
    :try_start_9
    iget-object v0, v9, Le/a/d/w/j/h;->i:Le/a/d/c0/z1/i;

    invoke-interface {v0}, Le/a/d/c0/z1/i;->getCurrentTime()J

    move-result-wide v12

    .line 25
    iget-object v0, v9, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    invoke-interface {v0}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 26
    invoke-static {v8, v12, v13, v0}, Le/a/p5/s0/g;->W(Le/a/d/x/r/i;JLjava/util/Set;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_11

    .line 27
    iget-object v0, v9, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$j;->b:Le/a/d/w/h$b$j;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 28
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 29
    :cond_11
    :try_start_a
    new-instance v0, Le/a/d/x/r/j;

    iget-object v8, v9, Le/a/d/w/j/h;->b:Ljava/lang/String;

    sget-object v10, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-direct {v0, v8, v10}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    .line 30
    iget-object v8, v9, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v9, v4, Le/a/d/w/j/h$c;->g:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d/w/j/h$c;->h:Ljava/lang/Object;

    iput-object v7, v4, Le/a/d/w/j/h$c;->i:Ljava/lang/Object;

    iput-object v11, v4, Le/a/d/w/j/h$c;->j:Ljava/lang/Object;

    const/4 v10, 0x5

    iput v10, v4, Le/a/d/w/j/h$c;->e:I

    invoke-interface {v8, v0, v4}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_12

    return-object v5

    :cond_12
    move-object v5, v7

    move-object v4, v9

    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    .line 31
    iget-object v0, v4, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    sget-object v2, Le/a/d/w/h$b$f;->b:Le/a/d/w/h$b$f;

    invoke-interface {v0, v2}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 32
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v3

    .line 33
    :cond_13
    :try_start_b
    invoke-interface {v5, v2}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 35
    invoke-interface {v6, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v8, v6

    :goto_7
    invoke-interface {v8, v11}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public c()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/w/j/h$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/w/j/h$a;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/h;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
