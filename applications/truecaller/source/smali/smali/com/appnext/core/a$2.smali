.class public final Lcom/appnext/core/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/a;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ak:Ljava/lang/String;

.field public final synthetic cC:Lcom/appnext/core/a;


# direct methods
.method public constructor <init>(Lcom/appnext/core/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/a$2;->cC:Lcom/appnext/core/a;

    iput-object p2, p0, Lcom/appnext/core/a$2;->ak:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/a$2;->cC:Lcom/appnext/core/a;

    invoke-static {v0}, Lcom/appnext/core/a;->a(Lcom/appnext/core/a;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/a$2;->cC:Lcom/appnext/core/a;

    invoke-static {v1}, Lcom/appnext/core/a;->a(Lcom/appnext/core/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/d$a;

    iget-object v3, p0, Lcom/appnext/core/a$2;->ak:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/appnext/core/d$a;->error(Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AdContainer$notifyListenersError"

    .line 7
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
