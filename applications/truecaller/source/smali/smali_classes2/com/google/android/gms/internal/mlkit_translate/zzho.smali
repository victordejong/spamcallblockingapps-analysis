.class public final Lcom/google/android/gms/internal/mlkit_translate/zzho;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhg;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    const-string v1, "xBkDPNxUEiMRX5vPP2wqvCR4Grb8GZQqrKNyC0Y"

    const/4 v2, 0x3

    .line 2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "xJXZd/zR0io4+XWtcwbtnyYutpO4NX7DhE3xBg4"

    .line 3
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4
    array-length v4, v1

    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    .line 5
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 6
    aget-byte v7, v1, v6

    aget-byte v8, v3, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "722550545529"

    const-string v3, "82c62205f0ef0ea96608a8"

    .line 8
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzho;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    new-array v2, v5, [Ljava/lang/Class;

    .line 10
    invoke-static {v0, v1, v2}, Le/m/d/m/o;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzho;->zza:Le/m/d/m/o;

    return-void
.end method
