.class public Le/m/h/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Float;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Le/m/h/b/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/m/h/b/a/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;->zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;->zza()Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;

    move-result-object v0

    iget-object v1, p0, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;->zza(F)Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai$zza;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzai;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/m/h/b/a/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Le/m/h/b/a/a;

    .line 3
    iget-object p1, p1, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    iget-object v0, p0, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/m/h/b/a/a;->a:Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
