.class public final Le/a/c/a/j/a/d;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/j/b/i;",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/q/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/c/q/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/j/a/d;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/c/a/j/a/d;->e:Le/a/c/q/d;

    .line 2
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    iput-object p1, p0, Le/a/c/a/j/a/d;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/a/j/b/i;

    invoke-virtual {p0, p1}, Le/a/c/a/j/a/d;->d(Le/a/c/a/j/b/i;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/a/j/b/i;)Lq3/a/x2/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/j/b/i;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/a/j/b/j;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/j/b/i;->b:Ljava/util/Set;

    .line 2
    invoke-static {v0}, Le/a/c/p/a;->R1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p1, Le/a/c/a/j/b/i;->a:Ljava/lang/String;

    iget-object v2, p1, Le/a/c/a/j/b/i;->c:Ljava/util/Set;

    iget-boolean v3, p1, Le/a/c/a/j/b/i;->d:Z

    const-string v4, "query"

    .line 4
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "currentFilters"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "appliedFilters"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    move-object v6, v5

    check-cast v6, Le/a/c/w/o0/k/e;

    .line 10
    instance-of v6, v6, Le/a/c/w/o0/k/e$c;

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Le/a/c/a/j/a/d;->b:I

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v0, v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_4

    .line 14
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Le/a/c/w/o0/k/e;

    const-string v5, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.models.SmsFilter.BySender"

    .line 17
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/c/w/o0/k/e$c;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le/a/c/a/j/a/d;->c:Ljava/util/Set;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Le/a/c/a/j/a/d;->b:I

    .line 19
    :cond_4
    new-instance v0, Le/a/c/w/o0/k/d;

    .line 20
    iget-object v2, p0, Le/a/c/a/j/a/d;->c:Ljava/util/Set;

    .line 21
    new-instance v3, Le/a/c/w/o0/k/c;

    invoke-direct {v3, v4}, Le/a/c/w/o0/k/c;-><init>(Ljava/util/List;)V

    .line 22
    invoke-direct {v0, v1, v3, v2}, Le/a/c/w/o0/k/d;-><init>(Ljava/lang/String;Le/a/c/w/o0/k/c;Ljava/util/Set;)V

    .line 23
    iget-object v1, p0, Le/a/c/a/j/a/d;->e:Le/a/c/q/d;

    invoke-interface {v1, v0}, Le/a/c/q/d;->A(Le/a/c/w/o0/k/d;)Lq3/a/x2/f;

    move-result-object v0

    .line 24
    new-instance v1, Le/a/c/a/j/a/d$a;

    invoke-direct {v1, v0, p0, p1}, Le/a/c/a/j/a/d$a;-><init>(Lq3/a/x2/f;Le/a/c/a/j/a/d;Le/a/c/a/j/b/i;)V

    return-object v1
.end method
