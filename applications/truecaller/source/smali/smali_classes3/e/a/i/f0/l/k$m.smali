.class public final Le/a/i/f0/l/k$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/k;->y()V
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
    c = "com.truecaller.ads.provider.fetch.AdsHolderImpl$trackAdExpiration$1"
    f = "AdsHolderImpl.kt"
    l = {
        0x1d9,
        0x1da
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/f0/l/k;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

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

    new-instance p1, Le/a/i/f0/l/k$m;

    iget-object v0, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/l/k$m;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/k$m;

    iget-object v0, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/l/k$m;-><init>(Le/a/i/f0/l/k;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/l/k$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/i/f0/l/k$m;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

    .line 5
    iget-object p1, p1, Le/a/i/f0/l/k;->k:Le/a/p5/c;

    .line 6
    invoke-interface {p1}, Le/a/p5/c;->b()J

    move-result-wide v5

    .line 7
    iget-object p1, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

    .line 8
    iget-object p1, p1, Le/a/i/f0/l/k;->e:Ljava/util/ArrayDeque;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Le/a/i/f0/l/u;

    .line 12
    iget-object v8, v7, Le/a/i/f0/l/u;->c:Le/a/i/f0/m/d;

    invoke-interface {v8}, Le/a/i/f0/m/d;->c()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v7, Le/a/i/f0/l/u;->d:J

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 13
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "$this$min"

    .line 15
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v2}, Ls1/u/i;->Y(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_5

    .line 18
    iput v4, p0, Le/a/i/f0/l/k$m;->e:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 19
    :cond_4
    :goto_1
    iput v3, p0, Le/a/i/f0/l/k$m;->e:I

    invoke-static {p0}, Lq3/a/j;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 20
    :cond_5
    :goto_2
    iget-object p1, p0, Le/a/i/f0/l/k$m;->f:Le/a/i/f0/l/k;

    .line 21
    invoke-virtual {p1}, Le/a/i/f0/l/k;->i()V

    :cond_6
    return-object v0
.end method
