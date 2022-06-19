.class public final enum Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzhh$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzb:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzc:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzd:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zze:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzf:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzg:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzh:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzi:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzj:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzk:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzl:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzm:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzn:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final enum zzo:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

.field private static final zzp:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzr:[Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;


# instance fields
.field private final zzq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v1, "PLACES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zza:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v4, "ENGINE_STATS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzb:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 3
    new-instance v4, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v6, "USER_CONFIG"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 4
    new-instance v6, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v8, "PLACE_INFERENCE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzd:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 5
    new-instance v8, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v10, "FLP"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zze:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 6
    new-instance v10, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v12, "GEOCODER_STATS"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzf:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 7
    new-instance v12, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v14, "DIALOGS"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzg:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 8
    new-instance v14, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v13, "CHRE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzh:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 9
    new-instance v13, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v15, "FOP"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzi:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 10
    new-instance v15, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v11, "GEOFENCER"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzj:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 11
    new-instance v11, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v9, "RE_UP"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzk:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 12
    new-instance v9, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v7, "NANOAPP"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzl:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 13
    new-instance v7, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v5, "EMERGENCY_ALERT"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzm:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 14
    new-instance v5, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v3, "BLUEPIXEL"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzn:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 15
    new-instance v3, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const-string v2, "INERTIAL_ANCHOR"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzo:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    new-array v2, v5, [Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v3, v2, v7

    .line 16
    sput-object v2, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzr:[Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/zzhi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzhi;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzp:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzq:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzr:[Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzhk;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzq:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zzq:I

    return v0
.end method
