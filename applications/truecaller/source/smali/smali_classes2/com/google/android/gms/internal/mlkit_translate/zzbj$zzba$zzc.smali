.class public final enum Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzke;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

.field private static final enum zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

.field private static final enum zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_translate/zzkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzkh<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;


# instance fields
.field private final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    const-string v1, "UNKNOWN_PERFORMANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    const-string v3, "FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    const-string v5, "ACCURATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zzf:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzkh;

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
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zzf:[Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkg;

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
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;

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
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zze:I

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
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzba$zzc;->zze:I

    return v0
.end method
