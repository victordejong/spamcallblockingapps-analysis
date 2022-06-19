.class public Le/k/a/c/d0/z/d;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->T1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->W(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    return-object p2
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    return-object v0
.end method
