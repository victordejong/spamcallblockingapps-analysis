.class public final enum Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzjc$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

.field private static final enum zzb:Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zze:[Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;


# instance fields
.field private final zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    const-string v1, "REVERSE_CACHE_STATS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zza:Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    const-string v4, "ERROR_STATS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zzb:Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    new-array v4, v5, [Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zze:[Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzjf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzjf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zzc:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zze:[Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzje;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zzd:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjc$zzb$zza;->zzd:I

    return v0
.end method
