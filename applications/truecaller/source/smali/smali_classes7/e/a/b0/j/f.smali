.class public final Le/a/b0/j/f;
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
    c = "com.truecaller.common.country.CountyRepositoryDelegate$updateFromNetwork$2"
    f = "CountyRepositoryDelegate.kt"
    l = {
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b0/j/d;


# direct methods
.method public constructor <init>(Le/a/b0/j/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

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

    new-instance v0, Le/a/b0/j/f;

    iget-object v1, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    invoke-direct {v0, v1, p2}, Le/a/b0/j/f;-><init>(Le/a/b0/j/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b0/j/f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b0/j/f;

    iget-object v1, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    invoke-direct {v0, v1, p2}, Le/a/b0/j/f;-><init>(Le/a/b0/j/d;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b0/j/f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b0/j/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/b0/j/f;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b0/j/f;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    .line 5
    iget-object v4, v2, Le/a/b0/j/d;->f:Le/a/b0/b/i/a;

    .line 6
    invoke-virtual {v2}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Le/a/b0/j/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Le/a/b0/b/i/a;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v2

    invoke-interface {v2}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2

    const-string v4, "response"

    .line 8
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lx3/a0;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v2, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 10
    check-cast v2, Lcom/truecaller/common/network/country/CountryListDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "Unable to load countries from network"

    .line 11
    invoke-static {v2, v4}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_4

    .line 12
    sget-object v4, Le/a/b0/j/a;->h:Le/a/b0/j/a$a;

    .line 13
    new-instance v4, Le/a/b0/j/a;

    invoke-direct {v4, v2, p1}, Le/a/b0/j/a;-><init>(Lcom/truecaller/common/network/country/CountryListDto;Ls1/z/c/f;)V

    .line 14
    iget-object p1, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    .line 15
    invoke-virtual {p1, v4}, Le/a/b0/j/d;->f(Le/a/b0/j/a;)V

    .line 16
    iget-object p1, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    .line 17
    invoke-virtual {p1}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object p1

    .line 18
    iget-object v2, p0, Le/a/b0/j/f;->g:Le/a/b0/j/d;

    .line 19
    iget-object v5, v2, Le/a/b0/j/d;->e:Le/a/p5/o;

    .line 20
    iget-object v2, v2, Le/a/b0/j/d;->c:Landroid/content/Context;

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v6, "context.filesDir"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Le/a/b0/j/f;->f:I

    invoke-virtual {p1, v5, v4, v2, p0}, Le/a/b0/j/a;->d(Le/a/p5/o;Le/a/b0/j/a;Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method
