.class public final Le/a/d/b/a/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->Mj()Lq3/a/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$exitDelayed$1"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x372
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/b$c;

    iget-object v0, p0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/b$c;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/b/a/b$c;

    iget-object v0, p0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    invoke-direct {p1, v0, p2}, Le/a/d/b/a/b$c;-><init>(Le/a/d/b/a/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/b/a/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/b/a/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 5
    invoke-virtual {v2}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v2

    .line 6
    iget-boolean v2, v2, Le/a/d/x/p;->c:Z

    if-nez v2, :cond_2

    .line 7
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 8
    iget-object v2, v2, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 9
    iget-boolean v2, v2, Le/a/d/x/p;->c:Z

    if-eqz v2, :cond_3

    .line 10
    :cond_2
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 11
    invoke-virtual {v2}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b

    .line 12
    invoke-static/range {v4 .. v10}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object v4

    .line 13
    iget-object v2, v2, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 14
    invoke-static {v2, v4}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 15
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 16
    invoke-virtual {v2}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v4

    .line 17
    invoke-static/range {v4 .. v10}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object v4

    .line 18
    iput-object v4, v2, Le/a/d/b/a/b;->j:Le/a/d/x/p;

    .line 19
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 20
    invoke-virtual {v2}, Le/a/d/b/a/b;->bk()V

    .line 21
    :cond_3
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 22
    invoke-virtual {v2}, Le/a/d/b/a/b;->Nj()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 23
    iget-boolean v4, v2, Le/a/d/b/a/b;->k:Z

    if-ne v4, v3, :cond_4

    .line 24
    sget-object v4, Lcom/truecaller/voip/util/VoipEventType;->INCOMING:Lcom/truecaller/voip/util/VoipEventType;

    :goto_0
    move-object v6, v4

    goto :goto_1

    :cond_4
    if-nez v4, :cond_7

    .line 25
    sget-object v4, Lcom/truecaller/voip/util/VoipEventType;->OUTGOING:Lcom/truecaller/voip/util/VoipEventType;

    goto :goto_0

    .line 26
    :goto_1
    iget-wide v7, v2, Le/a/d/b/a/b;->l:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    .line 27
    iget-object v2, v2, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    new-instance v11, Le/a/d/c0/w0;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Le/a/d/c0/w0;-><init>(Ljava/lang/String;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;I)V

    invoke-interface {v2, v11}, Le/a/d/c0/j1;->F(Le/a/d/c0/w0;)V

    goto :goto_2

    .line 28
    :cond_5
    iget-object v4, v2, Le/a/d/b/a/b;->y:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->a()J

    move-result-wide v7

    iget-wide v9, v2, Le/a/d/b/a/b;->l:J

    sub-long/2addr v7, v9

    .line 29
    iget-object v11, v2, Le/a/d/b/a/b;->E:Le/a/d/c0/f0;

    const/4 v12, 0x0

    iget-object v13, v2, Le/a/d/b/a/b;->e:Ljava/lang/String;

    if-eqz v13, :cond_6

    const/16 v16, 0x0

    move-wide v14, v7

    .line 30
    invoke-interface/range {v11 .. v16}, Le/a/d/c0/f0;->f(ZLjava/lang/String;JLjava/lang/Integer;)V

    .line 31
    iget-object v2, v2, Le/a/d/b/a/b;->w:Le/a/d/c0/j1;

    new-instance v11, Le/a/d/c0/w0;

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Le/a/d/c0/w0;-><init>(Ljava/lang/String;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;I)V

    invoke-interface {v2, v11}, Le/a/d/c0/j1;->F(Le/a/d/c0/w0;)V

    goto :goto_2

    :cond_6
    const-string v1, "channelId"

    .line 32
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 33
    :cond_7
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 34
    :cond_8
    :goto_2
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 35
    iget-object v2, v2, Le/a/d/b/a/b;->u:Le/a/d/x/l;

    .line 36
    check-cast v2, Le/a/d/x/d;

    .line 37
    iget-object v4, v2, Le/a/d/x/d;->b:Lq3/a/x2/z0;

    .line 38
    invoke-interface {v4}, Lq3/a/x2/z0;->f()V

    .line 39
    invoke-virtual {v2}, Le/a/d/x/d;->b()Lio/agora/rtc/RtcEngine;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    .line 40
    :cond_9
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 41
    iget-object v2, v2, Le/a/d/b/a/b;->D:Le/a/d/x/r/n;

    .line 42
    invoke-interface {v2}, Le/a/d/x/r/n;->a()V

    .line 43
    iget-object v2, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 44
    iget-object v2, v2, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v2, :cond_a

    .line 45
    invoke-interface {v2}, Le/a/d/b/a/e;->v()V

    :cond_a
    const-wide/16 v4, 0x3e8

    .line 46
    iput v3, v0, Le/a/d/b/a/b$c;->e:I

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    return-object v1

    .line 47
    :cond_b
    :goto_3
    iget-object v1, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 48
    iget-object v1, v1, Le/a/d/b/a/b;->d:Le/a/d/b/a/e;

    if-eqz v1, :cond_c

    .line 49
    invoke-interface {v1}, Le/a/d/b/a/e;->t()Lq3/a/p1;

    .line 50
    :cond_c
    iget-object v1, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 51
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/a/g;

    if-eqz v1, :cond_d

    .line 52
    invoke-interface {v1}, Le/a/d/b/a/g;->t()V

    .line 53
    :cond_d
    iget-object v1, v0, Le/a/d/b/a/b$c;->f:Le/a/d/b/a/b;

    .line 54
    iget-object v1, v1, Le/a/d/b/a/b;->A:Le/a/d/c0/o;

    .line 55
    invoke-interface {v1}, Le/a/d/c0/o;->t()V

    .line 56
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
