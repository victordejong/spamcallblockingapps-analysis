.class public final Lcom/truecaller/placepicker/PlacePickerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/placepicker/PlacePickerActivity;->O3(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/maps/GoogleMap;

.field public final synthetic b:Lcom/truecaller/placepicker/PlacePickerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/truecaller/placepicker/PlacePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity$b;->a:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/truecaller/placepicker/PlacePickerActivity$b;->b:Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity$b;->a:Lcom/google/android/gms/maps/GoogleMap;

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
    iget-object v1, p0, Lcom/truecaller/placepicker/PlacePickerActivity$b;->b:Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-virtual {v1}, Lcom/truecaller/placepicker/PlacePickerActivity;->qa()Le/a/k4/g;

    move-result-object v1

    const-string v2, "latLng"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Le/a/k4/i;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v3, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 8
    iget-object v5, v3, Le/a/k4/i;->d:Ljava/text/DecimalFormat;

    .line 9
    iget-object v1, v1, Lcom/truecaller/placepicker/data/GeocodedPlace;->d:Ljava/lang/Double;

    .line 10
    invoke-virtual {v5, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v3, Le/a/k4/i;->d:Ljava/text/DecimalFormat;

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v3, Le/a/k4/i;->d:Ljava/text/DecimalFormat;

    iget-object v5, v3, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz v5, :cond_0

    .line 12
    iget-object v5, v5, Lcom/truecaller/placepicker/data/GeocodedPlace;->e:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 13
    :goto_0
    invoke-virtual {v1, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v3, Le/a/k4/i;->d:Ljava/text/DecimalFormat;

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    iget v1, v3, Le/a/k4/i;->g:I

    add-int/2addr v1, v4

    iput v1, v3, Le/a/k4/i;->g:I

    .line 16
    new-instance v6, Le/a/k4/j;

    invoke-direct {v6, v3, v0, v2}, Le/a/k4/j;-><init>(Le/a/k4/i;Lcom/google/android/gms/maps/model/LatLng;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
