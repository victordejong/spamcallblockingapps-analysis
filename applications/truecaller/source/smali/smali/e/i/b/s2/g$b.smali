.class public Le/i/b/s2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/s2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/i/b/s2/g;


# direct methods
.method public constructor <init>(Le/i/b/s2/g;Le/i/b/s2/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/s2/g$b;->a:Le/i/b/s2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/s2/g$b;->a:Le/i/b/s2/g;

    .line 2
    iget-object v0, v0, Le/i/b/s2/g;->b:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4
    iget-object v0, p0, Le/i/b/s2/g$b;->a:Le/i/b/s2/g;

    .line 5
    iget-object v0, v0, Le/i/b/s2/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/s2/g$c;

    .line 7
    iget-object v0, v0, Le/i/b/s2/g$c;->a:Ljava/lang/Object;

    return-object v0
.end method
