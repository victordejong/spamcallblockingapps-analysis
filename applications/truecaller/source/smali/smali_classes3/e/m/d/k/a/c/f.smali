.class public final Le/m/d/k/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/k/a/a$b;

.field public final b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field public final c:Le/m/d/k/a/c/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Le/m/d/k/a/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/d/k/a/c/f;->a:Le/m/d/k/a/a$b;

    iput-object p1, p0, Le/m/d/k/a/c/f;->b:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p2, Le/m/d/k/a/c/e;

    invoke-direct {p2, p0}, Le/m/d/k/a/c/e;-><init>(Le/m/d/k/a/c/f;)V

    iput-object p2, p0, Le/m/d/k/a/c/f;->c:Le/m/d/k/a/c/e;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzee;->zzB(Lcom/google/android/gms/measurement/internal/zzgs;)V

    return-void
.end method
