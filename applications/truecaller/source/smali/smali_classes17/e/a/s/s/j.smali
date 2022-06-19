.class public final Le/a/s/s/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/s/i;


# instance fields
.field public final a:Le/m/a/c/p1/h0/g;

.field public final b:Le/a/s/o/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/s/o/d;Le/a/b0/b/j/e/d;)V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restAdapter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/s/s/j;->b:Le/a/s/o/d;

    .line 2
    new-instance p2, Le/m/a/c/p1/h0/g;

    .line 3
    new-instance v0, Le/m/a/c/p1/h0/v;

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "CallAssistantVoices"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v2, Le/m/a/c/p1/h0/t;

    const-wide/32 v3, 0x200000

    invoke-direct {v2, v3, v4}, Le/m/a/c/p1/h0/t;-><init>(J)V

    .line 6
    new-instance v3, Le/m/a/c/d1/c;

    invoke-direct {v3, p1}, Le/m/a/c/d1/c;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-direct {v0, v1, v2, v3}, Le/m/a/c/p1/h0/v;-><init>(Ljava/io/File;Le/m/a/c/p1/h0/h;Le/m/a/c/d1/b;)V

    .line 8
    new-instance v1, Le/m/a/c/p1/r;

    check-cast p3, Le/a/b0/b/j/e/b;

    invoke-virtual {p3}, Le/a/b0/b/j/e/b;->a()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, p3, v2}, Le/m/a/c/p1/r;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/a/c/p1/f0;)V

    .line 10
    invoke-direct {p2, v0, v1}, Le/m/a/c/p1/h0/g;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V

    iput-object p2, p0, Le/a/s/s/j;->a:Le/m/a/c/p1/h0/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/m/a/c/l1/p;
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p0, Le/a/s/s/j;->a:Le/m/a/c/p1/h0/g;

    .line 2
    new-instance v4, Le/m/a/c/g1/f;

    invoke-direct {v4}, Le/m/a/c/g1/f;-><init>()V

    .line 3
    sget-object v5, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    .line 4
    new-instance v6, Le/m/a/c/p1/u;

    invoke-direct {v6}, Le/m/a/c/p1/u;-><init>()V

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6
    new-instance p1, Le/m/a/c/l1/t;

    const/4 v7, 0x0

    const/high16 v8, 0x100000

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Le/m/a/c/l1/t;-><init>(Landroid/net/Uri;Le/m/a/c/p1/l$a;Le/m/a/c/g1/j;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Ljava/lang/String;ILjava/lang/Object;)V

    const-string v0, "ProgressiveMediaSource.F\u2026diaSource(Uri.parse(url))"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/s/s/j$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/s/s/j$a;

    iget v1, v0, Le/a/s/s/j$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/s/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/s/j$a;

    invoke-direct {v0, p0, p1}, Le/a/s/s/j$a;-><init>(Le/a/s/s/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/s/s/j$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/s/j$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/s/s/j;->b:Le/a/s/o/d;

    iput v3, v0, Le/a/s/s/j$a;->e:I

    invoke-interface {p1, v0}, Le/a/s/o/f;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->getVoices()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
