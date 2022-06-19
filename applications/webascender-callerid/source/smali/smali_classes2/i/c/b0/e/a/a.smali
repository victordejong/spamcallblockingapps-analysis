.class public final Li/c/b0/e/a/a;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/c/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(ILi/c/b0/c/c;)Z
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p2}, Li/c/b0/c/c;->dispose()V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/c/c;

    .line 4
    sget-object v3, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/c/c;

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Li/c/b0/c/c;->dispose()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
