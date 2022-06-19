.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzfv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzfv;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final enum zzg:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

.field private static final zzh:Lcom/google/android/gms/internal/mlkit_common/zzfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzfu<",
            "Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;


# instance fields
.field private final zzi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zza:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v3, "STATUS_SENSITIVE_TOPIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v5, "STATUS_QUALITY_THRESHOLDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 4
    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v7, "STATUS_INTERNAL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v9, "STATUS_NOT_SUPPORTED_LANGUAGE"

    const/4 v10, 0x4

    const/16 v11, 0x65

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 6
    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v11, "STATUS_32_BIT_CPU"

    const/4 v12, 0x5

    const/16 v13, 0x3e9

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 7
    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const-string v13, "STATUS_32_BIT_APP"

    const/4 v14, 0x6

    const/16 v15, 0x3ea

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzj:[Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzcu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzcu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzfu;

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
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzj:[Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_common/zzfx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzct;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfx;

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
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;

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
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzi:I

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
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbc$zza;->zzi:I

    return v0
.end method
