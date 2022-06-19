.class public abstract Ln3/c0/j;
.super Ln3/c0/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/c0/c0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/c0/c0;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ln3/c0/j;->bind(Ln3/e0/a/f;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 5
    throw p1
.end method

.method public abstract bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e0/a/f;",
            "TT;)V"
        }
    .end annotation
.end method
