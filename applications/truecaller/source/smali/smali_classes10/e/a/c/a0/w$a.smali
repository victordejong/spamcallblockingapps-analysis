.class public final Le/a/c/a0/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/w;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a0/v;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a0/v;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/w$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a0/w$a;->b:Le/a/c/a0/v;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le/a/c/a0/w$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/w$a$a;

    iget v1, v0, Le/a/c/a0/w$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/w$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/w$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/w$a$a;-><init>(Le/a/c/a0/w$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/w$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/w$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/w$a$a;->j:Ljava/lang/Object;

    iget-object v2, v0, Le/a/c/a0/w$a$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/c/a0/w$a$a;->h:Ljava/lang/Object;

    check-cast v6, Lq3/a/x2/g;

    iget-object v7, v0, Le/a/c/a0/w$a$a;->f:Ljava/lang/Object;

    check-cast v7, Le/a/c/a0/w$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/a0/w$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v7, p0

    move-object v2, p1

    move-object v6, p2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 7
    iget-object v8, v7, Le/a/c/a0/w$a;->b:Le/a/c/a0/v;

    iput-object v7, v0, Le/a/c/a0/w$a$a;->f:Ljava/lang/Object;

    iput-object v6, v0, Le/a/c/a0/w$a$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/w$a$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/w$a$a;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a0/w$a$a;->e:I

    invoke-virtual {v8, p2, v0}, Le/a/c/a0/v;->a(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_6
    move-object p1, v5

    .line 10
    :goto_2
    check-cast p1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    if-eqz p1, :cond_7

    .line 11
    invoke-static {p1}, Le/a/m0/a1$k;->z1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;)Lcom/truecaller/insights/models/InsightsDomain$e;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v5

    :goto_3
    iput-object v5, v0, Le/a/c/a0/w$a$a;->f:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a0/w$a$a;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a0/w$a$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a0/w$a$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/w$a$a;->e:I

    invoke-interface {v6, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
