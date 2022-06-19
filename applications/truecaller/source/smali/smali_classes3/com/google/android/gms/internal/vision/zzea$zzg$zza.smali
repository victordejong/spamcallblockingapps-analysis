.class public final enum Lcom/google/android/gms/internal/vision/zzea$zzg$zza;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzea$zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzea$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgw;"
    }
.end annotation


# static fields
.field private static final zzgy:Lcom/google/android/gms/internal/vision/zzgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "Lcom/google/android/gms/internal/vision/zzea$zzg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzoc:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

.field public static final enum zzod:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

.field public static final enum zzoe:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

.field private static final synthetic zzof:[Lcom/google/android/gms/internal/vision/zzea$zzg$zza;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    const-string v1, "CLASSIFICATION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzoc:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    const-string v3, "CLASSIFICATION_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzod:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    const-string v5, "CLASSIFICATION_ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzoe:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzof:[Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/vision/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzgy:Lcom/google/android/gms/internal/vision/zzgv;

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
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzea$zzg$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzof:[Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    return-object v0
.end method

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzeg;->zzhb:Lcom/google/android/gms/internal/vision/zzgy;

    return-object v0
.end method

.method public static zzu(I)Lcom/google/android/gms/internal/vision/zzea$zzg$zza;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzoe:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzod:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzoc:Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;

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
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->value:I

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

.method public final zzag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->value:I

    return v0
.end method
