.class public final Le/a/d/x/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/x/q/h;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Lcom/truecaller/voip/manager/VoipMsg;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Le/a/d/x/q/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/d/x/q/d$g;

.field public final e:Ls1/g;

.field public final f:Lq3/a/g0;

.field public final g:Le/a/d/c0/f0;

.field public final h:Le/a/d/c0/z1/i;

.field public final synthetic i:Lq3/a/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq3/a/i0;Lq3/a/g0;Le/a/d/c0/f0;Le/a/d/c0/z1/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lq3/a/y2/h;

    invoke-interface {p2}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p2

    invoke-interface {p2, p3}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p2

    invoke-direct {v0, p2}, Lq3/a/y2/h;-><init>(Ls1/w/f;)V

    .line 3
    iput-object v0, p0, Le/a/d/x/q/d;->i:Lq3/a/i0;

    iput-object p3, p0, Le/a/d/x/q/d;->f:Lq3/a/g0;

    iput-object p4, p0, Le/a/d/x/q/d;->g:Le/a/d/c0/f0;

    iput-object p5, p0, Le/a/d/x/q/d;->h:Le/a/d/c0/z1/i;

    .line 4
    sget-object p2, Lq3/a/w2/i;->b:Lq3/a/w2/i;

    const/16 p3, 0xf

    const/4 p4, 0x0

    const/4 p5, 0x2

    invoke-static {p3, p4, p2, p5}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p2

    iput-object p2, p0, Le/a/d/x/q/d;->a:Lq3/a/x2/z0;

    .line 5
    new-instance p2, Le/a/d/c0/r;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p3}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/a/d/x/q/d;->b:Le/a/d/c0/r;

    .line 6
    new-instance p2, Le/a/d/c0/r;

    sget-object p3, Le/a/d/x/q/i$a;->a:Le/a/d/x/q/i$a;

    invoke-direct {p2, p3}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/a/d/x/q/d;->c:Le/a/d/c0/r;

    .line 7
    new-instance p2, Le/a/d/x/q/d$g;

    invoke-direct {p2, p0}, Le/a/d/x/q/d$g;-><init>(Le/a/d/x/q/d;)V

    iput-object p2, p0, Le/a/d/x/q/d;->d:Le/a/d/x/q/d$g;

    .line 8
    new-instance p2, Le/a/d/x/q/d$b;

    invoke-direct {p2, p0, p1}, Le/a/d/x/q/d$b;-><init>(Le/a/d/x/q/d;Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/x/q/d;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/q/d;->c:Le/a/d/c0/r;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->muteLocalAudioStream(Z)I

    :cond_0
    return-void
.end method

.method public c()Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Lcom/truecaller/voip/manager/rtc/ChannelJoin;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/d/x/q/d$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/x/q/d$c;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lq3/a/x2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/q/d;->b:Le/a/d/c0/r;

    return-object v0
.end method

.method public destroy()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/d/x/q/d;->f:Lq3/a/g0;

    new-instance v3, Le/a/d/x/q/d$a;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Le/a/d/x/q/d$a;-><init>(Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public e()Lq3/a/x2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/q/d;->a:Lq3/a/x2/z0;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->enableAudio()I

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->disableAudio()I

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/x/q/d;->i:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/x/q/d;->c:Le/a/d/c0/r;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/q/i;

    .line 3
    instance-of v1, v0, Le/a/d/x/q/i$b;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/d/x/q/i$b;

    .line 4
    iget-object v0, v0, Le/a/d/x/q/i$b;->a:Ljava/util/Set;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    :goto_0
    return-object v0
.end method

.method public i(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/x/q/d;->h()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final j()Lio/agora/rtc/RtcEngine;
    .locals 1

    iget-object v0, p0, Le/a/d/x/q/d;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/RtcEngine;

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/voip/manager/rtc/ChannelJoin;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p6

    instance-of v2, v0, Le/a/d/x/q/d$d;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/d/x/q/d$d;

    iget v3, v2, Le/a/d/x/q/d$d;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/x/q/d$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/x/q/d$d;

    invoke-direct {v2, v7, v0}, Le/a/d/x/q/d$d;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    :goto_0
    move-object v6, v2

    iget-object v0, v6, Le/a/d/x/q/d$d;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v6, Le/a/d/x/q/d$d;->e:I

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v6, Le/a/d/x/q/d$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/x/q/d;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v7, Le/a/d/x/q/d;->a:Lq3/a/x2/z0;

    .line 5
    invoke-interface {v0}, Lq3/a/x2/z0;->f()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/a/d/x/q/d;->j()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual {v0, v2, v1, v9, v4}, Lio/agora/rtc/RtcEngine;->joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 7
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v9

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot join to channel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", returning false. Return code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget-object v8, v7, Le/a/d/x/q/d;->g:Le/a/d/c0/f0;

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-interface/range {v8 .. v16}, Le/a/d/c0/f0;->j(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;

    sget-object v1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;->RTC_JOIN_FAILED:Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;

    invoke-direct {v0, v1}, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;-><init>(Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;)V

    return-object v0

    .line 12
    :cond_5
    iput-object v7, v6, Le/a/d/x/q/d$d;->g:Ljava/lang/Object;

    iput v3, v6, Le/a/d/x/q/d$d;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Le/a/d/x/q/d;->l(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    return-object v8

    :cond_6
    move-object v1, v7

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, v1, Le/a/d/x/q/d;->a:Lq3/a/x2/z0;

    .line 14
    new-instance v2, Le/a/d/x/q/e;

    invoke-direct {v2, v9}, Le/a/d/x/q/e;-><init>(Ls1/w/d;)V

    .line 15
    new-instance v3, Lq3/a/x2/c0;

    invoke-direct {v3, v0, v2}, Lq3/a/x2/c0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 16
    new-instance v0, Le/a/d/x/q/f;

    invoke-direct {v0, v1, v9}, Le/a/d/x/q/f;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    .line 17
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, v3, v0}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 18
    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 19
    new-instance v0, Le/a/d/x/q/b;

    invoke-direct {v0, v1, v9}, Le/a/d/x/q/b;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 20
    sget-object v0, Lcom/truecaller/voip/manager/rtc/ChannelJoin$a;->a:Lcom/truecaller/voip/manager/rtc/ChannelJoin$a;

    goto :goto_4

    .line 21
    :cond_7
    new-instance v0, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;

    sget-object v1, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;->RTC_JOIN_FAILED:Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;

    invoke-direct {v0, v1}, Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed;-><init>(Lcom/truecaller/voip/manager/rtc/ChannelJoin$Failed$Reason;)V

    :goto_4
    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Le/a/d/x/q/d$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/x/q/d$e;

    iget v3, v2, Le/a/d/x/q/d$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/x/q/d$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/x/q/d$e;

    invoke-direct {v2, v0, v1}, Le/a/d/x/q/d$e;-><init>(Le/a/d/x/q/d;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/x/q/d$e;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/x/q/d$e;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v3, v2, Le/a/d/x/q/d$e;->l:I

    iget-object v4, v2, Le/a/d/x/q/d$e;->k:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Le/a/d/x/q/d$e;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Le/a/d/x/q/d$e;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Le/a/d/x/q/d$e;->h:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v2, v2, Le/a/d/x/q/d$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/q/d;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v10, v3

    move-object v14, v4

    move-object v13, v6

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d/x/q/d;->a:Lq3/a/x2/z0;

    .line 5
    new-instance v4, Le/a/d/x/q/d$f;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Le/a/d/x/q/d$f;-><init>(Ls1/w/d;)V

    iput-object v0, v2, Le/a/d/x/q/d$e;->g:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v2, Le/a/d/x/q/d$e;->h:Ljava/lang/Object;

    move-object/from16 v7, p2

    iput-object v7, v2, Le/a/d/x/q/d$e;->i:Ljava/lang/Object;

    move-object/from16 v8, p4

    iput-object v8, v2, Le/a/d/x/q/d$e;->j:Ljava/lang/Object;

    move-object/from16 v9, p5

    iput-object v9, v2, Le/a/d/x/q/d$e;->k:Ljava/lang/Object;

    move/from16 v10, p3

    iput v10, v2, Le/a/d/x/q/d$e;->l:I

    iput v5, v2, Le/a/d/x/q/d$e;->e:I

    invoke-static {v1, v4, v2}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v0

    move-object v13, v8

    move-object v14, v9

    move-object v8, v6

    :goto_1
    move-object v9, v7

    .line 6
    check-cast v1, Lcom/truecaller/voip/manager/VoipMsg;

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/voip/manager/VoipMsg;->getAction()Lcom/truecaller/voip/manager/VoipMsgAction;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    const/4 v15, 0x0

    if-eq v3, v4, :cond_5

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {v1}, Lcom/truecaller/voip/manager/VoipMsg;->getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object v1

    .line 9
    iget-object v6, v2, Le/a/d/x/q/d;->g:Le/a/d/c0/f0;

    .line 10
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getState()I

    move-result v11

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getReason()I

    move-result v12

    .line 13
    invoke-interface/range {v6 .. v14}, Le/a/d/c0/f0;->j(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v5, v15

    .line 14
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
