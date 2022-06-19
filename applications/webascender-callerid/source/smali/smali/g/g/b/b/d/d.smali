.class public Lg/g/b/b/d/d;
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

    iput-object p1, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->u()Lg/g/b/b/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/b/b/a/f;->m(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->u()Lg/g/b/b/a/f;

    move-result-object v0

    invoke-interface {v0}, Lg/g/b/b/a/f;->f()Ljava/util/List;

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
    check-cast v2, Lg/g/b/b/e/a/c;

    .line 5
    invoke-static {v2}, Lg/g/b/b/c/f;->a(Lg/g/b/b/e/a/c;)Lg/g/b/c/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)Lg/g/b/c/m;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->u()Lg/g/b/b/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/b/b/a/f;->c(Ljava/lang/String;)Lg/g/b/b/e/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/g/b/b/c/f;->a(Lg/g/b/b/e/a/c;)Lg/g/b/c/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->u()Lg/g/b/b/a/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lg/g/b/b/a/f;->k(J)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lg/g/b/b/e/a/c;

    .line 5
    invoke-static {v0}, Lg/g/b/b/c/f;->a(Lg/g/b/b/e/a/c;)Lg/g/b/c/m;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public e(Lg/g/b/c/m;)V
    .locals 1

    const-string v0, "localOverrideId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/d;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->u()Lg/g/b/b/a/f;

    move-result-object v0

    invoke-static {p1}, Lg/g/b/b/c/c;->a(Lg/g/b/c/m;)Lg/g/b/b/e/a/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/g/b/b/a/a;->d(Ljava/lang/Object;)J

    return-void
.end method
