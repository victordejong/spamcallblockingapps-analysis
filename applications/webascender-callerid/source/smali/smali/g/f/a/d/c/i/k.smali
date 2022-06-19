.class final Lg/f/a/d/c/i/k;
.super Lcom/google/android/gms/location/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/k;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/d/c/i/k;->a:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method


# virtual methods
.method public final declared-synchronized B()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/a/d/c/i/k;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D2(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/k;->a:Lcom/google/android/gms/common/api/internal/i;

    new-instance v1, Lg/f/a/d/c/i/j;

    invoke-direct {v1, p0, p1}, Lg/f/a/d/c/i/j;-><init>(Lg/f/a/d/c/i/k;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->c(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void
.end method

.method public final W1(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/k;->a:Lcom/google/android/gms/common/api/internal/i;

    new-instance v1, Lg/f/a/d/c/i/m;

    invoke-direct {v1, p0, p1}, Lg/f/a/d/c/i/m;-><init>(Lg/f/a/d/c/i/k;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->c(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void
.end method
