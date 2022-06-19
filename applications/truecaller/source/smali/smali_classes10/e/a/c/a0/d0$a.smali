.class public final Le/a/c/a0/d0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/d0;->a(Le/a/c/q/f;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Lq3/a/x2/f<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain$f;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.source.TravelDataSourceImpl$getTripsFor$1"
    f = "TravelDataSourceImpl.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/c/a0/d0;


# direct methods
.method public constructor <init>(Le/a/c/a0/d0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/d0$a;->i:Le/a/c/a0/d0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a0/d0$a;

    iget-object v1, p0, Le/a/c/a0/d0$a;->i:Le/a/c/a0/d0;

    invoke-direct {v0, v1, p2}, Le/a/c/a0/d0$a;-><init>(Le/a/c/a0/d0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a0/d0$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a0/d0$a;

    iget-object v1, p0, Le/a/c/a0/d0$a;->i:Le/a/c/a0/d0;

    invoke-direct {v0, v1, p2}, Le/a/c/a0/d0$a;-><init>(Le/a/c/a0/d0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a0/d0$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a0/d0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a0/d0$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/c/a0/d0$a;->g:Ljava/lang/Object;

    iget-object v3, p0, Le/a/c/a0/d0$a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, p0, Le/a/c/a0/d0$a;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a0/d0$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, p1

    move-object v4, v1

    move-object p1, p0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 6
    iget-object v6, p1, Le/a/c/a0/d0$a;->i:Le/a/c/a0/d0;

    .line 7
    iget-object v6, v6, Le/a/c/a0/d0;->c:Le/a/c/w/o0/g;

    .line 8
    iput-object v4, p1, Le/a/c/a0/d0$a;->e:Ljava/lang/Object;

    iput-object v3, p1, Le/a/c/a0/d0$a;->f:Ljava/lang/Object;

    iput-object v1, p1, Le/a/c/a0/d0$a;->g:Ljava/lang/Object;

    iput v2, p1, Le/a/c/a0/d0$a;->h:I

    invoke-interface {v6, v5, v2, p1}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p1, v0

    move-object v0, v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_0

    .line 11
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 12
    iget-object p1, p1, Le/a/c/a0/d0$a;->i:Le/a/c/a0/d0;

    .line 13
    iget-object p1, p1, Le/a/c/a0/d0;->b:Le/a/c/c/d/g;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v4, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v2

    .line 18
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 19
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-interface {p1, v0, v1}, Le/a/c/c/d/g;->h(Ljava/util/List;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 21
    new-instance v0, Le/a/c/a0/d0$a$a;

    invoke-direct {v0, p1, v4}, Le/a/c/a0/d0$a$a;-><init>(Lq3/a/x2/f;Ljava/util/List;)V

    return-object v0
.end method
