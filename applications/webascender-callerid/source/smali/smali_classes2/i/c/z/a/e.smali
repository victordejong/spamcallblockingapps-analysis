.class public final Li/c/z/a/e;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/w/b;",
        ">;",
        "Li/c/w/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    move-result p1

    return p1
.end method

.method public b(Li/c/w/b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/z/a/b;->set(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/z/a/b;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/w/b;

    invoke-static {v0}, Li/c/z/a/b;->isDisposed(Li/c/w/b;)Z

    move-result v0

    return v0
.end method
