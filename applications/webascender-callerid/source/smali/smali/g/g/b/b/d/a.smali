.class public Lg/g/b/b/d/a;
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

    iput-object p1, p0, Lg/g/b/b/d/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    return-void
.end method

.method private final d(Lg/g/b/b/e/a/a;)Lg/g/b/c/g;
    .locals 8

    .line 1
    new-instance v7, Lg/g/b/c/g;

    .line 2
    invoke-virtual {p1}, Lg/g/b/b/e/a/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lg/g/b/b/e/a/a;->f()Z

    move-result v4

    .line 4
    invoke-virtual {p1}, Lg/g/b/b/e/a/a;->b()J

    move-result-wide v2

    .line 5
    invoke-virtual {p1}, Lg/g/b/b/e/a/a;->a()Ljava/lang/Short;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lg/g/b/b/e/a/a;->c()I

    move-result v6

    move-object v0, v7

    .line 7
    invoke-direct/range {v0 .. v6}, Lg/g/b/c/g;-><init>(Ljava/lang/String;JZLjava/lang/Short;I)V

    return-object v7
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/l<",
            "Lg/g/b/c/g;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->s()Lg/g/b/b/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lg/g/b/b/a/b;->l(Z)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lg/g/b/b/e/a/a;

    .line 5
    new-instance v3, Lkotlin/l;

    invoke-direct {p0, v2}, Lg/g/b/b/d/a;->d(Lg/g/b/b/e/a/a;)Lg/g/b/c/g;

    move-result-object v4

    invoke-virtual {v2}, Lg/g/b/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/String;)Lg/g/b/c/g;
    .locals 1

    const-string v0, "normalized"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->s()Lg/g/b/b/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/b/b/a/b;->o(Ljava/lang/String;)Lg/g/b/b/e/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lg/g/b/b/d/a;->d(Lg/g/b/b/e/a/a;)Lg/g/b/c/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Lg/g/b/c/g;Ljava/lang/String;)J
    .locals 1

    const-string v0, "denyNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->s()Lg/g/b/b/a/b;

    move-result-object v0

    invoke-static {p1, p2}, Lg/g/b/b/c/a;->a(Lg/g/b/c/g;Ljava/lang/String;)Lg/g/b/b/e/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/g/b/b/a/a;->d(Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method
