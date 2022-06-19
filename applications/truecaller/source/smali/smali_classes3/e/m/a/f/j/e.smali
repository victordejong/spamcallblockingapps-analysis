.class public final Le/m/a/f/j/e;
.super Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
        "Lcom/google/android/gms/internal/location/zzaz;",
        "Lcom/google/android/gms/location/LocationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/location/zzbd;

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    iput-object p2, p0, Le/m/a/f/j/e;->e:Lcom/google/android/gms/internal/location/zzbd;

    iput-object p3, p0, Le/m/a/f/j/e;->f:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient$a;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient$a;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Le/m/a/f/j/e;->e:Lcom/google/android/gms/internal/location/zzbd;

    iget-object v1, p0, Le/m/a/f/j/e;->f:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/location/zzaz;->zza(Lcom/google/android/gms/internal/location/zzbd;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method
