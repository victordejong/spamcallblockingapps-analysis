.class public abstract Lcom/google/android/gms/internal/vision/zzhm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzye:Lcom/google/android/gms/internal/vision/zzhm;

.field private static final zzyf:Lcom/google/android/gms/internal/vision/zzhm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzho;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzho;-><init>(Lcom/google/android/gms/internal/vision/zzhl;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzhm;->zzye:Lcom/google/android/gms/internal/vision/zzhm;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzhn;-><init>(Lcom/google/android/gms/internal/vision/zzhl;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzhm;->zzyf:Lcom/google/android/gms/internal/vision/zzhm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/zzhl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhm;-><init>()V

    return-void
.end method

.method public static zzgz()Lcom/google/android/gms/internal/vision/zzhm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhm;->zzye:Lcom/google/android/gms/internal/vision/zzhm;

    return-object v0
.end method

.method public static zzha()Lcom/google/android/gms/internal/vision/zzhm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhm;->zzyf:Lcom/google/android/gms/internal/vision/zzhm;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
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

.method public abstract zzb(Ljava/lang/Object;J)V
.end method
