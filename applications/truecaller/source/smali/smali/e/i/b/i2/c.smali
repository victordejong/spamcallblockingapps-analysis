.class public Le/i/b/i2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/i2/c$a;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/u2/r;

.field public final b:Le/i/b/u2/c0;

.field public final c:Le/i/b/e2;

.field public final d:Le/i/b/i2/g;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/i/b/u2/p;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/i/b/u2/r;Le/i/b/u2/c0;Le/i/b/e2;Le/i/b/i2/g;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/i/b/i2/c;->g:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/i2/c;->a:Le/i/b/u2/r;

    .line 4
    iput-object p2, p0, Le/i/b/i2/c;->b:Le/i/b/u2/c0;

    .line 5
    iput-object p3, p0, Le/i/b/i2/c;->c:Le/i/b/e2;

    .line 6
    iput-object p4, p0, Le/i/b/i2/c;->d:Le/i/b/i2/g;

    .line 7
    iput-object p5, p0, Le/i/b/i2/c;->e:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Le/i/b/i2/c;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/u2/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/i2/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/i/b/i2/c;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
