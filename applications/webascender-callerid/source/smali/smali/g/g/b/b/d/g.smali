.class public Lg/g/b/b/d/g;
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

    iput-object p1, p0, Lg/g/b/b/d/g;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/g;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->w()Lg/g/b/b/a/j;

    move-result-object v0

    invoke-interface {v0}, Lg/g/b/b/a/j;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/g;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->w()Lg/g/b/b/a/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/g/b/b/a/j;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/c/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "translated"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/b/d/g;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    invoke-virtual {v0}, Lcom/hiya/client/database/db/HiyaRoomDb;->w()Lg/g/b/b/a/j;

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
    check-cast v2, Lg/g/b/c/s;

    .line 5
    invoke-static {v2}, Lg/g/b/b/c/g;->a(Lg/g/b/c/s;)Lg/g/b/b/e/a/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lg/g/b/b/a/a;->h(Ljava/lang/Iterable;)V

    return-void
.end method
