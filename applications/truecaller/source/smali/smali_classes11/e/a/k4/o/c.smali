.class public final Le/a/k4/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/k4/o/f;

.field public final synthetic c:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/k4/o/f;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/o/c;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/k4/o/c;->b:Le/a/k4/o/f;

    iput-object p4, p0, Le/a/k4/o/c;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    .line 2
    iget-object p1, p0, Le/a/k4/o/c;->b:Le/a/k4/o/f;

    .line 3
    iget-object p1, p1, Le/a/k4/o/f;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 4
    iget-object v0, p0, Le/a/k4/o/c;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 5
    new-instance v1, Le/a/k4/o/b;

    invoke-direct {v1, p0}, Le/a/k4/o/b;-><init>(Le/a/k4/o/c;)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->d(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
