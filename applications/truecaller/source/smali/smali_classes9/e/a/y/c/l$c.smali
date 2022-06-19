.class public final Le/a/y/c/l$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/c/l;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V
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
    c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$triggerSendFlash$1"
    f = "FlashRequestHandler.kt"
    l = {
        0x53,
        0x5e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/y/c/l;

.field public final synthetic g:Lcom/truecaller/flashsdk/models/Flash;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iput-object p2, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    iput-boolean p3, p0, Le/a/y/c/l$c;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/y/c/l$c;

    iget-object v0, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v1, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    iget-boolean v2, p0, Le/a/y/c/l$c;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/l$c;-><init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/l$c;

    iget-object v0, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v1, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    iget-boolean v2, p0, Le/a/y/c/l$c;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/l$c;-><init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/c/l$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/y/c/l$c;->e:I

    const/16 v3, 0xe

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v2, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    .line 5
    iget-wide v7, v2, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 6
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Le/a/y/c/l;->e(Le/a/y/c/l;Ljava/lang/String;)Lq3/a/n0;

    move-result-object p1

    iput v6, p0, Le/a/y/c/l$c;->e:I

    check-cast p1, Lq3/a/o0;

    .line 7
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v1, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    const/16 v2, 0xb

    invoke-static {p1, v1, v2, v2}, Le/a/y/c/l;->g(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;II)V

    return-object v0

    .line 10
    :cond_4
    iget-object v2, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    invoke-virtual {v2, p1}, Lcom/truecaller/flashsdk/models/Flash;->f(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FlashRequest;

    move-result-object p1

    const-string v2, "flash.toFlashRequest(pushToken)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v6, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    invoke-static {v2, v6}, Le/a/y/c/l;->f(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;)V

    .line 12
    iget-boolean v2, p0, Le/a/y/c/l$c;->h:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v6, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    .line 13
    iget-object v2, v2, Le/a/y/c/l;->a:Le/a/y/c/b;

    invoke-interface {v2}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v2, v6}, Le/a/y/c/i;->k(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 15
    :cond_5
    iget-object v2, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    .line 16
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    const-string v6, "final"

    .line 17
    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 18
    :goto_1
    iget-object v2, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    .line 19
    iget-object v2, v2, Le/a/y/c/l;->a:Le/a/y/c/b;

    .line 20
    iget-object v8, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    .line 21
    iget-wide v8, v8, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 22
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    invoke-interface {v2, v8, v6, v7, v9}, Le/a/y/c/b;->i(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V

    .line 23
    iget-object v2, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    invoke-static {v2, p1}, Le/a/y/c/l;->h(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/FlashRequest;)Lq3/a/n0;

    move-result-object p1

    iput v5, p0, Le/a/y/c/l$c;->e:I

    check-cast p1, Lq3/a/o0;

    .line 24
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 25
    :cond_7
    :goto_2
    check-cast p1, Lx3/a0;

    if-nez p1, :cond_8

    .line 26
    iget-object p1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v1, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    invoke-static {p1, v1, v4, v3}, Le/a/y/c/l;->g(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;II)V

    return-object v0

    .line 27
    :cond_8
    iget-object v1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v2, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 30
    iget-object p1, v1, Le/a/y/c/l;->c:Le/a/y/c/j;

    if-eqz p1, :cond_b

    invoke-interface {p1, v2}, Le/a/y/c/j;->b(Lcom/truecaller/flashsdk/models/Flash;)V

    goto :goto_3

    :cond_9
    const/16 v5, 0xd

    .line 31
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 32
    iget p1, p1, Lu3/k0;->e:I

    .line 33
    iget-object v6, v1, Le/a/y/c/l;->c:Le/a/y/c/j;

    if-eqz v6, :cond_a

    invoke-interface {v6, v2, v5, p1}, Le/a/y/c/j;->j(Lcom/truecaller/flashsdk/models/Flash;II)V

    .line 34
    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 35
    :catch_0
    iget-object p1, p0, Le/a/y/c/l$c;->f:Le/a/y/c/l;

    iget-object v1, p0, Le/a/y/c/l$c;->g:Lcom/truecaller/flashsdk/models/Flash;

    invoke-static {p1, v1, v4, v3}, Le/a/y/c/l;->g(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;II)V

    :cond_b
    :goto_3
    return-object v0
.end method
