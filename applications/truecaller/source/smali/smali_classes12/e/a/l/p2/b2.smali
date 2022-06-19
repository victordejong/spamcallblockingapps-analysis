.class public final Le/a/l/p2/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/a2;


# instance fields
.field public final a:Le/a/l/p2/i0;


# direct methods
.method public constructor <init>(Le/a/l/p2/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumNetworkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/b2;->a:Le/a/l/p2/i0;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/v1;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/v1;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/c2<",
            "Le/a/l/p2/y1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/b2$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/b2$a;

    iget v1, v0, Le/a/l/p2/b2$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/b2$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/b2$a;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/b2$a;-><init>(Le/a/l/p2/b2;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/b2$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/b2$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p2, p0, Le/a/l/p2/b2;->a:Le/a/l/p2/i0;

    iput v3, v0, Le/a/l/p2/b2$a;->e:I

    check-cast p2, Le/a/l/p2/j0;

    invoke-virtual {p2, p1, v0}, Le/a/l/p2/j0;->a(Le/a/l/p2/v1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Le/a/l/r2/a;

    .line 6
    instance-of p1, p2, Le/a/l/r2/a$c;

    if-eqz p1, :cond_4

    new-instance p1, Le/a/l/p2/c2$c;

    check-cast p2, Le/a/l/r2/a$c;

    .line 7
    iget-object p2, p2, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 8
    check-cast p2, Le/a/l/p2/z1;

    invoke-virtual {p2}, Le/a/l/p2/z1;->a()Le/a/l/p2/y1;

    move-result-object p2

    invoke-direct {p1, p2}, Le/a/l/p2/c2$c;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_4
    instance-of p1, p2, Le/a/l/r2/a$a;

    if-eqz p1, :cond_5

    sget-object p1, Le/a/l/p2/c2$b;->a:Le/a/l/p2/c2$b;

    goto :goto_2

    .line 10
    :cond_5
    sget-object p1, Le/a/l/p2/c2$a;->a:Le/a/l/p2/c2$a;

    :goto_2
    return-object p1
.end method

.method public b(Le/a/l/p2/a2$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/a2$b;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/c2<",
            "+",
            "Ljava/util/List<",
            "Le/a/l/p2/a2$a;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/b2$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/b2$b;

    iget v1, v0, Le/a/l/p2/b2$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/b2$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/b2$b;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/b2$b;-><init>(Le/a/l/p2/b2;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/b2$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/b2$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p2, p0, Le/a/l/p2/b2;->a:Le/a/l/p2/i0;

    iput v3, v0, Le/a/l/p2/b2$b;->e:I

    check-cast p2, Le/a/l/p2/j0;

    invoke-virtual {p2, p1, v0}, Le/a/l/p2/j0;->b(Le/a/l/p2/a2$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Le/a/l/r2/a;

    .line 6
    instance-of p1, p2, Le/a/l/r2/a$c;

    if-eqz p1, :cond_4

    new-instance p1, Le/a/l/p2/c2$c;

    check-cast p2, Le/a/l/r2/a$c;

    .line 7
    iget-object p2, p2, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 8
    invoke-direct {p1, p2}, Le/a/l/p2/c2$c;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_4
    instance-of p1, p2, Le/a/l/r2/a$a;

    if-eqz p1, :cond_5

    sget-object p1, Le/a/l/p2/c2$b;->a:Le/a/l/p2/c2$b;

    goto :goto_2

    .line 10
    :cond_5
    sget-object p1, Le/a/l/p2/c2$a;->a:Le/a/l/p2/c2$a;

    :goto_2
    return-object p1
.end method
