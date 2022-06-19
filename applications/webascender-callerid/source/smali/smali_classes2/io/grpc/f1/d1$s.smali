.class final Lio/grpc/f1/d1$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "s"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/f1/q;",
            ">;"
        }
    .end annotation
.end field

.field c:Lio/grpc/b1;

.field final synthetic d:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$s;->d:Lio/grpc/f1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/f1/d1$s;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/f1/d1$s;->b:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$s;-><init>(Lio/grpc/f1/d1;)V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/f1/w1;)Lio/grpc/b1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f1/w1<",
            "*>;)",
            "Lio/grpc/b1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$s;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/d1$s;->c:Lio/grpc/b1;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/f1/d1$s;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Lio/grpc/f1/w1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f1/w1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$s;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/d1$s;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/grpc/f1/d1$s;->b:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/grpc/f1/d1$s;->c:Lio/grpc/b1;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/grpc/f1/d1$s;->b:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lio/grpc/f1/d1$s;->d:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->n(Lio/grpc/f1/d1;)Lio/grpc/f1/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/f1/z;->b(Lio/grpc/b1;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
