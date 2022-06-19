.class public final Le/a/c/a/j/a/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/a/c;->d(Le/a/c/a/j/b/h;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Le/a/c/a/j/b/b;",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/j;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/d;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.filters.domain.GetQuickFiltersUseCase$execute$1"
    f = "GetQuickFiltersUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/a/j/a/c;

.field public final synthetic h:Le/a/c/a/j/b/h;


# direct methods
.method public constructor <init>(Le/a/c/a/j/a/c;Le/a/c/a/j/b/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/a/c$a;->g:Le/a/c/a/j/a/c;

    iput-object p2, p0, Le/a/c/a/j/a/c$a;->h:Le/a/c/a/j/b/h;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Le/a/c/a/j/b/b;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ls1/w/d;

    const-string v0, "categoryFilter"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senders"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/j/a/c$a;

    iget-object v1, p0, Le/a/c/a/j/a/c$a;->g:Le/a/c/a/j/a/c;

    iget-object v2, p0, Le/a/c/a/j/a/c$a;->h:Le/a/c/a/j/b/h;

    invoke-direct {v0, v1, v2, p3}, Le/a/c/a/j/a/c$a;-><init>(Le/a/c/a/j/a/c;Le/a/c/a/j/b/h;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/j/a/c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/j/a/c$a;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/j/a/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/j/a/c$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/j/b/b;

    iget-object v0, p0, Le/a/c/a/j/a/c$a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    iget-object v2, p0, Le/a/c/a/j/a/c$a;->g:Le/a/c/a/j/a/c;

    .line 4
    iget-object v3, p1, Le/a/c/a/j/b/b;->a:Ljava/util/List;

    .line 5
    iget-object v4, p0, Le/a/c/a/j/a/c$a;->h:Le/a/c/a/j/b/h;

    .line 6
    iget v4, v4, Le/a/c/a/j/b/h;->a:I

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, p0, Le/a/c/a/j/a/c$a;->g:Le/a/c/a/j/a/c;

    .line 11
    iget-object p1, p1, Le/a/c/a/j/b/b;->a:Ljava/util/List;

    .line 12
    iget-object v4, p0, Le/a/c/a/j/a/c$a;->h:Le/a/c/a/j/b/h;

    .line 13
    iget v4, v4, Le/a/c/a/j/b/h;->a:I

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v5, 0x1

    if-ltz v5, :cond_5

    .line 17
    move-object v7, v6

    check-cast v7, Le/a/c/a/j/b/c;

    if-lt v5, v4, :cond_3

    .line 18
    iget-boolean v5, v7, Le/a/c/a/j/b/c;->c:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-eqz v8, :cond_4

    .line 19
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v5, v9

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {}, Ls1/u/i;->N0()V

    throw v7

    .line 21
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v5, 0x1

    if-ltz v5, :cond_9

    .line 24
    move-object v10, v6

    check-cast v10, Le/a/c/a/j/b/j;

    if-lt v5, v4, :cond_7

    .line 25
    iget-boolean v5, v10, Le/a/c/a/j/b/j;->e:Z

    if-eqz v5, :cond_7

    move v5, v8

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    if-eqz v5, :cond_8

    .line 26
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v5, v9

    goto :goto_3

    .line 27
    :cond_9
    invoke-static {}, Ls1/u/i;->N0()V

    throw v7

    .line 28
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 29
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 33
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_c
    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 35
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 36
    :cond_d
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
