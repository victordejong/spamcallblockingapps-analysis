.class public final Le/a/i/f0/n/a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.ads.provider.house.DefaultHouseAdsProvider$restartAdTimer$1"
    f = "HouseAdsProvider.kt"
    l = {
        0x58,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/f0/n/b;

.field public final synthetic g:Le/a/i/f0/n/e;

.field public final synthetic h:Le/a/i/s;


# direct methods
.method public constructor <init>(Le/a/i/f0/n/b;Le/a/i/f0/n/e;Le/a/i/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/n/a;->f:Le/a/i/f0/n/b;

    iput-object p2, p0, Le/a/i/f0/n/a;->g:Le/a/i/f0/n/e;

    iput-object p3, p0, Le/a/i/f0/n/a;->h:Le/a/i/s;

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

    new-instance p1, Le/a/i/f0/n/a;

    iget-object v0, p0, Le/a/i/f0/n/a;->f:Le/a/i/f0/n/b;

    iget-object v1, p0, Le/a/i/f0/n/a;->g:Le/a/i/f0/n/e;

    iget-object v2, p0, Le/a/i/f0/n/a;->h:Le/a/i/s;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/n/a;-><init>(Le/a/i/f0/n/b;Le/a/i/f0/n/e;Le/a/i/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/n/a;

    iget-object v0, p0, Le/a/i/f0/n/a;->f:Le/a/i/f0/n/b;

    iget-object v1, p0, Le/a/i/f0/n/a;->g:Le/a/i/f0/n/e;

    iget-object v2, p0, Le/a/i/f0/n/a;->h:Le/a/i/s;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/n/a;-><init>(Le/a/i/f0/n/b;Le/a/i/f0/n/e;Le/a/i/s;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/n/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/f0/n/a;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/f0/n/a;->f:Le/a/i/f0/n/b;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Le/a/i/f0/n/b;->d:Le/a/z4/a;

    const-wide/16 v4, 0x0

    const-string v6, "adsFeatureHouseAdsTimeout"

    invoke-interface {p1, v6, v4, v5}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 7
    iput v3, p0, Le/a/i/f0/n/a;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    iput v2, p0, Le/a/i/f0/n/a;->e:I

    invoke-static {p0}, Lq3/a/j;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Le/a/i/f0/n/a;->g:Le/a/i/f0/n/e;

    .line 10
    iput-boolean v3, p1, Le/a/i/f0/n/e;->c:Z

    .line 11
    iget-object p1, p0, Le/a/i/f0/n/a;->f:Le/a/i/f0/n/b;

    iget-object v0, p0, Le/a/i/f0/n/a;->h:Le/a/i/s;

    .line 12
    invoke-virtual {p1, v0}, Le/a/i/f0/n/b;->c(Le/a/i/s;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
