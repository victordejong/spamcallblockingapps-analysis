.class public final Le/a/c/w/o0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/o0/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/w/o0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/w/o0/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/c/a0/z;

.field public final e:Le/a/c/b/j;

.field public final f:Le/a/b0/m/a/b;

.field public final g:Le/a/c/h/e;

.field public final h:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Le/a/c/a0/z;Le/a/c/b/j;Le/a/b0/m/a/b;Le/a/c/h/e;Le/a/c/c0/o;Le/a/c/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/c/w/o0/b;",
            ">;",
            "Lo3/a<",
            "Le/a/c/w/o0/i;",
            ">;",
            "Le/a/c/a0/z;",
            "Le/a/c/b/j;",
            "Le/a/b0/m/a/b;",
            "Le/a/c/h/e;",
            "Le/a/c/c0/o;",
            "Le/a/c/b/e;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderFilterManagerLazy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesFilterManagerLazy"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoDataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightConfig"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/o0/h;->b:Lo3/a;

    iput-object p2, p0, Le/a/c/w/o0/h;->c:Lo3/a;

    iput-object p3, p0, Le/a/c/w/o0/h;->d:Le/a/c/a0/z;

    iput-object p4, p0, Le/a/c/w/o0/h;->e:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/w/o0/h;->f:Le/a/b0/m/a/b;

    iput-object p6, p0, Le/a/c/w/o0/h;->g:Le/a/c/h/e;

    iput-object p7, p0, Le/a/c/w/o0/h;->h:Le/a/c/c0/o;

    .line 2
    invoke-interface {p8}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/c/w/o0/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/c/w/o0/b;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le/a/c/w/o0/b;->c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/v;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/o0/h$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/o0/h$b;

    iget v1, v0, Le/a/c/w/o0/h$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/h$b;

    invoke-direct {v0, p0, p2}, Le/a/c/w/o0/h$b;-><init>(Le/a/c/w/o0/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/o0/h$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/h$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Le/a/c/w/o0/h$b;->i:I

    iget-object v1, v0, Le/a/c/w/o0/h$b;->h:Ljava/lang/Object;

    check-cast v1, Le/a/c/g/v;

    iget-object v0, v0, Le/a/c/w/o0/h$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/w/o0/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/w/o0/h$b;->h:Ljava/lang/Object;

    check-cast p1, Le/a/c/g/v;

    iget-object v2, v0, Le/a/c/w/o0/h$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/w/o0/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object p2

    .line 5
    iget-object v2, p1, Le/a/c/g/v;->a:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {v2, v6}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v6, p1, Le/a/c/g/v;->b:Ljava/lang/String;

    .line 8
    sget-object v7, Lcom/truecaller/insights/source/ModelType;->UPDATE:Lcom/truecaller/insights/source/ModelType;

    iput-object p0, v0, Le/a/c/w/o0/h$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/h$b;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/c/w/o0/h$b;->e:I

    .line 9
    invoke-interface {p2, v2, v6, v7, v0}, Le/a/c/w/o0/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 10
    :goto_1
    check-cast p2, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    sget-object v6, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne p2, v6, :cond_5

    move p2, v5

    goto :goto_2

    :cond_5
    move p2, v4

    .line 11
    :goto_2
    iget-object v6, v2, Le/a/c/w/o0/h;->g:Le/a/c/h/e;

    .line 12
    iget-object v7, p1, Le/a/c/g/v;->a:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Le/a/c/w/o0/h$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/h$b;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/c/w/o0/h$b;->i:I

    iput v3, v0, Le/a/c/w/o0/h$b;->e:I

    invoke-interface {v6, v7, v0}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, p1

    move p1, p2

    move-object p2, v0

    move-object v0, v2

    :goto_3
    check-cast p2, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    invoke-static {p2}, Le/a/m0/a1$k;->t0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z

    move-result p2

    if-nez p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move p1, v4

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v5

    .line 14
    :goto_5
    iget-object p2, v0, Le/a/c/w/o0/h;->c:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/w/o0/i;

    .line 15
    invoke-interface {p2, v1}, Le/a/c/w/o0/i;->w(Le/a/c/g/v;)Z

    move-result p2

    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    move v4, v5

    .line 16
    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "grm"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v1, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p2, v1}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    new-instance p2, Le/a/c/w/o0/h$d;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Le/a/c/w/o0/h$d;-><init>(Le/a/c/w/o0/h;Ljava/lang/String;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, p2, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {p0, p1, v0, p2}, Le/a/c/w/o0/h;->n(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/w/o0/h$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/w/o0/h$a;

    iget v1, v0, Le/a/c/w/o0/h$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/h$a;

    invoke-direct {v0, p0, p3}, Le/a/c/w/o0/h$a;-><init>(Le/a/c/w/o0/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/w/o0/h$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/h$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/w/o0/h$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    iget-object p2, v0, Le/a/c/w/o0/h$a;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/w/o0/h;

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
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/w/o0/h;->e:Le/a/c/b/j;

    invoke-interface {p3}, Le/a/c/b/j;->C()Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    if-nez p2, :cond_4

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p3

    iput-object p0, v0, Le/a/c/w/o0/h$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/h$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/w/o0/h$a;->e:I

    invoke-virtual {p0, p2, p3, v0}, Le/a/c/w/o0/h;->i(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    .line 8
    :goto_2
    check-cast p3, Le/a/c/w/o0/e;

    .line 9
    iget-object v0, p3, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    .line 11
    invoke-virtual {p2, p3, p1}, Le/a/c/w/o0/h;->l(Le/a/c/w/o0/e;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z

    move-result v3

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {p2}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/c/w/o0/b;->e(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v4

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {p2, p3, p1}, Le/a/c/w/o0/h;->l(Le/a/c/w/o0/e;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z

    move-result v3

    .line 14
    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {p0, p1, v0, p2}, Le/a/c/w/o0/h;->n(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/w/o0/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/w/o0/h$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/w/o0/h$c;

    iget v1, v0, Le/a/c/w/o0/h$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/h$c;

    invoke-direct {v0, p0, p3}, Le/a/c/w/o0/h$c;-><init>(Le/a/c/w/o0/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/w/o0/h$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/h$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/w/o0/h$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Le/a/c/w/o0/h$c;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/w/o0/h;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object p3

    sget-object v2, Lcom/truecaller/insights/source/ModelType;->PARSER:Lcom/truecaller/insights/source/ModelType;

    iput-object p0, v0, Le/a/c/w/o0/h$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/o0/h$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/w/o0/h$c;->e:I

    invoke-interface {p3, p1, p2, v2, v0}, Le/a/c/w/o0/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    .line 6
    :goto_1
    check-cast p3, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 7
    iget-object v0, p2, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Le/a/c/w/o0/b;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 10
    sget-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne p3, v1, :cond_4

    .line 11
    new-instance p2, Le/a/c/w/o0/f$a;

    .line 12
    sget-object v1, Lcom/truecaller/insights/repository/filters/InfoCardType;->INFOCARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    new-array v2, v2, [Ljava/util/List;

    aput-object p1, v2, v4

    .line 13
    invoke-interface {v0}, Le/a/c/w/o0/b;->f()Ljava/util/List;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-direct {p2, v1, p1}, Le/a/c/w/o0/f$a;-><init>(Lcom/truecaller/insights/repository/filters/InfoCardType;Ljava/util/List;)V

    goto :goto_4

    .line 16
    :cond_4
    iget-object p2, p2, Le/a/c/w/o0/h;->e:Le/a/c/b/j;

    invoke-interface {p2}, Le/a/c/b/j;->T()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_7

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/r/j/l;

    .line 19
    invoke-virtual {v1}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v1

    const-string v5, "GRM_OTP"

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move p2, v4

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v3

    :goto_3
    if-eqz p2, :cond_8

    .line 20
    new-instance p2, Le/a/c/w/o0/f$a;

    sget-object v1, Lcom/truecaller/insights/repository/filters/InfoCardType;->SEMICARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    const-string v5, "it"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/util/List;

    aput-object p1, v2, v4

    .line 21
    invoke-interface {v0}, Le/a/c/w/o0/b;->f()Ljava/util/List;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-static {p1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-direct {p2, v1, p1}, Le/a/c/w/o0/f$a;-><init>(Lcom/truecaller/insights/repository/filters/InfoCardType;Ljava/util/List;)V

    goto :goto_4

    .line 24
    :cond_8
    new-instance p2, Le/a/c/w/o0/f$a;

    sget-object v0, Lcom/truecaller/insights/repository/filters/InfoCardType;->INFOCARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    invoke-direct {p2, v0, p1}, Le/a/c/w/o0/f$a;-><init>(Lcom/truecaller/insights/repository/filters/InfoCardType;Ljava/util/List;)V

    goto :goto_4

    .line 25
    :cond_9
    new-instance p2, Le/a/c/w/o0/f$a;

    sget-object v0, Lcom/truecaller/insights/repository/filters/InfoCardType;->INFOCARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    invoke-direct {p2, v0, p1}, Le/a/c/w/o0/f$a;-><init>(Lcom/truecaller/insights/repository/filters/InfoCardType;Ljava/util/List;)V

    :goto_4
    if-eqz p3, :cond_b

    .line 26
    sget-object p1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne p3, p1, :cond_a

    new-instance p1, Le/a/c/w/o0/e;

    .line 27
    sget-object p3, Lcom/truecaller/insights/repository/filters/SmartSmsFeature;->INFOCARD:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    .line 28
    sget-object v0, Lcom/truecaller/insights/repository/filters/FeatureStatus;->BLOCKED:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 29
    invoke-direct {p1, p3, v0, p2}, Le/a/c/w/o0/e;-><init>(Lcom/truecaller/insights/repository/filters/SmartSmsFeature;Lcom/truecaller/insights/repository/filters/FeatureStatus;Le/a/c/w/o0/f;)V

    return-object p1

    .line 30
    :cond_a
    sget-object p1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    if-ne p3, p1, :cond_b

    new-instance p1, Le/a/c/w/o0/e;

    .line 31
    sget-object p3, Lcom/truecaller/insights/repository/filters/SmartSmsFeature;->INFOCARD:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    .line 32
    sget-object v0, Lcom/truecaller/insights/repository/filters/FeatureStatus;->ALLOWED:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 33
    invoke-direct {p1, p3, v0, p2}, Le/a/c/w/o0/e;-><init>(Lcom/truecaller/insights/repository/filters/SmartSmsFeature;Lcom/truecaller/insights/repository/filters/FeatureStatus;Le/a/c/w/o0/f;)V

    return-object p1

    .line 34
    :cond_b
    new-instance p1, Le/a/c/w/o0/e;

    .line 35
    sget-object p3, Lcom/truecaller/insights/repository/filters/SmartSmsFeature;->INFOCARD:Lcom/truecaller/insights/repository/filters/SmartSmsFeature;

    .line 36
    sget-object v0, Lcom/truecaller/insights/repository/filters/FeatureStatus;->ANY:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 37
    invoke-direct {p1, p3, v0, p2}, Le/a/c/w/o0/e;-><init>(Lcom/truecaller/insights/repository/filters/SmartSmsFeature;Lcom/truecaller/insights/repository/filters/FeatureStatus;Le/a/c/w/o0/f;)V

    return-object p1
.end method

.method public j(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {p0, p1, v0, p2}, Le/a/c/w/o0/h;->n(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/w/o0/h$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/w/o0/h$e;

    iget v1, v0, Le/a/c/w/o0/h$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/o0/h$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/o0/h$e;

    invoke-direct {v0, p0, p3}, Le/a/c/w/o0/h$e;-><init>(Le/a/c/w/o0/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/w/o0/h$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/o0/h$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput v3, v0, Le/a/c/w/o0/h$e;->e:I

    invoke-virtual {p0, p1, p2, v0}, Le/a/c/w/o0/h;->i(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p3, Le/a/c/w/o0/e;

    .line 7
    iget-object p1, p3, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_6

    .line 9
    iget-object p1, p3, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    const-string p3, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.SmartSmsFeatureCheckExtras.SenderFilterCheck"

    .line 10
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/c/w/o0/f$a;

    .line 11
    iget-object p1, p1, Le/a/c/w/o0/f$a;->a:Lcom/truecaller/insights/repository/filters/InfoCardType;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-ne p1, v3, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    :goto_2
    move v3, p2

    .line 14
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final l(Le/a/c/w/o0/e;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z
    .locals 3

    .line 1
    iget-object p1, p1, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.SmartSmsFeatureCheckExtras.SenderFilterCheck"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/c/w/o0/f$a;

    .line 3
    iget-object p1, p1, Le/a/c/w/o0/f$a;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Le/a/c/r/j/l;

    .line 9
    invoke-virtual {v2}, Le/a/c/r/j/l;->a()Le/a/c/r/j/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0, v1, p2}, Le/a/c/w/o0/b;->i(Ljava/util/List;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)Z

    move-result p1

    return p1
.end method

.method public final m()Le/a/c/w/o0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/w/o0/h;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/w/o0/b;

    return-object v0
.end method

.method public final n(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ls1/w/d;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/c/w/o0/h$f;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/c/w/o0/h$f;

    iget v4, v3, Le/a/c/w/o0/h$f;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/w/o0/h$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/w/o0/h$f;

    invoke-direct {v3, v0, v1}, Le/a/c/w/o0/h$f;-><init>(Le/a/c/w/o0/h;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/c/w/o0/h$f;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v3, Le/a/c/w/o0/h$f;->e:I

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v15, :cond_3

    if-eq v4, v14, :cond_2

    if-ne v4, v13, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    :goto_1
    iget-object v4, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/w/o0/h;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v4, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    iget-object v6, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/w/o0/h;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v21, v5

    goto/16 :goto_3

    :cond_4
    iget-object v4, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    iget-object v6, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/w/o0/h;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v4

    move-object v10, v6

    move-object v6, v5

    goto :goto_2

    :cond_5
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/w/o0/h;->a:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v4, v0, Le/a/c/w/o0/h;->d:Le/a/c/a0/z;

    sget-object v6, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/16 v16, 0x0

    iput-object v0, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    iput v10, v3, Le/a/c/w/o0/h$f;->e:I

    move-object v5, v1

    move-object v8, v3

    move-object/from16 v10, v16

    invoke-static/range {v4 .. v10}, Le/a/c/p/a;->K0(Le/a/c/a0/z;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_6

    return-object v11

    :cond_6
    move-object/from16 v6, p2

    move-object v10, v0

    move-object v9, v1

    move-object v1, v4

    .line 6
    :goto_2
    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8
    iget-object v1, v10, Le/a/c/w/o0/h;->f:Le/a/b0/m/a/b;

    iput-object v10, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    iput v15, v3, Le/a/c/w/o0/h$f;->e:I

    check-cast v1, Le/a/b0/m/a/c;

    invoke-virtual {v1, v9, v3}, Le/a/b0/m/a/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_7

    return-object v11

    :cond_7
    move-object/from16 v21, v6

    move-object v4, v9

    move-object v6, v10

    .line 9
    :goto_3
    check-cast v1, Le/a/b0/m/a/a;

    .line 10
    iget-object v5, v6, Le/a/c/w/o0/h;->d:Le/a/c/a0/z;

    .line 11
    new-instance v7, Le/a/c/a0/b0;

    .line 12
    iget-object v1, v1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    const/16 v20, 0x0

    const-string v8, "ALL"

    .line 13
    invoke-static {v8}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    sget-object v23, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    const/16 v24, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    .line 14
    invoke-direct/range {v17 .. v24}, Le/a/c/a0/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Ljava/util/List;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;)V

    .line 15
    iput-object v6, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    iput-object v4, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    iput-object v12, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    iput v14, v3, Le/a/c/w/o0/h$f;->e:I

    check-cast v5, Le/a/c/a0/a0;

    invoke-virtual {v5, v7, v3}, Le/a/c/a0/a0;->b(Le/a/c/a0/b0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_8

    return-object v11

    :cond_8
    move-object v3, v6

    goto :goto_4

    .line 16
    :cond_9
    iget-object v1, v10, Le/a/c/w/o0/h;->d:Le/a/c/a0/z;

    sget-object v7, Lcom/truecaller/insights/source/SourceType;->USER:Lcom/truecaller/insights/source/SourceType;

    iput-object v10, v3, Le/a/c/w/o0/h$f;->g:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/w/o0/h$f;->h:Ljava/lang/Object;

    iput-object v12, v3, Le/a/c/w/o0/h$f;->i:Ljava/lang/Object;

    iput v13, v3, Le/a/c/w/o0/h$f;->e:I

    const/4 v8, 0x0

    .line 17
    move-object v4, v1

    check-cast v4, Le/a/c/a0/a0;

    move-object v5, v9

    move-object v1, v9

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Le/a/c/a0/a0;->d(Ljava/lang/String;Lcom/truecaller/insights/source/SmartSMSFeatureStatus;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    if-ne v2, v11, :cond_a

    return-object v11

    :cond_a
    move-object v4, v1

    move-object v3, v10

    .line 18
    :goto_4
    invoke-virtual {v3}, Le/a/c/w/o0/h;->m()Le/a/c/w/o0/b;

    move-result-object v1

    invoke-interface {v1, v4}, Le/a/c/w/o0/b;->h(Ljava/lang/String;)V

    .line 19
    iget-object v1, v3, Le/a/c/w/o0/h;->h:Le/a/c/c0/o;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Le/a/c/c0/o;->g(Z)V

    return-object v2
.end method
