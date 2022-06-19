.class public final Le/a/c/a/j/a/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/a/d$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/q/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/j/a/d;

.field public final synthetic c:Le/a/c/a/j/b/i;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/j/a/d;Le/a/c/a/j/b/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/a/d$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/j/a/d$a$a;->b:Le/a/c/a/j/a/d;

    iput-object p3, p0, Le/a/c/a/j/a/d$a$a;->c:Le/a/c/a/j/b/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Le/a/c/a/j/a/d$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/j/a/d$a$a$a;

    iget v1, v0, Le/a/c/a/j/a/d$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/j/a/d$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/j/a/d$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/j/a/d$a$a$a;-><init>(Le/a/c/a/j/a/d$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/j/a/d$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/j/a/d$a$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

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
    iget-object p2, p0, Le/a/c/a/j/a/d$a$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    iget-object v2, p0, Le/a/c/a/j/a/d$a$a;->c:Le/a/c/a/j/b/i;

    .line 7
    iget-object v2, v2, Le/a/c/a/j/b/i;->c:Ljava/util/Set;

    .line 8
    invoke-static {v2}, Le/a/c/p/a;->L0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Le/a/c/a/j/a/d$a$a;->b:Le/a/c/a/j/a/d;

    .line 9
    iget-object v4, v4, Le/a/c/a/j/a/d;->c:Ljava/util/Set;

    .line 10
    invoke-static {v2, v4}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 11
    iget-object v4, p0, Le/a/c/a/j/a/d$a$a;->b:Le/a/c/a/j/a/d;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 15
    check-cast v6, Le/a/c/q/h;

    .line 16
    iget-object v7, v6, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 19
    check-cast v9, Ljava/lang/String;

    .line 20
    new-instance v10, Le/a/c/w/o0/k/e$c;

    invoke-direct {v10, v9}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_3
    iget-object v7, v6, Le/a/c/q/h;->c:Ljava/util/Set;

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 24
    check-cast v10, Ljava/lang/String;

    .line 25
    new-instance v11, Le/a/c/w/o0/k/e$c;

    invoke-direct {v11, v10}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_4
    new-instance v7, Le/a/c/a/j/b/j;

    .line 27
    iget-object v10, v6, Le/a/c/q/h;->a:Ljava/lang/String;

    .line 28
    invoke-interface {v2, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_5

    invoke-interface {v2, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v8, v3

    .line 29
    :goto_5
    invoke-direct {v7, v6, v10, v8}, Le/a/c/a/j/b/j;-><init>(Le/a/c/q/h;Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_7
    new-instance p1, Le/a/c/a/j/a/e;

    invoke-direct {p1}, Le/a/c/a/j/a/e;-><init>()V

    invoke-static {v4, p1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 31
    iput v3, v0, Le/a/c/a/j/a/d$a$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
