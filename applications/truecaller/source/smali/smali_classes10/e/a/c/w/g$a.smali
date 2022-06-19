.class public final Le/a/c/w/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/g;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Le/a/c/w/i;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/w/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/g$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/w/g$a;->b:Le/a/c/w/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Le/a/c/w/g$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/g$a$a;

    iget v1, v0, Le/a/c/w/g$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/g$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/g$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/w/g$a$a;-><init>(Le/a/c/w/g$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/g$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/g$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

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
    iget-object p2, p0, Le/a/c/w/g$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    iget-object v2, p0, Le/a/c/w/g$a;->b:Le/a/c/w/i;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "billList"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "past reminder bills distinct: "

    .line 8
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "PrepaidExpiry"

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 11
    invoke-static {v7}, Le/a/c/p/a;->h0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 12
    invoke-static {v7}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_4

    invoke-static {v7}, Le/a/c/p/a;->g0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-array p1, v3, [Ljava/lang/String;

    const-string v4, "past reminder bills after duplicates removed: "

    .line 13
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v5

    invoke-static {p1}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 14
    invoke-static {v2}, Le/a/c/p/a;->r2(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/String;

    .line 15
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 18
    invoke-static {v7}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Days.daysBetween(bill.bi\u2026lDate(), LocalDate.now())"

    const-string v10, "bill"

    if-eqz v8, :cond_8

    .line 19
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v7

    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v8

    invoke-static {v7, v8}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v7, v7, Lw3/b/a/e0/i;->a:I

    const/4 v8, 0x5

    if-le v7, v8, :cond_9

    goto :goto_5

    .line 22
    :cond_8
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v7

    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v8

    invoke-static {v7, v8}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget v7, v7, Lw3/b/a/e0/i;->a:I

    const/16 v8, 0xf

    if-le v7, v8, :cond_9

    :goto_5
    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v5

    :goto_6
    if-eqz v7, :cond_7

    .line 25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-array p1, v3, [Ljava/lang/String;

    const-string v4, "past reminder bills after all filters: "

    .line 26
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v5

    invoke-static {p1}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 27
    new-instance p1, Le/a/c/w/e;

    invoke-direct {p1}, Le/a/c/w/e;-><init>()V

    invoke-static {v2, p1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 28
    iput v3, v0, Le/a/c/w/g$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
