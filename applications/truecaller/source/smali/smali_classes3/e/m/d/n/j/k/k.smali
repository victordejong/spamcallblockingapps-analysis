.class public Le/m/d/n/j/k/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/n/j/k/k$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/d/n/j/k/g;

.field public final b:Le/m/d/n/j/j/m;

.field public final c:Ljava/lang/String;

.field public final d:Le/m/d/n/j/k/k$a;

.field public final e:Le/m/d/n/j/k/k$a;

.field public final f:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/d/n/j/n/f;Le/m/d/n/j/j/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/d/n/j/k/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/m/d/n/j/k/k$a;-><init>(Le/m/d/n/j/k/k;Z)V

    iput-object v0, p0, Le/m/d/n/j/k/k;->d:Le/m/d/n/j/k/k$a;

    .line 3
    new-instance v0, Le/m/d/n/j/k/k$a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Le/m/d/n/j/k/k$a;-><init>(Le/m/d/n/j/k/k;Z)V

    iput-object v0, p0, Le/m/d/n/j/k/k;->e:Le/m/d/n/j/k/k$a;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 5
    iput-object p1, p0, Le/m/d/n/j/k/k;->c:Ljava/lang/String;

    .line 6
    new-instance p1, Le/m/d/n/j/k/g;

    invoke-direct {p1, p2}, Le/m/d/n/j/k/g;-><init>(Le/m/d/n/j/n/f;)V

    iput-object p1, p0, Le/m/d/n/j/k/k;->a:Le/m/d/n/j/k/g;

    .line 7
    iput-object p3, p0, Le/m/d/n/j/k/k;->b:Le/m/d/n/j/j/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/n/j/k/k;->d:Le/m/d/n/j/k/k$a;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/n/j/k/d;

    invoke-virtual {v1, p1, p2}, Le/m/d/n/j/k/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/d/n/j/k/d;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Le/m/d/n/j/k/b;

    invoke-direct {p1, v0}, Le/m/d/n/j/k/b;-><init>(Le/m/d/n/j/k/k$a;)V

    .line 8
    iget-object p2, v0, Le/m/d/n/j/k/k$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, v0, Le/m/d/n/j/k/k$a;->d:Le/m/d/n/j/k/k;

    .line 10
    iget-object p2, p2, Le/m/d/n/j/k/k;->b:Le/m/d/n/j/j/m;

    .line 11
    invoke-virtual {p2, p1}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    move p1, v1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
