.class public final Le/a/i/e/a/b/g;
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
    c = "com.truecaller.ads.offline.adtype.article.ArticleViewModel$loadArticlePage$1"
    f = "ArticleViewModel.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/b/g;->f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

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

    new-instance p1, Le/a/i/e/a/b/g;

    iget-object v0, p0, Le/a/i/e/a/b/g;->f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/b/g;-><init>(Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/a/b/g;

    iget-object v0, p0, Le/a/i/e/a/b/g;->f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/b/g;-><init>(Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/e/a/b/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/e/a/b/g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/e/a/b/g;->f:Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;

    .line 5
    iget-object v1, p1, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->e:Le/a/i/e/a/b/d;

    .line 6
    iget-object p1, p1, Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "leadGenId"

    if-eqz p1, :cond_3

    .line 7
    check-cast v1, Le/a/i/e/a/b/f;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Le/a/i/e/a/b/e;

    invoke-direct {v4, v1, p1, v3}, Le/a/i/e/a/b/e;-><init>(Le/a/i/e/a/b/f;Ljava/lang/String;Ls1/w/d;)V

    .line 10
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v4}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 11
    iget-object v1, v1, Le/a/i/e/a/b/f;->b:Ls1/w/f;

    invoke-static {p1, v1}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 12
    new-instance v1, Le/a/i/e/a/b/g$a;

    invoke-direct {v1, p0}, Le/a/i/e/a/b/g$a;-><init>(Le/a/i/e/a/b/g;)V

    iput v2, p0, Le/a/i/e/a/b/g;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 14
    :cond_3
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
