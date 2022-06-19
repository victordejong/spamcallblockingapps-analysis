.class public final Li/a/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/a/a/e/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/a/a/e/e;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Li/a/a/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Li/a/a/e/l;
    .locals 3

    .line 1
    sget-object v0, Li/a/a/e/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/a/e/l;

    if-nez v1, :cond_1

    .line 2
    sget-object v2, Li/a/a/e/e;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Li/a/a/e/k;->a()Li/a/a/e/l;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 5
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Li/a/a/e/j;
    .locals 1

    .line 1
    invoke-static {}, Li/a/a/e/e;->a()Li/a/a/e/l;

    move-result-object v0

    invoke-interface {v0, p0}, Li/a/a/e/l;->get(Ljava/lang/String;)Li/a/a/e/j;

    move-result-object p0

    return-object p0
.end method
