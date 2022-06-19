.class public final enum Lcom/google/android/libraries/places/internal/zzqg$zzc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzqg$zzc;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzb:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzc:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzd:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zze:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzf:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzg:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzh:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzi:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzj:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzk:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzl:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final enum zzm:Lcom/google/android/libraries/places/internal/zzqg$zzc;

.field private static final zzn:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzqg$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzp:[Lcom/google/android/libraries/places/internal/zzqg$zzc;


# instance fields
.field private final zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zza:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v4, "SUCCESS_INTERRUPTED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzb:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 3
    new-instance v4, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v6, "SUCCESS_NO_GPS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzc:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 4
    new-instance v6, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v8, "FAIL_WRONG_MOTION"

    const/16 v9, 0x15

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzd:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 5
    new-instance v8, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v9, "FAIL_DEVICE_BUSY"

    const/4 v10, 0x4

    const/16 v11, 0x16

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zze:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v11, "FAIL_BATTERY_LOW"

    const/4 v12, 0x5

    const/16 v13, 0x17

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzf:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 7
    new-instance v11, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v13, "FAIL_GPS_OFF"

    const/4 v14, 0x6

    const/16 v15, 0x18

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzg:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 8
    new-instance v13, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_INSUFFICIENT_GPS_TOKENS"

    const/4 v14, 0x7

    const/16 v12, 0x19

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzh:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 9
    new-instance v12, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_NO_CALIBRATION"

    const/16 v14, 0x8

    const/16 v10, 0x1a

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzi:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 10
    new-instance v10, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_CACHE_FULL"

    const/16 v14, 0x9

    const/16 v7, 0x1b

    invoke-direct {v10, v15, v14, v7}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzj:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 11
    new-instance v7, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_ALARM_TIMED_OUT"

    const/16 v14, 0xa

    const/16 v5, 0x1c

    invoke-direct {v7, v15, v14, v5}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzk:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 12
    new-instance v5, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_COULD_NOT_START"

    const/16 v14, 0xb

    const/16 v3, 0x1d

    invoke-direct {v5, v15, v14, v3}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzl:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 13
    new-instance v3, Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const-string v15, "FAIL_OTHER"

    const/16 v14, 0xc

    const/16 v2, 0x63

    invoke-direct {v3, v15, v14, v2}, Lcom/google/android/libraries/places/internal/zzqg$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzm:Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzqg$zzc;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v7, v2, v0

    const/16 v0, 0xb

    aput-object v5, v2, v0

    aput-object v3, v2, v14

    .line 14
    sput-object v2, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzp:[Lcom/google/android/libraries/places/internal/zzqg$zzc;

    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqj;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzn:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzqg$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzp:[Lcom/google/android/libraries/places/internal/zzqg$zzc;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzqg$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzqg$zzc;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzql;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzqg$zzc;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzo:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzqg$zzc;->zzo:I

    return v0
.end method
