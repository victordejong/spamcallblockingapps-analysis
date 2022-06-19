.class public final Le/a/b/b/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/a/a;->w9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/maps/GoogleMap;

.field public final synthetic b:Le/a/b/b/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Le/a/b/b/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a/a$d;->a:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Le/a/b/b/a/a$d;->b:Le/a/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/b/b/a/a$d;->a:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->y0()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 5
    iget-object v1, p0, Le/a/b/b/a/a$d;->b:Le/a/b/b/a/a;

    invoke-virtual {v1}, Le/a/b/b/a/a;->PA()Le/a/b/b/a/i;

    move-result-object v1

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/a/b/b/a/h;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Le/a/b/b/a/h;-><init>(Le/a/b/b/a/i;DDLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
