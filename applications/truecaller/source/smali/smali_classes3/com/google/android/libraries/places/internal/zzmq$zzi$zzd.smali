.class public final enum Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzmq$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zze:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzf:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzg:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzh:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzi:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzj:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzk:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzl:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzm:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzn:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzo:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final enum zzp:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

.field private static final zzq:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzs:[Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;


# instance fields
.field private final zzr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v3, "ADD_PLACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzf:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v5, "DELETE_ALIAS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzg:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v7, "ESTIMATE_PLACES_BY_LOCATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 5
    new-instance v7, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v9, "GET_ALIASES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v11, "GET_AUTOCOMPLETE_PREDICTIONS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 7
    new-instance v11, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v13, "GET_NEARBY_ALERT_DATA_BY_ID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzi:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 8
    new-instance v13, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v15, "GET_PLACE_BY_ID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 9
    new-instance v15, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v14, "GET_PLACE_PHOTO_METADATA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 10
    new-instance v14, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v12, "SEARCH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzk:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 11
    new-instance v12, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v10, "SEARCH_BY_BEACON"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzl:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 12
    new-instance v10, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v8, "SEARCH_BY_CHAIN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzm:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 13
    new-instance v8, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v6, "WRITE_ALIAS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzn:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 14
    new-instance v6, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v4, "SEARCH_BY_CLIENT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzo:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 15
    new-instance v4, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v2, "GET_PHOTO"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 16
    new-instance v2, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const-string v6, "SNAP_TO_PLACE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzp:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    const/16 v16, 0x0

    aput-object v0, v6, v16

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

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzs:[Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/zznp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zznp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzq:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzr:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzs:[Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zznq;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzr:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzr:I

    return v0
.end method
