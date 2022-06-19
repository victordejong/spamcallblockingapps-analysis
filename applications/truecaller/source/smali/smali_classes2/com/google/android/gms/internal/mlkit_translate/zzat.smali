.class public final Lcom/google/android/gms/internal/mlkit_translate/zzat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_translate/zzah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzah<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_translate/zzam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzam<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzat;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzah;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzav;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzat;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzam;

    return-void
.end method

.method public static zza()Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1

    .line 3
    new-instance v3, Ljava/io/File;

    const/16 v4, 0xb

    invoke-static {v1, v4}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4, v1, v2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x42

    invoke-static {v1, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Failed to create directory within 10000 attempts (tried "

    const-string v4, "0 to "

    invoke-static {v2, v3, v1, v4, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x270f

    const/16 v3, 0x29

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
