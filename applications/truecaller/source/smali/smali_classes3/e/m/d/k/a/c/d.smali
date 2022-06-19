.class public final Le/m/d/k/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Le/m/d/k/a/a$b;

.field public final c:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field public final d:Le/m/d/k/a/c/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Le/m/d/k/a/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/d/k/a/c/d;->b:Le/m/d/k/a/a$b;

    iput-object p1, p0, Le/m/d/k/a/c/d;->c:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p2, Le/m/d/k/a/c/c;

    invoke-direct {p2, p0}, Le/m/d/k/a/c/c;-><init>(Le/m/d/k/a/c/d;)V

    iput-object p2, p0, Le/m/d/k/a/c/d;->d:Le/m/d/k/a/c/c;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzee;->zzB(Lcom/google/android/gms/measurement/internal/zzgs;)V

    .line 3
    new-instance p1, Ljava/util/HashSet;

    .line 4
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le/m/d/k/a/c/d;->a:Ljava/util/Set;

    return-void
.end method
