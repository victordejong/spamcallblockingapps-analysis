.class final Lg/g/b/d/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/d/a;->c(Ljava/util/List;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/g/b/d/d/a;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lg/g/b/d/d/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/d/a$a;->a:Lg/g/b/d/d/a;

    iput-object p2, p0, Lg/g/b/d/d/a$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/g/b/d/d/a$a;->a:Lg/g/b/d/d/a;

    invoke-static {v0}, Lg/g/b/d/d/a;->b(Lg/g/b/d/d/a;)Lcom/hiya/client/repost/db/b;

    move-result-object v0

    iget-object v1, p0, Lg/g/b/d/d/a$a;->b:Ljava/util/List;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_0

    .line 4
    check-cast v4, Lg/g/b/d/e/a;

    .line 5
    invoke-virtual {v4}, Lg/g/b/d/e/a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/s/k;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/hiya/client/repost/db/b;->a(Ljava/util/List;)V

    .line 8
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/hiya/client/repost/db/RepostDatabaseException;

    const-string v2, "Failed to delete requests."

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/repost/db/RepostDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
