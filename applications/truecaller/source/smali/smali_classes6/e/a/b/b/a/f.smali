.class public final Le/a/b/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic a:Le/a/b/b/a/a;


# direct methods
.method public constructor <init>(Le/a/b/b/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a/f;->a:Le/a/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/b/a/f;->a:Le/a/b/b/a/a;

    .line 2
    iput-object p1, v0, Le/a/b/b/a/a;->d:Lcom/google/android/gms/maps/GoogleMap;

    const-string v0, "map"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->a()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->s(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->b(Z)V

    .line 7
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->l1(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    iget-object p1, p0, Le/a/b/b/a/f;->a:Le/a/b/b/a/a;

    invoke-virtual {p1}, Le/a/b/b/a/a;->PA()Le/a/b/b/a/i;

    move-result-object p1

    .line 9
    iget-object v0, p1, Le/a/b/b/a/i;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/a/g;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/b/b/a/g;->w7(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 11
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/b/b/a/g;->w9()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
