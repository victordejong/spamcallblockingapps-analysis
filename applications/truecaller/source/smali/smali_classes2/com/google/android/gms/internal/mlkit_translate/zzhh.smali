.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhh;->zza:Ljava/util/Random;

    return-void
.end method

.method public static zza()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x11

    new-array v0, v0, [B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhh;->zza:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 3
    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x70

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0xb

    .line 4
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Generated installation id: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
