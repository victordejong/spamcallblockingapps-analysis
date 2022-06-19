.class public final Le/a/s/q/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/e/a;


# instance fields
.field public final a:Le/a/s/o/d;


# direct methods
.method public constructor <init>(Le/a/s/o/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "restAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s/q/e/b;->a:Le/a/s/o/d;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Carrier;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/s/q/e/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/s/q/e/b$a;

    iget v1, v0, Le/a/s/q/e/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/s/q/e/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/s/q/e/b$a;

    invoke-direct {v0, p0, p1}, Le/a/s/q/e/b$a;-><init>(Le/a/s/q/e/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/s/q/e/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/s/q/e/b$a;->e:I

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
    iget-object p1, p0, Le/a/s/q/e/b;->a:Le/a/s/o/d;

    iput v3, v0, Le/a/s/q/e/b$a;->e:I

    invoke-interface {p1, v0}, Le/a/s/o/f;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
