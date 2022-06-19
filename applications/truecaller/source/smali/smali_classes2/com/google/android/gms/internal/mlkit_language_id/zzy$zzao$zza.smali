.class public final enum Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzet;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zze:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzj:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzk:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final enum zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

.field private static final zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_language_id/zzes<",
            "Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzq:[Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;


# instance fields
.field private final zzp:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v3, "FORMAT_CODE_128"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v5, "FORMAT_CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v7, "FORMAT_CODE_93"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzd:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v10, "FORMAT_CODABAR"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zze:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 6
    new-instance v10, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v12, "FORMAT_DATA_MATRIX"

    const/4 v13, 0x5

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzf:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 7
    new-instance v12, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v14, "FORMAT_EAN_13"

    const/4 v15, 0x6

    const/16 v13, 0x20

    invoke-direct {v12, v14, v15, v13}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzg:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 8
    new-instance v13, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v14, "FORMAT_EAN_8"

    const/4 v15, 0x7

    const/16 v9, 0x40

    invoke-direct {v13, v14, v15, v9}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzh:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 9
    new-instance v9, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v14, "FORMAT_ITF"

    const/16 v15, 0x80

    invoke-direct {v9, v14, v11, v15}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzi:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 10
    new-instance v14, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v15, "FORMAT_QR_CODE"

    const/16 v11, 0x9

    const/16 v8, 0x100

    invoke-direct {v14, v15, v11, v8}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzj:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 11
    new-instance v8, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v15, "FORMAT_UPC_A"

    const/16 v11, 0xa

    const/16 v6, 0x200

    invoke-direct {v8, v15, v11, v6}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzk:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 12
    new-instance v6, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v15, "FORMAT_UPC_E"

    const/16 v11, 0xb

    const/16 v4, 0x400

    invoke-direct {v6, v15, v11, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzl:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 13
    new-instance v4, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v15, "FORMAT_PDF417"

    const/16 v11, 0xc

    const/16 v2, 0x800

    invoke-direct {v4, v15, v11, v2}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzm:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const-string v15, "FORMAT_AZTEC"

    const/16 v11, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x1000

    invoke-direct {v2, v15, v11, v4}, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzn:Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v9, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v11

    .line 15
    sput-object v4, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzq:[Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zzbl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzbl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzo:Lcom/google/android/gms/internal/mlkit_language_id/zzes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzq:[Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_language_id/zzev;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzev;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzp:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzao$zza;->zzp:I

    return v0
.end method
