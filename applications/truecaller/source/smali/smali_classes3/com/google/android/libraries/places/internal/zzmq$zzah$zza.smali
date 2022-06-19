.class public final enum Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzmq$zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzc:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzd:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zze:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzf:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzg:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzh:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzi:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzj:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzk:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzl:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzm:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzn:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final enum zzo:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

.field private static final zzp:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzr:[Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;


# instance fields
.field private final zzq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v3, "SEARCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v5, "BY_LATLNG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v7, "ADD_A_PLACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzf:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 5
    new-instance v7, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v9, "BY_ID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v11, "AUTOCOMPLETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 7
    new-instance v11, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v13, "GET_ALIASES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzg:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 8
    new-instance v13, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v15, "SET_ALIAS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 9
    new-instance v15, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v14, "GET_BY_LOCATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzi:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 10
    new-instance v14, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v12, "DELETE_ALIAS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 11
    new-instance v12, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v10, "SEARCH_BY_BEACON"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzk:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 12
    new-instance v10, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v8, "SEARCH_BY_CHAIN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzl:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 13
    new-instance v8, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v6, "NEARBY_ALERTS_RADIUS_REQUEST"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzm:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 14
    new-instance v6, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v4, "GET_USER_PLACES"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzn:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 15
    new-instance v4, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const-string v2, "SEARCH_BY_CLIENT"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzo:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 16
    sput-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzr:[Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 17
    new-instance v0, Lcom/google/android/libraries/places/internal/zzpi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzpi;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzp:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzq:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzr:[Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzph;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzq:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzq:I

    return v0
.end method
