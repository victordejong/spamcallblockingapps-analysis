.class public abstract Lcom/google/android/gms/internal/mlkit_translate/zzal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_translate/zzal;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzal;

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzal;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzal;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_translate/zzal;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzaq;

    const/16 v1, 0x3d

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzaq;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzas;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 6
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzas;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzan;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_translate/zzal;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzal;

    return-object v0
.end method


# virtual methods
.method public abstract zza(I)I
.end method

.method public abstract zza([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzap;
        }
    .end annotation
.end method

.method public final zza(Ljava/lang/CharSequence;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zzb(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zza(I)I

    move-result v0

    new-array v1, v0, [B

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzal;->zza([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzap; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public zzb(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
