.class public final Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;
.super Lcom/google/android/gms/location/LocationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->L4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->o2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    invoke-interface {p1, v1}, Le/a/y/a/e/b;->X0(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->o2()Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Le/a/y/a/e/b;->X0(Landroid/location/Location;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$d;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    .line 3
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->p:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->c(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_1
    const-string p1, "fusedLocationClient"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
