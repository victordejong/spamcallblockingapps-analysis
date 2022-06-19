.class public final Ln3/b0/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/util/concurrent/Executor;


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public final b:Ln3/b0/a/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/b0/a/h$e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/b0/a/c$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln3/b0/a/h$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b0/a/h$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/b0/a/c$a;->b:Ln3/b0/a/h$e;

    return-void
.end method


# virtual methods
.method public a()Ln3/b0/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/b0/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b0/a/c$a;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Ln3/b0/a/c$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ln3/b0/a/c$a;->d:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Ln3/b0/a/c$a;->d:Ljava/util/concurrent/Executor;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Ln3/b0/a/c$a;->d:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ln3/b0/a/c$a;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ln3/b0/a/c;

    const/4 v1, 0x0

    iget-object v2, p0, Ln3/b0/a/c$a;->a:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Ln3/b0/a/c$a;->b:Ln3/b0/a/h$e;

    invoke-direct {v0, v1, v2, v3}, Ln3/b0/a/c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ln3/b0/a/h$e;)V

    return-object v0
.end method
