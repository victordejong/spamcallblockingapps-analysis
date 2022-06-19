.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzim;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhb;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhd;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhd;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhb;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Z

    move-result v0

    return v0
.end method
