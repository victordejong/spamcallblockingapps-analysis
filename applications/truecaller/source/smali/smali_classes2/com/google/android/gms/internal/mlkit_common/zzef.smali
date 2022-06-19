.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzef;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzfv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_common/zzef;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzfv;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzg:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzh:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzi:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzj:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzk:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzl:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzm:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzn:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzo:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final enum zzp:Lcom/google/android/gms/internal/mlkit_common/zzef;

.field private static final zzq:Lcom/google/android/gms/internal/mlkit_common/zzfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzfu<",
            "Lcom/google/android/gms/internal/mlkit_common/zzef;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/mlkit_common/zzef;


# instance fields
.field private final zzr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v3, "CODE_128"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v9, "CODABAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzef;->zze:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 6
    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 7
    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v13, "EAN_13"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 8
    new-instance v13, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v15, "EAN_8"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 9
    new-instance v15, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v14, "ITF"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 10
    new-instance v14, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v12, "QR_CODE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 11
    new-instance v12, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v10, "UPC_A"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 12
    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v8, "UPC_E"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 13
    new-instance v8, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v6, "PDF417"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzm:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 14
    new-instance v6, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v4, "AZTEC"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzn:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 15
    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v2, "DATABAR"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzo:Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzef;

    const-string v6, "TEZ_CODE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x10

    invoke-direct {v2, v6, v4, v8}, Lcom/google/android/gms/internal/mlkit_common/zzef;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzp:Lcom/google/android/gms/internal/mlkit_common/zzef;

    new-array v6, v8, [Lcom/google/android/gms/internal/mlkit_common/zzef;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzs:[Lcom/google/android/gms/internal/mlkit_common/zzef;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzq:Lcom/google/android/gms/internal/mlkit_common/zzfu;

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
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzr:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzef;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzs:[Lcom/google/android/gms/internal/mlkit_common/zzef;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzef;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzef;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_common/zzfx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfx;

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
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzef;

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
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzr:I

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
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzef;->zzr:I

    return v0
.end method
