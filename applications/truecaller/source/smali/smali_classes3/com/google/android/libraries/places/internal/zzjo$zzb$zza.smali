.class public final enum Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzjo$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzsj;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

.field private static final enum zzb:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

.field private static final enum zzc:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

.field private static final enum zzd:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsi<",
            "Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzg:[Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;


# instance fields
.field private final zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    const-string v1, "ALTITUDE_FILTER_VERSION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zza:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    const-string v3, "ALTITUDE_FILTER_DEACTIVATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzb:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    const-string v5, "ALTITUDE_FILTER_V1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzc:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    const-string v7, "ALTITUDE_PARTICLE_FILTER_V1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzd:Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzg:[Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzjq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzjq;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zze:Lcom/google/android/libraries/places/internal/zzsi;

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
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzg:[Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzjr;->zza:Lcom/google/android/libraries/places/internal/zzsl;

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
    const-class v1, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;

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
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzf:I

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
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjo$zzb$zza;->zzf:I

    return v0
.end method
