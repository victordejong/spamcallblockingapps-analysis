.class public final enum Lcom/google/android/gms/internal/measurement/f2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/n6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/f2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/n6;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/f2;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/f2;

.field private static final zzc:Lcom/google/android/gms/internal/measurement/o6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/o6<",
            "Lcom/google/android/gms/internal/measurement/f2;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zze:[Lcom/google/android/gms/internal/measurement/f2;


# instance fields
.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/f2;

    const-string v1, "RADS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/f2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/f2;->zza:Lcom/google/android/gms/internal/measurement/f2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/f2;

    const-string v4, "PROVISIONING"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/f2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/f2;->zzb:Lcom/google/android/gms/internal/measurement/f2;

    new-array v4, v5, [Lcom/google/android/gms/internal/measurement/f2;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/measurement/f2;->zze:[Lcom/google/android/gms/internal/measurement/f2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/f2;->zzc:Lcom/google/android/gms/internal/measurement/o6;

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

    iput p3, p0, Lcom/google/android/gms/internal/measurement/f2;->zzd:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/f2;->zze:[Lcom/google/android/gms/internal/measurement/f2;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/f2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/f2;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/f2;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/f2;->zzb:Lcom/google/android/gms/internal/measurement/f2;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/f2;->zza:Lcom/google/android/gms/internal/measurement/f2;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/p6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/e2;->a:Lcom/google/android/gms/internal/measurement/p6;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/measurement/f2;

    .line 2
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

    iget v1, p0, Lcom/google/android/gms/internal/measurement/f2;->zzd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
