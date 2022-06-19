.class public Le/k/a/c/d0/z/b;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->s:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/k/a/b/m;->t:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto :goto_0

    .line 6
    :cond_1
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->N(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object p1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    return-object v0
.end method
