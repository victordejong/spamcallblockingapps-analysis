.class public abstract Ls1/a/a/a/v0/l/e$i;
.super Ls1/a/a/a/v0/l/e$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/v0/l/e$h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile d:Ls1/a/a/a/v0/l/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/e;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/e;",
            "Ls1/z/b/a<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/l/e$h;-><init>(Ls1/a/a/a/v0/l/e;Ls1/z/b/a;)V

    .line 2
    iput-object v0, p0, Ls1/a/a/a/v0/l/e$i;->d:Ls1/a/a/a/v0/l/l;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/l/e$i;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/l/e$i;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "computable"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/l;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/l/l;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls1/a/a/a/v0/l/e$i;->d:Ls1/a/a/a/v0/l/l;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p0

    check-cast v1, Ls1/a/a/a/v0/l/e$c;

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/l/e$c;->f:Ls1/z/b/l;

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/l/e$i;->d:Ls1/a/a/a/v0/l/l;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 5
    :try_start_1
    invoke-static {p1}, Ls1/a/a/a/v0/l/e$c;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6
    :goto_0
    iput-object v0, p0, Ls1/a/a/a/v0/l/e$i;->d:Ls1/a/a/a/v0/l/l;

    throw p1
.end method

.method public invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/l/e$i;->d:Ls1/a/a/a/v0/l/l;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/l/l;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/l/l;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/l/l;->a:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value in this thread (hasValue should be checked before)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    invoke-super {p0}, Ls1/a/a/a/v0/l/e$h;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
