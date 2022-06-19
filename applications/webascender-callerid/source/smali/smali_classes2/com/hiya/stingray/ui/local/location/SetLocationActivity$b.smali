.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->R(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;->a:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->a0()Lcom/hiya/stingray/ui/local/location/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->f:D

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->g:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/ui/local/location/f;->x(DD)V

    :cond_0
    return-void
.end method
