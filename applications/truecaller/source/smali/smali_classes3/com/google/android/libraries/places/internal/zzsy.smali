.class public abstract Lcom/google/android/libraries/places/internal/zzsy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzsy;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzsy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzta;-><init>(Lcom/google/android/libraries/places/internal/zztb;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzsy;->zza:Lcom/google/android/libraries/places/internal/zzsy;

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/zztd;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zztd;-><init>(Lcom/google/android/libraries/places/internal/zztb;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzsy;->zzb:Lcom/google/android/libraries/places/internal/zzsy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zztb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsy;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzsy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzsy;->zza:Lcom/google/android/libraries/places/internal/zzsy;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/libraries/places/internal/zzsy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzsy;->zzb:Lcom/google/android/libraries/places/internal/zzsy;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
