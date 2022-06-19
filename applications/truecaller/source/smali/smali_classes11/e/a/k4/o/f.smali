.class public final Le/a/k4/o/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public final b:Lcom/google/android/gms/location/SettingsClient;

.field public final c:Le/a/k4/o/i/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/SettingsClient;Le/a/k4/o/i/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fusedLocationProviderClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationServicesSettingsClient"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeMapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k4/o/f;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Le/a/k4/o/f;->b:Lcom/google/android/gms/location/SettingsClient;

    iput-object p3, p0, Le/a/k4/o/f;->c:Le/a/k4/o/i/a;

    return-void
.end method
