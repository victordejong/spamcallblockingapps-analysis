.class public final Lcom/google/android/gms/maps/MapView$b;
.super Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/DeferredLifecycleHelper<",
        "Lcom/google/android/gms/maps/MapView$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroid/view/ViewGroup;

.field public final f:Landroid/content/Context;

.field public g:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapView$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/maps/GoogleMapOptions;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->i:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->e:Landroid/view/ViewGroup;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/maps/MapView$b;->f:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/maps/MapView$b;->h:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapView$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->g:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    if-nez p1, :cond_2

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->a(Landroid/content/Context;)I

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->f:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/maps/internal/zzbz;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->f:Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->h:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/maps/internal/zze;->a1(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$b;->g:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    new-instance v1, Lcom/google/android/gms/maps/MapView$a;

    iget-object v2, p0, Lcom/google/android/gms/maps/MapView$b;->e:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/maps/MapView$a;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IMapViewDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/OnMapReadyCallback;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    .line 11
    check-cast v1, Lcom/google/android/gms/maps/MapView$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView$a;->a(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/maps/MapView$b;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    :cond_2
    return-void
.end method
