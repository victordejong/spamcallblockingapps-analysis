.class public final Le/a/m/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m/c0;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "Ls1/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/m/d0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/m/d0$a;

    iget v1, v0, Le/a/m/d0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/m/d0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/m/d0$a;

    invoke-direct {v0, p0, p2}, Le/a/m/d0$a;-><init>(Le/a/m/d0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/m/d0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/m/d0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->ACCOUNT:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/m/b0;

    invoke-static {p2, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/m/b0;

    .line 5
    iput v3, v0, Le/a/m/d0$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/m/b0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lx3/a0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method
