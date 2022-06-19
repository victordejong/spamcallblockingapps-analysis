.class public final Le/a/k4/o/b;
.super Lcom/google/android/gms/location/LocationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/k4/o/c;


# direct methods
.method public constructor <init>(Le/a/k4/o/c;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/o/b;->a:Le/a/k4/o/c;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k4/o/b;->a:Le/a/k4/o/c;

    iget-object v1, v0, Le/a/k4/o/c;->a:Lq3/a/n;

    iget-object v0, v0, Le/a/k4/o/c;->b:Le/a/k4/o/f;

    .line 2
    iget-object v0, v0, Le/a/k4/o/f;->c:Le/a/k4/o/i/a;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->o2()Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 5
    new-instance v2, Le/a/k4/o/a;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Le/a/k4/o/a;-><init>(DD)V

    .line 6
    :cond_1
    invoke-interface {v1, v2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
