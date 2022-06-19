.class public final Le/a/l/p2/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/f1;


# instance fields
.field public final a:Le/a/l/u2/a;

.field public final b:Le/a/l/n2/e;

.field public final c:Le/a/l/n2/g;


# direct methods
.method public constructor <init>(Le/a/l/u2/a;Le/a/l/n2/e;Le/a/l/n2/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumProductStoreProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billing"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/g1;->a:Le/a/l/u2/a;

    iput-object p2, p0, Le/a/l/p2/g1;->b:Le/a/l/n2/e;

    iput-object p3, p0, Le/a/l/p2/g1;->c:Le/a/l/n2/g;

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
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/p2/g1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/p2/g1$a;

    iget v1, v0, Le/a/l/p2/g1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/g1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/g1$a;

    invoke-direct {v0, p0, p1}, Le/a/l/p2/g1$a;-><init>(Le/a/l/p2/g1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/p2/g1$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/g1$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p1, p0, Le/a/l/p2/g1;->a:Le/a/l/u2/a;

    invoke-interface {p1}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 5
    iget-object p1, p0, Le/a/l/p2/g1;->b:Le/a/l/n2/e;

    iput v3, v0, Le/a/l/p2/g1$a;->e:I

    invoke-interface {p1, v0}, Le/a/l/n2/e;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p1, Le/a/l/n2/f;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public b(Le/a/l/p2/l1;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/l1;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/g1$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/g1$c;

    iget v1, v0, Le/a/l/p2/g1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/g1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/g1$c;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/g1$c;-><init>(Le/a/l/p2/g1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/g1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/g1$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

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

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/l/p2/g1;->a:Le/a/l/u2/a;

    invoke-interface {p2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v4, :cond_5

    .line 5
    iget-object p2, p0, Le/a/l/p2/g1;->b:Le/a/l/n2/e;

    invoke-virtual {p1}, Le/a/l/p2/l1;->d()Le/a/l/p2/m1;

    move-result-object p1

    iput v3, v0, Le/a/l/p2/g1$c;->e:I

    invoke-interface {p2, p1, v0}, Le/a/l/n2/e;->b(Le/a/l/p2/m1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_4

    .line 7
    :cond_5
    iget-object p2, p0, Le/a/l/p2/g1;->c:Le/a/l/n2/g;

    .line 8
    invoke-virtual {p1}, Le/a/l/p2/l1;->a()Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Le/a/l/p2/k1;

    .line 12
    invoke-virtual {v3}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_7
    iput v4, v0, Le/a/l/p2/g1$c;->e:I

    invoke-interface {p2, v2, v0}, Le/a/l/n2/g;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p2, Ljava/util/List;

    :goto_4
    return-object p2
.end method

.method public c(Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/k1;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/l/p2/g1$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/l/p2/g1$b;

    iget v4, v3, Le/a/l/p2/g1$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/l/p2/g1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/l/p2/g1$b;

    invoke-direct {v3, v0, v2}, Le/a/l/p2/g1$b;-><init>(Le/a/l/p2/g1;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/l/p2/g1$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/l/p2/g1$b;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Le/a/l/p2/g1$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/k1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/l/p2/g1$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/k1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/l/p2/g1;->a:Le/a/l/u2/a;

    invoke-interface {v2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 4
    iget-object v2, v0, Le/a/l/p2/g1;->b:Le/a/l/n2/e;

    iput-object v1, v3, Le/a/l/p2/g1$b;->g:Ljava/lang/Object;

    iput v6, v3, Le/a/l/p2/g1$b;->e:I

    invoke-interface {v2, v1, v3}, Le/a/l/n2/e;->f(Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    .line 5
    :cond_4
    :goto_1
    check-cast v2, Le/a/l/n2/f;

    goto :goto_3

    .line 6
    :cond_5
    iget-object v2, v0, Le/a/l/p2/g1;->c:Le/a/l/n2/g;

    invoke-virtual/range {p1 .. p1}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v1, v3, Le/a/l/p2/g1$b;->g:Ljava/lang/Object;

    iput v7, v3, Le/a/l/p2/g1$b;->e:I

    invoke-interface {v2, v5, v3}, Le/a/l/n2/g;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    :goto_2
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l/n2/f;

    :goto_3
    if-eqz v2, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 7
    sget-object v3, Lcom/truecaller/premium/data/ProductKind;->Companion:Lcom/truecaller/premium/data/ProductKind$a;

    invoke-virtual {v1}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/truecaller/premium/data/ProductKind$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;

    move-result-object v15

    sget-object v3, Lcom/truecaller/premium/data/PremiumProductType;->Companion:Lcom/truecaller/premium/data/PremiumProductType$a;

    invoke-virtual {v1}, Le/a/l/p2/k1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/truecaller/premium/data/PremiumProductType$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumProductType;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x33ff

    const/4 v3, 0x0

    invoke-static/range {v2 .. v19}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    return-object v1
.end method
