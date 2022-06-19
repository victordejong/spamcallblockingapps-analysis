.class public final enum Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzke;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

.field private static final enum zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_translate/zzkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzkh<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;


# instance fields
.field private final zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    const-string v3, "TRANSLATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zze:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzcl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzkh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zze:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzck;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zzd:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaj$zza;->zzd:I

    return v0
.end method
