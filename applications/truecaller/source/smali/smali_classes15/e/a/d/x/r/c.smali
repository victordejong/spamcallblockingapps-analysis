.class public final Le/a/d/x/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/x/r/n;
.implements Lq3/a/i0;


# instance fields
.field public volatile a:Z

.field public final b:Lq3/a/b3/c;

.field public c:Ljava/lang/String;

.field public final d:Ls1/w/f;

.field public final e:Le/a/d/c0/y0;

.field public final f:Le/a/d/c0/o1;

.field public final g:Le/a/d/x/r/o;

.field public final h:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/c0/o1;Le/a/d/x/r/o;Le/a/d/c0/f0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipIdProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipTokenProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/x/r/c;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/d/x/r/c;->e:Le/a/d/c0/y0;

    iput-object p3, p0, Le/a/d/x/r/c;->f:Le/a/d/c0/o1;

    iput-object p4, p0, Le/a/d/x/r/c;->g:Le/a/d/x/r/o;

    iput-object p5, p0, Le/a/d/x/r/c;->h:Le/a/d/c0/f0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 3
    new-instance p1, Le/a/d/x/r/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/d/x/r/b;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    invoke-interface {p4, p0, p1}, Le/a/d/x/r/o;->c(Lq3/a/i0;Ls1/z/b/p;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    new-instance v3, Le/a/d/x/r/c$j;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/x/r/c$j;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/d/x/r/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/x/r/c$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/x/r/c$a;

    iget v1, v0, Le/a/d/x/r/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/x/r/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/x/r/c$a;

    invoke-direct {v0, p0, p3}, Le/a/d/x/r/c$a;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/x/r/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/x/r/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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

    new-instance p3, Le/a/d/x/r/c$b;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Le/a/d/x/r/c$b;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    iput v3, v0, Le/a/d/x/r/c$a;->e:I

    invoke-static {p1, p2, p3, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Le/a/d/x/r/m;

    if-eqz p3, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p3, Le/a/d/x/r/g;

    sget-object p1, Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;->TIMED_OUT:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    invoke-direct {p3, p1}, Le/a/d/x/r/g;-><init>(Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;)V

    :goto_2
    return-object p3
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/x/r/c;->a:Z

    return v0
.end method

.method public e(JLs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/z/b/a<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/x/r/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/d/x/r/c$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/d/x/r/c$c;

    iget v1, v0, Le/a/d/x/r/c$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/x/r/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/x/r/c$c;

    invoke-direct {v0, p0, p4}, Le/a/d/x/r/c$c;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/d/x/r/c$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/x/r/c$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-instance p4, Le/a/d/x/r/c$d;

    const/4 v2, 0x0

    invoke-direct {p4, p0, p3, v2}, Le/a/d/x/r/c$d;-><init>(Le/a/d/x/r/c;Ls1/z/b/a;Ls1/w/d;)V

    iput v3, v0, Le/a/d/x/r/c$c;->e:I

    invoke-static {p1, p2, p4, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Le/a/d/x/r/m;

    if-eqz p4, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p4, Le/a/d/x/r/g;

    sget-object p1, Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;->TIMED_OUT:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    invoke-direct {p4, p1}, Le/a/d/x/r/g;-><init>(Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;)V

    :goto_2
    return-object p4
.end method

.method public f(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/d/x/r/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/x/r/c$i;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    invoke-static {p1, p2, v0, p3}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic g(ZLs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/z/b/a<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/x/r/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/x/r/c;->d:Ls1/w/f;

    new-instance v1, Le/a/d/x/r/c$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Le/a/d/x/r/c$e;-><init>(Le/a/d/x/r/c;Ls1/z/b/a;ZLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/x/r/c;->d:Ls1/w/f;

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    instance-of v1, v0, Le/a/d/x/r/c$g;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/d/x/r/c$g;

    iget v2, v1, Le/a/d/x/r/c$g;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/x/r/c$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/x/r/c$g;

    invoke-direct {v1, v7, v0}, Le/a/d/x/r/c$g;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    :goto_0
    move-object v10, v1

    iget-object v0, v10, Le/a/d/x/r/c$g;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v10, Le/a/d/x/r/c$g;->e:I

    const/4 v12, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v12, :cond_1

    iget v1, v10, Le/a/d/x/r/c$g;->l:I

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v10, Le/a/d/x/r/c$g;->j:Ljava/lang/Object;

    check-cast v1, Lio/agora/rtm/RtmClient;

    iget-object v1, v10, Le/a/d/x/r/c$g;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v10, Le/a/d/x/r/c$g;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v10, Le/a/d/x/r/c$g;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/x/r/c;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v7, Le/a/d/x/r/c;->g:Le/a/d/x/r/o;

    invoke-interface {v0}, Le/a/d/x/r/o;->f()Lio/agora/rtm/RtmClient;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 5
    iput-object v7, v10, Le/a/d/x/r/c$g;->g:Ljava/lang/Object;

    iput-object v8, v10, Le/a/d/x/r/c$g;->h:Ljava/lang/Object;

    iput-object v9, v10, Le/a/d/x/r/c$g;->i:Ljava/lang/Object;

    iput-object v13, v10, Le/a/d/x/r/c$g;->j:Ljava/lang/Object;

    move/from16 v6, p3

    iput-boolean v6, v10, Le/a/d/x/r/c$g;->k:Z

    iput v2, v10, Le/a/d/x/r/c$g;->e:I

    .line 6
    new-instance v14, Lq3/a/o;

    invoke-static {v10}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v0

    invoke-direct {v14, v0, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 7
    invoke-virtual {v14}, Lq3/a/o;->z()V

    .line 8
    new-instance v15, Le/a/d/x/r/c$f;

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Le/a/d/x/r/c$f;-><init>(Lq3/a/n;Le/a/d/x/r/c;Lio/agora/rtm/RtmClient;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v9, v8, v15}, Lio/agora/rtm/RtmClient;->login(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V

    .line 9
    invoke-virtual {v14}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_4

    const-string v1, "frame"

    .line 10
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-ne v0, v11, :cond_5

    return-object v11

    :cond_5
    move-object v1, v7

    .line 11
    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    .line 12
    iput-object v2, v10, Le/a/d/x/r/c$g;->g:Ljava/lang/Object;

    iput-object v2, v10, Le/a/d/x/r/c$g;->h:Ljava/lang/Object;

    iput-object v2, v10, Le/a/d/x/r/c$g;->i:Ljava/lang/Object;

    iput-object v2, v10, Le/a/d/x/r/c$g;->j:Ljava/lang/Object;

    iput v0, v10, Le/a/d/x/r/c$g;->l:I

    iput v12, v10, Le/a/d/x/r/c$g;->e:I

    invoke-virtual {v1, v10}, Le/a/d/x/r/c;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_6

    return-object v11

    :cond_6
    move v1, v0

    :goto_2
    move v0, v1

    .line 13
    :cond_7
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 14
    :cond_8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
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

    .line 1
    iget-object v0, p0, Le/a/d/x/r/c;->g:Le/a/d/x/r/o;

    invoke-interface {v0}, Le/a/d/x/r/o;->f()Lio/agora/rtm/RtmClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 3
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 4
    new-instance v2, Le/a/d/x/r/c$h;

    invoke-direct {v2, v1, p0, v0}, Le/a/d/x/r/c$h;-><init>(Lq3/a/n;Le/a/d/x/r/c;Lio/agora/rtm/RtmClient;)V

    invoke-virtual {v0, v2}, Lio/agora/rtm/RtmClient;->logout(Lio/agora/rtm/ResultCallback;)V

    .line 5
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 6
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_0

    const-string v1, "frame"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 8
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
