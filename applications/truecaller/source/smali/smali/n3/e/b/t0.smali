.class public abstract Ln3/e/b/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/t0$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/v0;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/e/b/t0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/e/b/v0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/e/b/t0;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Ln3/e/b/t0;->a:Ln3/e/b/v0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ln3/e/b/t0;->a:Ln3/e/b/v0;

    invoke-interface {v0}, Ln3/e/b/v0;->close()V

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ln3/e/b/t0;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/t0$a;

    .line 8
    invoke-interface {v1, p0}, Ln3/e/b/t0$a;->c(Ln3/e/b/v0;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
