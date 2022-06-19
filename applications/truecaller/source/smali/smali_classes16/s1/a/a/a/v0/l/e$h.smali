.class public Ls1/a/a/a/v0/l/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/l/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/l/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/l/e;

.field public final b:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/l/e$n;->a:Ls1/a/a/a/v0/l/e$n;

    iput-object v0, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    .line 4
    iput-object p2, p0, Ls1/a/a/a/v0/l/e$h;->b:Ls1/z/b/a;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/l/e$h;->a(I)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/l/e$h;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v7, "storageManager"

    aput-object v7, v3, v5

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    goto :goto_2

    :cond_3
    const-string v7, "computable"

    aput-object v7, v3, v5

    :goto_2
    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v4, v3, v6

    goto :goto_3

    :cond_4
    const-string v4, "renderDebugInformation"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_5
    const-string v4, "recursionDetected"

    aput-object v4, v3, v6

    :goto_3
    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    const-string v4, "<init>"

    aput-object v4, v3, v1

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Z)Ls1/a/a/a/v0/l/e$o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ls1/a/a/a/v0/l/e$o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    invoke-virtual {p1}, Ls1/a/a/a/v0/l/e;->l()Ls1/a/a/a/v0/l/e$o;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Ls1/a/a/a/v0/l/e$h;->a(I)V

    const/4 p1, 0x0

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
    sget-object v0, Ls1/a/a/a/v0/l/e$n;->c:Ls1/a/a/a/v0/l/e$n;

    sget-object v1, Ls1/a/a/a/v0/l/e$n;->b:Ls1/a/a/a/v0/l/e$n;

    iget-object v2, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    .line 2
    instance-of v3, v2, Ls1/a/a/a/v0/l/e$n;

    if-nez v3, :cond_0

    invoke-static {v2}, Ls1/a/a/a/v0/o/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 3
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    iget-object v2, v2, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v2}, Ls1/a/a/a/v0/l/k;->lock()V

    .line 4
    :try_start_0
    iget-object v2, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    .line 5
    instance-of v3, v2, Ls1/a/a/a/v0/l/e$n;

    if-nez v3, :cond_1

    invoke-static {v2}, Ls1/a/a/a/v0/o/n;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    iget-object v0, v0, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v0}, Ls1/a/a/a/v0/l/k;->unlock()V

    return-object v2

    :cond_1
    if-ne v2, v1, :cond_2

    .line 7
    :try_start_1
    iput-object v0, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/l/e$h;->c(Z)Ls1/a/a/a/v0/l/e$o;

    move-result-object v3

    .line 9
    iget-boolean v4, v3, Ls1/a/a/a/v0/l/e$o;->b:Z

    if-nez v4, :cond_2

    .line 10
    iget-object v0, v3, Ls1/a/a/a/v0/l/e$o;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/l/e$h;->c(Z)Ls1/a/a/a/v0/l/e$o;

    move-result-object v0

    .line 12
    iget-boolean v2, v0, Ls1/a/a/a/v0/l/e$o;->b:Z

    if-nez v2, :cond_3

    .line 13
    iget-object v0, v0, Ls1/a/a/a/v0/l/e$o;->a:Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_3
    iput-object v1, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    iget-object v0, p0, Ls1/a/a/a/v0/l/e$h;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/l/e$h;->b(Ljava/lang/Object;)V

    .line 17
    iput-object v0, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    iget-object v1, v1, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v1}, Ls1/a/a/a/v0/l/k;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 19
    :try_start_3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->m2(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 20
    iget-object v2, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_4

    .line 21
    new-instance v1, Ls1/a/a/a/v0/o/n$b;

    invoke-direct {v1, v0, v3}, Ls1/a/a/a/v0/o/n$b;-><init>(Ljava/lang/Throwable;Ls1/a/a/a/v0/o/n$a;)V

    .line 22
    iput-object v1, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    .line 23
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    .line 24
    iget-object v1, v1, Ls1/a/a/a/v0/l/e;->b:Ls1/a/a/a/v0/l/e$f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    check-cast v1, Ls1/a/a/a/v0/l/e$f$a;

    :try_start_4
    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/l/e$f$a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 26
    :cond_5
    :try_start_5
    sget-object v1, Ls1/a/a/a/v0/l/e$n;->a:Ls1/a/a/a/v0/l/e$n;

    iput-object v1, p0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 28
    iget-object v1, p0, Ls1/a/a/a/v0/l/e$h;->a:Ls1/a/a/a/v0/l/e;

    iget-object v1, v1, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v1}, Ls1/a/a/a/v0/l/k;->unlock()V

    throw v0
.end method
