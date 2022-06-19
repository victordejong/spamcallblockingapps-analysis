.class public final Lio/grpc/f1/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/z1$d;,
        Lio/grpc/f1/z1$c;,
        Lio/grpc/f1/z1$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/logging/Logger;

.field private static final j:Lio/grpc/f1/z1$b;


# instance fields
.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f1/z1;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/z1;->i:Ljava/util/logging/Logger;

    .line 3
    invoke-static {}, Lio/grpc/f1/z1;->c()Lio/grpc/f1/z1$b;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/z1;->j:Lio/grpc/f1/z1$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/z1;->g:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/grpc/f1/z1;->h:I

    const-string v0, "\'executor\' must not be null."

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lio/grpc/f1/z1;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/z1;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/grpc/f1/z1;->h:I

    return p0
.end method

.method static synthetic b(Lio/grpc/f1/z1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/f1/z1;->h:I

    return p1
.end method

.method private static c()Lio/grpc/f1/z1$b;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lio/grpc/f1/z1$c;

    const-class v2, Lio/grpc/f1/z1;

    const-string v3, "h"

    .line 2
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/f1/z1$c;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lio/grpc/f1/z1$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lio/grpc/f1/z1;->i:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "FieldUpdaterAtomicHelper failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v1, Lio/grpc/f1/z1$d;

    invoke-direct {v1, v0}, Lio/grpc/f1/z1$d;-><init>(Lio/grpc/f1/z1$a;)V

    :goto_0
    return-object v1
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/f1/z1;->j:Lio/grpc/f1/z1$b;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lio/grpc/f1/z1$b;->a(Lio/grpc/f1/z1;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/z1;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Lio/grpc/f1/z1;->g:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object p1, Lio/grpc/f1/z1;->j:Lio/grpc/f1/z1$b;

    invoke-virtual {p1, p0, v1}, Lio/grpc/f1/z1$b;->b(Lio/grpc/f1/z1;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z1;->g:Ljava/util/Queue;

    const-string v1, "\'r\' must not be null."

    invoke-static {p1, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/z1;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 7

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/z1;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    :try_start_2
    sget-object v3, Lio/grpc/f1/z1;->i:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lio/grpc/f1/z1;->j:Lio/grpc/f1/z1$b;

    invoke-virtual {v1, p0, v0}, Lio/grpc/f1/z1$b;->b(Lio/grpc/f1/z1;I)V

    .line 5
    iget-object v0, p0, Lio/grpc/f1/z1;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lio/grpc/f1/z1;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    sget-object v2, Lio/grpc/f1/z1;->j:Lio/grpc/f1/z1$b;

    invoke-virtual {v2, p0, v0}, Lio/grpc/f1/z1$b;->b(Lio/grpc/f1/z1;I)V

    throw v1
.end method
