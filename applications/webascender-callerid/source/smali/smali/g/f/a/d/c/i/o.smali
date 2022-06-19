.class final Lg/f/a/d/c/i/o;
.super Lcom/google/android/gms/location/p;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/c;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final declared-synchronized T0(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/a/d/c/i/o;->a:Lcom/google/android/gms/common/api/internal/i;

    new-instance v1, Lg/f/a/d/c/i/n;

    invoke-direct {v1, p0, p1}, Lg/f/a/d/c/i/n;-><init>(Lg/f/a/d/c/i/o;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->c(Lcom/google/android/gms/common/api/internal/i$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
