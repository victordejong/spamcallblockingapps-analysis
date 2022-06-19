.class public Le/a/a/k/y/o$a;
.super Le/a/a/k/o$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/y/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/a/k/o$e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Le/a/a/k/y/o$a;->c:Ljava/util/concurrent/locks/Condition;

    .line 4
    iput-wide p1, p0, Le/a/a/k/y/o$a;->a:J

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Le/a/a/k/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/a/k/y/o$a;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Le/a/a/k/o$d;

    iget-wide p2, p0, Le/a/a/k/y/o$a;->a:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/a/a/k/o$d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1

    .line 6
    :catch_0
    :cond_0
    iget-object p1, p0, Le/a/a/k/y/o$a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    new-instance p1, Le/a/a/k/o$b;

    const-string p2, "INTERNAL_CLIENT"

    invoke-direct {p1, p2}, Le/a/a/k/o$b;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
