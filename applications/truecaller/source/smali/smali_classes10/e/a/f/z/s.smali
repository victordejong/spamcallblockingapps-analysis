.class public final Le/a/f/z/s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/p5/v0/a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.InCallUIFeatureWatchDogImpl$initInternal$2"
    f = "InCallUIFeatureWatchDog.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/z/r;


# direct methods
.method public constructor <init>(Le/a/f/z/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/z/s;

    iget-object v1, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    invoke-direct {v0, v1, p2}, Le/a/f/z/s;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/s;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/z/s;

    iget-object v1, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    invoke-direct {v0, v1, p2}, Le/a/f/z/s;-><init>(Le/a/f/z/r;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/s;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/z/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/z/s;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, p0, Le/a/f/z/s;->e:Ljava/lang/Object;

    check-cast v1, Le/a/p5/v0/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/z/s;->e:Ljava/lang/Object;

    check-cast p1, Le/a/p5/v0/a;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telephone call state is received: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    instance-of v2, p1, Le/a/p5/v0/a$a;

    if-eqz v2, :cond_2

    return-object v0

    .line 6
    :cond_2
    iget-object v2, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    .line 7
    iget-object v2, v2, Le/a/f/z/r;->h:Lo3/a;

    .line 8
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/m;

    invoke-interface {v2}, Le/a/f/m;->a()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 9
    :cond_3
    iget-object v2, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    invoke-virtual {p1}, Le/a/p5/v0/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 11
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    move v7, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v7, v5

    :goto_1
    if-eqz v7, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    iget-object v7, v2, Le/a/f/z/r;->l:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b0/q/h0;

    invoke-interface {v7, v6}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iget-object v2, v2, Le/a/f/z/r;->l:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/q/h0;

    invoke-interface {v2, v6}, Le/a/b0/q/h0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    if-nez v2, :cond_9

    return-object v0

    .line 14
    :cond_9
    iget-object v2, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    .line 15
    iget-object v2, v2, Le/a/f/z/r;->i:Lo3/a;

    .line 16
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->l()Lq3/a/w2/h;

    move-result-object v2

    .line 17
    new-instance v6, Lq3/a/x2/l;

    invoke-direct {v6, v2}, Lq3/a/x2/l;-><init>(Lq3/a/w2/h;)V

    const-wide/16 v7, 0xbb8

    .line 18
    new-instance v2, Le/a/f/z/s$a;

    invoke-direct {v2, v6, v3}, Le/a/f/z/s$a;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    iput-object p1, p0, Le/a/f/z/s;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/f/z/s;->f:I

    invoke-static {v7, v8, v2, p0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v1, p1

    move-object p1, v2

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    :cond_b
    move p1, v4

    :goto_5
    if-eqz p1, :cond_c

    .line 19
    iget-object p1, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    .line 20
    invoke-virtual {p1}, Le/a/f/z/r;->b()V

    return-object v0

    .line 21
    :cond_c
    iget-object p1, p0, Le/a/f/z/s;->g:Le/a/f/z/r;

    .line 22
    iget-object v2, p1, Le/a/f/z/r;->m:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a;

    new-instance v6, Le/a/f/z/t;

    invoke-direct {v6, v1}, Le/a/f/z/t;-><init>(Le/a/p5/v0/a;)V

    invoke-interface {v2, v6}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 23
    iget-object v1, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/WatchDogConfig;->getMaxFailureCount()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_6

    .line 24
    :cond_d
    iget-object v1, p1, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/z/y;

    const-string v2, "watchDogInCallUIFailureCount"

    invoke-interface {v1, v2, v4}, Le/a/f/z/y;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    .line 25
    iget-object v4, p1, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/f/z/y;

    invoke-interface {v4, v2, v1}, Le/a/f/z/y;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object v2, p1, Le/a/f/z/r;->c:Lcom/truecaller/incallui/utils/WatchDogConfig;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/WatchDogConfig;->getMaxFailureCount()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 27
    iget-object v1, p1, Le/a/f/z/r;->j:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/z/y;

    iget-object v2, p1, Le/a/f/z/r;->k:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v6

    const-string v2, "watchDogInCallUIDisabledTimestamp"

    invoke-interface {v1, v2, v6, v7}, Le/a/f/z/y;->putLong(Ljava/lang/String;J)V

    .line 28
    invoke-virtual {p1}, Le/a/f/z/r;->b()V

    .line 29
    iget-object v1, p1, Le/a/f/z/r;->m:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a;

    new-instance v2, Le/a/f/z/o;

    invoke-direct {v2}, Le/a/f/z/o;-><init>()V

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 30
    iget-object p1, p1, Le/a/f/z/r;->a:Ls1/w/f;

    .line 31
    invoke-static {p1, v3, v5, v3}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_e
    :goto_6
    return-object v0
.end method
