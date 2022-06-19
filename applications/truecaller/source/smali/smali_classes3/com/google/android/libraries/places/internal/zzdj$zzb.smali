.class public final enum Lcom/google/android/libraries/places/internal/zzdj$zzb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzdj$zzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzdj$zzb;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzdj$zzb;

.field private static final synthetic zzc:[Lcom/google/android/libraries/places/internal/zzdj$zzb;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdj$zzb;

    const-string v1, "PROGRAMMATIC_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzdj$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdj$zzb;->zza:Lcom/google/android/libraries/places/internal/zzdj$zzb;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzdj$zzb;

    const-string v3, "AUTOCOMPLETE_WIDGET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzdj$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzdj$zzb;->zzb:Lcom/google/android/libraries/places/internal/zzdj$zzb;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzdj$zzb;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/android/libraries/places/internal/zzdj$zzb;->zzc:[Lcom/google/android/libraries/places/internal/zzdj$zzb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdj$zzb;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzdj$zzb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzdj$zzb;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzdj$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzdj$zzb;->zzc:[Lcom/google/android/libraries/places/internal/zzdj$zzb;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzdj$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzdj$zzb;

    return-object v0
.end method
