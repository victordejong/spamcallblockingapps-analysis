.class public final Le/a/c/c/f/b;
.super Le/q/a/a/b/a;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/c/d/c;

.field public final b:Le/a/c/c/d/a;

.field public final c:Le/a/c/c/d/e;

.field public final d:Le/a/c/c/d/d0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/c;Le/a/c/c/d/a;Le/a/c/c/d/e;Le/a/c/c/d/d0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountModelDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountMappingRuleModelDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRelationModelDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/q/a/a/b/a;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/b;->a:Le/a/c/c/d/c;

    iput-object p2, p0, Le/a/c/c/f/b;->b:Le/a/c/c/d/a;

    iput-object p3, p0, Le/a/c/c/f/b;->c:Le/a/c/c/d/e;

    iput-object p4, p0, Le/a/c/c/f/b;->d:Le/a/c/c/d/d0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Le/q/a/d/c;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object v0, p0, Le/a/c/c/f/b;->a:Le/a/c/c/d/c;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/c/c/d/c;->g(J)Le/a/c/r/e/a/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/q/a/d/c;",
            ">;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c/f/b;->a:Le/a/c/c/d/c;

    invoke-interface {v0, p2, p1}, Le/a/c/c/d/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/q/a/d/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/c/c/f/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/c/f/b$a;-><init>(Le/a/c/c/f/b;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public d(Le/q/a/d/c;)J
    .locals 2

    const-string v0, "accountModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c/f/b;->a:Le/a/c/c/d/c;

    invoke-static {p1}, Le/a/m0/a1$k;->p(Le/q/a/d/c;)Le/a/c/r/e/a/c;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/c/c/d/c;->e(Le/a/c/r/e/a/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/util/List;)[J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/q/a/d/c;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "accountModelList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c/f/b;->a:Le/a/c/c/d/c;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/q/a/d/c;

    .line 5
    invoke-static {v2}, Le/a/m0/a1$k;->p(Le/q/a/d/c;)Le/a/c/r/e/a/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Le/a/c/c/d/c;->f(Ljava/util/List;)[J

    move-result-object p1

    return-object p1
.end method

.method public f(Le/q/a/d/c;Le/q/a/d/c;)V
    .locals 5

    const-string v0, "fromAccountModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c/f/b;->d:Le/a/c/c/d/d0;

    invoke-virtual {p1}, Le/q/a/d/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/a/c/c/d/d0;->J(J)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/c/c/f/b;->d:Le/a/c/c/d/d0;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 6
    invoke-virtual {p2}, Le/q/a/d/c;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Le/a/c/c/d/d0;->S(Ljava/util/List;)V

    return-void
.end method

.method public final g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/q/a/d/c;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Le/q/a/d/c;

    .line 4
    invoke-virtual {v1}, Le/q/a/d/c;->g()J

    move-result-wide v1

    .line 5
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/c/c/f/b;->d:Le/a/c/c/d/d0;

    invoke-virtual {p1, v0, p2}, Le/a/c/c/d/d0;->h0(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
