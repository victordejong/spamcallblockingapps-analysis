.class final Lcom/google/android/gms/common/api/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d$b;
.implements Lcom/google/android/gms/common/api/d$c;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/z;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/z;Lcom/google/android/gms/common/api/internal/y;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/g0;-><init>(Lcom/google/android/gms/common/api/internal/z;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/common/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/z;->n(Lcom/google/android/gms/common/api/internal/z;Lcom/google/android/gms/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->J(Lcom/google/android/gms/common/api/internal/z;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->K(Lcom/google/android/gms/common/api/internal/z;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/z;->c(Lcom/google/android/gms/common/api/internal/z;Lcom/google/android/gms/common/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public final F(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->H(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/internal/e;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/e;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->x(Lcom/google/android/gms/common/api/internal/z;)Lg/f/a/d/f/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/e0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/e0;-><init>(Lcom/google/android/gms/common/api/internal/z;)V

    invoke-interface {p1, v0}, Lg/f/a/d/f/f;->h(Lg/f/a/d/f/b/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/z;->p(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->x(Lcom/google/android/gms/common/api/internal/z;)Lg/f/a/d/f/f;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/f/a/d/f/f;

    new-instance v0, Lcom/google/android/gms/common/api/internal/e0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/g0;->a:Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/e0;-><init>(Lcom/google/android/gms/common/api/internal/z;)V

    .line 10
    invoke-interface {p1, v0}, Lg/f/a/d/f/f;->h(Lg/f/a/d/f/b/d;)V

    return-void
.end method

.method public final w(I)V
    .locals 0

    return-void
.end method
