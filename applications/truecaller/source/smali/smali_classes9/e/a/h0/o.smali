.class public final Le/a/h0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/h/e;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/commons/model/InsightsFilterType;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/c0/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a3/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c/c0/o;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "blockManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/o;->b:Lo3/a;

    iput-object p2, p0, Le/a/h0/o;->c:Lo3/a;

    iput-object p3, p0, Le/a/h0/o;->d:Lo3/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/h0/o;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/h0/o$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/h0/o$b;

    iget v1, v0, Le/a/h0/o$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h0/o$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h0/o$b;

    invoke-direct {v0, p0, p2}, Le/a/h0/o$b;-><init>(Le/a/h0/o;Ls1/w/d;)V

    :goto_0
    move-object v5, v0

    iget-object p2, v5, Le/a/h0/o$b;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v5, Le/a/h0/o$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

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
    iget-object p2, p0, Le/a/h0/o;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Le/a/a3/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    iput v2, v5, Le/a/h0/o$b;->e:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {p2}, Lcom/truecaller/blocking/FilterMatch;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/h0/o;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/c0/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/c/c0/o;->g(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/commons/model/InsightsFilterType;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/h0/o$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/h0/o$a;

    iget v1, v0, Le/a/h0/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h0/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h0/o$a;

    invoke-direct {v0, p0, p2}, Le/a/h0/o$a;-><init>(Le/a/h0/o;Ls1/w/d;)V

    :goto_0
    move-object v5, v0

    iget-object p2, v5, Le/a/h0/o$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v5, Le/a/h0/o$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v5, Le/a/h0/o$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v5, Le/a/h0/o$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/h0/o;

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
    iget-object p2, p0, Le/a/h0/o;->d:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/u3/g;

    .line 5
    iget-object v1, p2, Le/a/u3/g;->u0:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x47

    aget-object v3, v3, v4

    invoke-virtual {v1, p2, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 7
    iget-object p2, p0, Le/a/h0/o;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p2, p0, Le/a/h0/o;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Le/a/a3/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 8
    iput-object p0, v5, Le/a/h0/o$a;->g:Ljava/lang/Object;

    iput-object p1, v5, Le/a/h0/o$a;->h:Ljava/lang/Object;

    iput v2, v5, Le/a/h0/o$a;->e:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p2, Lcom/truecaller/blocking/FilterMatch;

    .line 10
    iget-object v1, p2, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 11
    sget-object v2, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_NUMBER:Lcom/truecaller/blocking/ActionSource;

    if-ne v1, v2, :cond_5

    sget-object p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;->FILTER_BLACKLISTED:Lcom/truecaller/insights/commons/model/InsightsFilterType;

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;->FILTER_WHITELISTED:Lcom/truecaller/insights/commons/model/InsightsFilterType;

    goto :goto_2

    .line 13
    :cond_6
    sget-object p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;->FILTER_NONE:Lcom/truecaller/insights/commons/model/InsightsFilterType;

    .line 14
    :goto_2
    iget-object v0, v0, Le/a/h0/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 15
    :cond_7
    sget-object p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;->FILTER_NONE:Lcom/truecaller/insights/commons/model/InsightsFilterType;

    :goto_3
    return-object p2
.end method
