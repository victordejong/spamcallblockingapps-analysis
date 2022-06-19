.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->t5(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;DD)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iput-wide p2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->b:D

    iput-wide p4, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/b/m/v;->v:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.mapCardView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->a()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const-string v1, "it.uiSettings"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->a(Z)V

    .line 5
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    const/high16 v1, 0x41880000    # 17.0f

    .line 6
    iput v1, v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->b:F

    .line 7
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->b:D

    iget-wide v4, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->b(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
