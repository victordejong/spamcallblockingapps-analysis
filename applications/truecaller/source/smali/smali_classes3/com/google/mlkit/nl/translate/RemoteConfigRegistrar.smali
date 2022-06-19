.class public Lcom/google/mlkit/nl/translate/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzho;->zza:Le/m/d/m/o;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    .line 4
    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzgs$zza;

    .line 5
    new-instance v3, Le/m/d/m/x;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Le/m/h/b/b/q;->a:Le/m/d/m/r;

    .line 7
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 8
    invoke-virtual {v1}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method
