.class public Le/i/b/y2$b;
.super Le/i/b/u2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Le/i/b/y2$a;)V
    .locals 1

    .line 1
    new-instance p1, Le/i/b/w1/c;

    invoke-direct {p1}, Le/i/b/w1/c;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Le/i/b/u2/y;-><init>(Landroid/content/Context;Le/i/b/w1/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/s2/g;

    invoke-direct {v0}, Le/i/b/s2/g;-><init>()V

    .line 2
    iget-object v1, v0, Le/i/b/s2/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Le/i/b/s2/g$c;

    const-string v3, ""

    invoke-direct {v2, v3}, Le/i/b/s2/g$c;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object v1, v0, Le/i/b/s2/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method
