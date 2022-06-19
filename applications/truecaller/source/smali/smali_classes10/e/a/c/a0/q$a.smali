.class public final Le/a/c/a0/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/q;->a(Le/a/c/q/f;)Lq3/a/x2/f;
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
        "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.source.BillDataSourceImpl$getBillsFlow$1"
    f = "BillDataSource.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/c/a0/q;


# direct methods
.method public constructor <init>(Le/a/c/a0/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/q$a;->i:Le/a/c/a0/q;

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

    new-instance v0, Le/a/c/a0/q$a;

    iget-object v1, p0, Le/a/c/a0/q$a;->i:Le/a/c/a0/q;

    invoke-direct {v0, v1, p2}, Le/a/c/a0/q$a;-><init>(Le/a/c/a0/q;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a0/q$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a0/q$a;

    iget-object v1, p0, Le/a/c/a0/q$a;->i:Le/a/c/a0/q;

    invoke-direct {v0, v1, p2}, Le/a/c/a0/q$a;-><init>(Le/a/c/a0/q;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a0/q$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a0/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a0/q$a;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/c/a0/q$a;->g:Ljava/lang/Object;

    iget-object v4, p0, Le/a/c/a0/q$a;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/c/a0/q$a;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

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

    iget-object p1, p0, Le/a/c/a0/q$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "reminder bills from db: "

    .line 4
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object v5, v1

    move-object p1, p0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 7
    iget-object v7, p1, Le/a/c/a0/q$a;->i:Le/a/c/a0/q;

    iput-object v5, p1, Le/a/c/a0/q$a;->e:Ljava/lang/Object;

    iput-object v4, p1, Le/a/c/a0/q$a;->f:Ljava/lang/Object;

    iput-object v1, p1, Le/a/c/a0/q$a;->g:Ljava/lang/Object;

    iput v2, p1, Le/a/c/a0/q$a;->h:I

    .line 8
    iget-object v7, v7, Le/a/c/a0/q;->c:Le/a/c/w/o0/g;

    invoke-interface {v7, v6, v2, p1}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move-object v8, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v8

    .line 9
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p1, v0

    move-object v0, v1

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    .line 12
    :cond_4
    check-cast v5, Ljava/util/List;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "reminder bills after base filter: "

    .line 13
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Le/a/c/a0/q$a;->i:Le/a/c/a0/q;

    .line 15
    iget-object p1, p1, Le/a/c/a0/q;->b:Le/a/c/c/d/g;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v5, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 19
    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v2

    .line 20
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {p1, v0, v1}, Le/a/c/c/d/g;->h(Ljava/util/List;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    .line 23
    new-instance v0, Le/a/c/a0/q$a$a;

    invoke-direct {v0, p1, v5}, Le/a/c/a0/q$a$a;-><init>(Lq3/a/x2/f;Ljava/util/List;)V

    return-object v0
.end method
