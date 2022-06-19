.class public final Le/a/c/w/n$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/n$b;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/w/n;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/w/n;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/n$b$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/w/n$b$a;->b:Le/a/c/w/n;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Le/a/c/w/n$b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/n$b$a$a;

    iget v1, v0, Le/a/c/w/n$b$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/n$b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/n$b$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/w/n$b$a$a;-><init>(Le/a/c/w/n$b$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/n$b$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/n$b$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object p2, p0, Le/a/c/w/n$b$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    iget-object v2, p0, Le/a/c/w/n$b$a;->b:Le/a/c/w/n;

    .line 7
    iget-object v4, v2, Le/a/c/w/n;->c:Le/a/c/a0/e;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain;

    .line 11
    instance-of v8, v7, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    .line 12
    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v7

    .line 13
    sget-object v8, Le/a/c/w/q;->d:Lw3/b/a/q;

    .line 14
    invoke-virtual {v8}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v7

    if-gez v7, :cond_5

    goto :goto_2

    .line 15
    :cond_4
    instance-of v8, v7, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v8, :cond_5

    .line 16
    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 17
    iget-object v7, v7, Lcom/truecaller/insights/models/InsightsDomain$f;->a:Lw3/b/a/b;

    .line 18
    sget-object v8, Le/a/c/w/q;->a:Lw3/b/a/q;

    .line 19
    invoke-virtual {v8}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v7

    if-gez v7, :cond_5

    :goto_2
    move v9, v3

    :cond_5
    if-eqz v9, :cond_3

    .line 20
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_6
    check-cast v4, Le/a/c/a0/f;

    invoke-virtual {v4, v5}, Le/a/c/a0/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v2, p1}, Le/a/c/w/n;->b(Le/a/c/w/n;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput v3, v0, Le/a/c/w/n$b$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
