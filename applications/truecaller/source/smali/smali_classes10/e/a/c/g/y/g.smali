.class public final Le/a/c/g/y/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/y/b;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/c/f/n;

.field public final c:Le/a/c/c/d/p;


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/c/d/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizerDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/y/g;->b:Le/a/c/c/f/n;

    iput-object p2, p0, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/g/y/g;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/categorizer/model/MetaParam;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/g/y/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/g/y/g$a;

    iget v1, v0, Le/a/c/g/y/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/g$a;

    invoke-direct {v0, p0, p1}, Le/a/c/g/y/g$a;-><init>(Le/a/c/g/y/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/g/y/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/g$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/g/y/g$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/g/y/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/y/g;->b:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/g/y/g$a;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/c/g/y/g$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    iget-object p1, v2, Le/a/c/g/y/g;->b:Le/a/c/c/f/n;

    iput-object v3, v0, Le/a/c/g/y/g$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/g/y/g$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    move-object v3, p1

    check-cast v3, Lcom/truecaller/insights/categorizer/model/MetaParam;

    :cond_6
    return-object v3
.end method

.method public b(ILjava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/g/y/g$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/g/y/g$b;

    iget v1, v0, Le/a/c/g/y/g$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/g$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/g$b;

    invoke-direct {v0, p0, p3}, Le/a/c/g/y/g$b;-><init>(Le/a/c/g/y/g;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/g/y/g$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/g$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Le/a/c/g/y/g$b;->h:I

    iget-object p2, v0, Le/a/c/g/y/g$b;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/g/y/g;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/g/y/g;->b:Le/a/c/c/f/n;

    new-instance v2, Lcom/truecaller/insights/categorizer/model/MetaParam;

    invoke-direct {v2, p1, p2}, Lcom/truecaller/insights/categorizer/model/MetaParam;-><init>(ILjava/util/List;)V

    iput-object p0, v0, Le/a/c/g/y/g$b;->g:Ljava/lang/Object;

    iput p1, v0, Le/a/c/g/y/g$b;->h:I

    iput v4, v0, Le/a/c/g/y/g$b;->e:I

    invoke-interface {p3, v2, v0}, Le/a/c/c/f/n;->j(Lcom/truecaller/insights/categorizer/model/MetaParam;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    .line 5
    :goto_1
    iget-object p2, p2, Le/a/c/g/y/g;->b:Le/a/c/c/f/n;

    const/4 p3, 0x0

    iput-object p3, v0, Le/a/c/g/y/g$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/y/g$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/c/f/n;->b(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lcom/truecaller/insights/categorizer/KeywordMeta;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/truecaller/insights/categorizer/KeywordMeta;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/truecaller/insights/categorizer/KeywordMeta;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Double;

    move-object v0, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/categorizer/KeywordMeta;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v7
.end method
