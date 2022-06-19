.class public final Le/a/c/a/p/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/j;->a:Le/a/c/a/p/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    new-instance v3, Ls1/k;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "$this$unzip"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 12
    iget-object v4, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    const-string v4, "it"

    .line 19
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_3
    iget-object v0, p0, Le/a/c/a/p/e/j;->a:Le/a/c/a/p/e/f;

    .line 21
    iget-object v0, v0, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    const-string v1, "permissionHelper"

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    new-array v3, v3, [Ljava/lang/String;

    .line 22
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ls1/u/i;->R0(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-interface {v0, v2, p1}, Le/a/c/b/h;->e([Ljava/lang/String;[I)V

    .line 24
    iget-object p1, p0, Le/a/c/a/p/e/j;->a:Le/a/c/a/p/e/f;

    .line 25
    iget-object p1, p1, Le/a/c/a/p/e/f;->g:Le/a/c/b/h;

    if-eqz p1, :cond_6

    .line 26
    invoke-interface {p1}, Le/a/c/b/h;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    iget-object v0, p0, Le/a/c/a/p/e/j;->a:Le/a/c/a/p/e/f;

    .line 28
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->SA()V

    .line 29
    :cond_4
    iget-object v0, p0, Le/a/c/a/p/e/j;->a:Le/a/c/a/p/e/f;

    .line 30
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const-string v1, "read_sms"

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "eventCategory"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string p1, "granted"

    goto :goto_4

    :cond_5
    const-string p1, "denied"

    :goto_4
    const-string v2, "click"

    .line 32
    invoke-virtual {v0, v1, v2, p1}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
