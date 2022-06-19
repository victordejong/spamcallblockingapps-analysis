.class public final Le/a/b/l/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/l/o;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public d3(ILe/a/b/b/b/a;)Lcom/truecaller/profile/data/dto/OpenHours;
    .locals 7

    const-string v0, "opensAt"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/profile/data/dto/OpenHours;

    const-string v0, "$this$withOpeningTime"

    .line 2
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Le/a/b/b/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/truecaller/profile/data/dto/OpenHours;->copy$default(Lcom/truecaller/profile/data/dto/OpenHours;Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object p2

    .line 4
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public e3(I)Lcom/truecaller/profile/data/dto/OpenHours;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/profile/data/dto/OpenHours;

    return-object p1
.end method

.method public f3(ILjava/util/SortedSet;)Lcom/truecaller/profile/data/dto/OpenHours;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/truecaller/profile/data/dto/OpenHours;"
        }
    .end annotation

    const-string v0, "daysOfTheWeek"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/profile/data/dto/OpenHours;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/truecaller/profile/data/dto/OpenHours;->copy$default(Lcom/truecaller/profile/data/dto/OpenHours;Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object p2

    .line 2
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public g3(ILe/a/b/b/b/a;)Lcom/truecaller/profile/data/dto/OpenHours;
    .locals 7

    const-string v0, "closesAt"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/profile/data/dto/OpenHours;

    const-string v0, "$this$withClosingTime"

    .line 2
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Le/a/b/b/b/a;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/truecaller/profile/data/dto/OpenHours;->copy$default(Lcom/truecaller/profile/data/dto/OpenHours;Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/OpenHours;

    move-result-object p2

    .line 4
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public h3()Lcom/truecaller/profile/data/dto/OpenHours;
    .locals 7

    .line 1
    new-instance v6, Lcom/truecaller/profile/data/dto/OpenHours;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/profile/data/dto/OpenHours;-><init>(Ljava/util/SortedSet;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 2
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public i3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    return-object v0
.end method

.method public j3(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/OpenHours;",
            ">;"
        }
    .end annotation

    const-string v0, "openHours"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Le/a/b/l/p;->a:Ljava/util/List;

    return-object p1
.end method

.method public k3()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/b/l/p;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/profile/data/dto/OpenHours;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OpenHours;->getWeekday()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    or-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :cond_4
    :goto_2
    or-int v1, v3, v2

    if-eqz v1, :cond_0

    return v5

    :cond_5
    return v2
.end method
