.class public Lg/g/b/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/database/db/HiyaRoomDb;


# direct methods
.method public constructor <init>(Lcom/hiya/client/database/db/HiyaRoomDb;)V
    .locals 1

    const-string v0, "hiyaDb"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lg/g/b/c/q;",
            ">;)V"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/c/q;

    .line 2
    iget-object v1, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v1}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lg/g/b/b/a/d;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lg/g/b/c/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/c/r;

    .line 2
    iget-object v1, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v1}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lg/g/b/b/a/d;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    sget-object v0, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lg/g/b/b/d/c;->e(Lg/g/b/c/r;J)V

    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/g/b/b/a/d;->e(J)V

    return-void
.end method

.method public final e(Lg/g/b/c/r;J)V
    .locals 3

    const-string v0, "sourceType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/g/b/b/a/d;->n(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 2
    iget-object v2, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v2}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sub-long/2addr v0, p2

    invoke-interface {v2, p1, v0, v1}, Lg/g/b/b/a/d;->q(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Set;)Lg/g/b/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lg/g/b/c/r;",
            ">;)",
            "Lg/g/b/c/f;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lg/g/b/c/r;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lg/g/b/b/a/d;->p(Ljava/lang/String;Ljava/util/Set;)Lg/g/b/b/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p1}, Lg/g/b/b/c/e;->a(Lg/g/b/b/e/a/b;)Lg/g/b/c/f;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public g(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lg/g/b/c/r;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lg/g/b/c/r;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lg/g/b/b/a/d;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/b/e/a/b;

    .line 8
    invoke-virtual {v0}, Lg/g/b/b/e/a/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lg/g/b/b/c/e;->a(Lg/g/b/b/e/a/b;)Lg/g/b/c/f;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public h(Lg/g/b/c/f;)V
    .locals 2

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lg/g/b/c/f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Lkotlin/s/k;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/g/b/b/d/c;->i(Ljava/util/List;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/c/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callerIds"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lg/g/b/c/f;

    .line 5
    invoke-static {v2}, Lg/g/b/b/c/b;->a(Lg/g/b/c/f;)Lg/g/b/b/e/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lg/g/b/b/a/a;->h(Ljava/lang/Iterable;)V

    return-void
.end method

.method public j(Lg/g/b/c/f;)V
    .locals 1

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/c;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->t()Lg/g/b/b/a/d;

    move-result-object v0

    invoke-static {p1}, Lg/g/b/b/c/b;->a(Lg/g/b/c/f;)Lg/g/b/b/e/a/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/g/b/b/a/a;->d(Ljava/lang/Object;)J

    return-void
.end method
