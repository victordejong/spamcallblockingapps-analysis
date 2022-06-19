.class public final synthetic Lq3/a/x2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a0\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\u001a\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\n\u001a/\u0010\u000b\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a9\u0010\u0010\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\n\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "asFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "broadcastIn",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "start",
        "Lkotlinx/coroutines/CoroutineStart;",
        "consumeAsFlow",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "emitAll",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "channel",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitAllImpl",
        "consume",
        "",
        "emitAllImpl$FlowKt__ChannelsKt",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "produceIn",
        "receiveAsFlow",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final a(Lq3/a/x2/g;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lq3/a/x2/z;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq3/a/x2/z;

    iget v1, v0, Lq3/a/x2/z;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/z;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/z;

    invoke-direct {v0, p2}, Lq3/a/x2/z;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lq3/a/x2/z;->e:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 2
    iget v2, v0, Lq3/a/x2/z;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    iget-object p0, v0, Lq3/a/x2/z;->d:Ljava/lang/Object;

    check-cast p0, Lq3/a/x2/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iput-object p0, v0, Lq3/a/x2/z;->d:Ljava/lang/Object;

    iput v3, v0, Lq3/a/x2/z;->f:I

    invoke-interface {p0, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    new-instance p1, Lq3/a/x2/o1/a;

    invoke-direct {p1, p0}, Lq3/a/x2/o1/a;-><init>(Lq3/a/x2/g;)V

    throw p1
.end method

.method public static final b(Lq3/a/x2/g;Lq3/a/w2/z;ZLs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Lq3/a/w2/z<",
            "+TT;>;Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lq3/a/x2/m$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lq3/a/x2/m$a;

    iget v1, v0, Lq3/a/x2/m$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/m$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/m$a;

    invoke-direct {v0, p3}, Lq3/a/x2/m$a;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Lq3/a/x2/m$a;->g:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lq3/a/x2/m$a;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    iget-boolean p0, v0, Lq3/a/x2/m$a;->f:Z

    iget-object p1, v0, Lq3/a/x2/m$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/z;

    iget-object p2, v0, Lq3/a/x2/m$a;->d:Ljava/lang/Object;

    check-cast p2, Lq3/a/x2/g;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget-boolean p0, v0, Lq3/a/x2/m$a;->f:Z

    iget-object p1, v0, Lq3/a/x2/m$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/z;

    iget-object p2, v0, Lq3/a/x2/m$a;->d:Ljava/lang/Object;

    check-cast p2, Lq3/a/x2/g;

    :try_start_1
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p3, Lq3/a/w2/m;

    .line 4
    iget-object p3, p3, Lq3/a/w2/m;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 5
    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 6
    instance-of p3, p0, Lq3/a/x2/n1;

    if-nez p3, :cond_a

    .line 7
    :goto_1
    :try_start_2
    iput-object p0, v0, Lq3/a/x2/m$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lq3/a/x2/m$a;->e:Ljava/lang/Object;

    iput-boolean p2, v0, Lq3/a/x2/m$a;->f:Z

    iput v3, v0, Lq3/a/x2/m$a;->h:I

    invoke-interface {p1, v0}, Lq3/a/w2/z;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move v6, p2

    move-object p2, p0

    move p0, v6

    :goto_2
    const/4 v2, 0x0

    .line 8
    :try_start_3
    instance-of v5, p3, Lq3/a/w2/m$a;

    if-eqz v5, :cond_8

    .line 9
    invoke-static {p3}, Lq3/a/w2/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_7

    if-eqz p0, :cond_6

    .line 10
    invoke-static {p1, v2}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    .line 11
    :cond_6
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0

    .line 12
    :cond_7
    :try_start_4
    throw p2

    .line 13
    :cond_8
    invoke-static {p3}, Lq3/a/w2/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v0, Lq3/a/x2/m$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lq3/a/x2/m$a;->e:Ljava/lang/Object;

    iput-boolean p0, v0, Lq3/a/x2/m$a;->f:Z

    iput v4, v0, Lq3/a/x2/m$a;->h:I

    invoke-interface {p2, p3, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :catchall_1
    move-exception p0

    move v6, p2

    move-object p2, p0

    move p0, v6

    .line 14
    :goto_3
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p3

    if-eqz p0, :cond_9

    .line 15
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->Z(Lq3/a/w2/z;Ljava/lang/Throwable;)V

    :cond_9
    throw p3

    .line 16
    :cond_a
    check-cast p0, Lq3/a/x2/n1;

    iget-object p0, p0, Lq3/a/x2/n1;->a:Ljava/lang/Throwable;

    throw p0
.end method
