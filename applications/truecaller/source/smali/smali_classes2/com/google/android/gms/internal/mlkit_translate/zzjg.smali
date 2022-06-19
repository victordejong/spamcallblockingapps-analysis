.class public final Lcom/google/android/gms/internal/mlkit_translate/zzjg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzjp;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzjg;->zzb:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjp;->zza([B)Lcom/google/android/gms/internal/mlkit_translate/zzjp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzjp;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/mlkit_translate/zzjb;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zziy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzjp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzjp;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzji;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzjg;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzji;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_translate/zzjp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzjp;

    return-object v0
.end method
