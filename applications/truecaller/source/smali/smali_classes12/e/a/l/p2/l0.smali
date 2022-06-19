.class public final Le/a/l/p2/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/k0;


# instance fields
.field public final a:Le/a/l/p2/o0;

.field public final b:Le/a/l/c2;

.field public final c:Le/a/l/a/g;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/o0;Le/a/l/c2;Le/a/l/a/g;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumProductsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugSubscriptionResultWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/l0;->a:Le/a/l/p2/o0;

    iput-object p2, p0, Le/a/l/p2/l0;->b:Le/a/l/c2;

    iput-object p3, p0, Le/a/l/p2/l0;->c:Le/a/l/a/g;

    iput-object p4, p0, Le/a/l/p2/l0;->d:Ls1/w/f;

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
            "Le/a/l/p2/k1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/l0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/l0$b;

    iget v1, v0, Le/a/l/p2/l0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/l0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/l0$b;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/l0$b;-><init>(Le/a/l/p2/l0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/l0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/l0$b;->e:I

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

    if-eqz p1, :cond_4

    .line 4
    iget-object p2, p0, Le/a/l/p2/l0;->a:Le/a/l/p2/o0;

    iput v3, v0, Le/a/l/p2/l0$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/l/p2/o0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Le/a/l/p2/k1;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public b(ZZZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/k0$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/l0;->d:Ls1/w/f;

    new-instance v7, Le/a/l/p2/l0$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/l/p2/l0$a;-><init>(Le/a/l/p2/l0;ZZZLs1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Le/a/l/p2/k1;)Le/a/l/p2/k1;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/a/l/p2/k1;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x308060

    if-eq v4, v5, :cond_2

    const v5, 0x40c21f9c

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "regular"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Le/a/l/p2/l0;->c:Le/a/l/a/g;

    invoke-virtual {v2}, Le/a/l/a/g;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v4, "gold"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Le/a/l/p2/l0;->c:Le/a/l/a/g;

    invoke-virtual {v2}, Le/a/l/a/g;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_0
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x6

    .line 5
    invoke-static {v1, v2, v3, v3, v4}, Le/a/l/p2/n1;->a(Le/a/l/p2/n1;Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/b;I)Le/a/l/p2/n1;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x2ff

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v15}, Le/a/l/p2/k1;->a(Le/a/l/p2/k1;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Le/a/l/p2/n1;Ljava/lang/String;I)Le/a/l/p2/k1;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p1

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method
