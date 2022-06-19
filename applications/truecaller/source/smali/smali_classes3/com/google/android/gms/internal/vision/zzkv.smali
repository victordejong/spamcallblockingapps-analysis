.class public final Lcom/google/android/gms/internal/vision/zzkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzcu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzcu<",
        "Lcom/google/android/gms/internal/vision/zzku;",
        ">;"
    }
.end annotation


# static fields
.field private static zzagg:Lcom/google/android/gms/internal/vision/zzkv;


# instance fields
.field private final zzagd:Lcom/google/android/gms/internal/vision/zzcu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzcu<",
            "Lcom/google/android/gms/internal/vision/zzku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzkv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzkv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzkv;->zzagg:Lcom/google/android/gms/internal/vision/zzkv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/vision/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzkw;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzcx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzcu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzkv;-><init>(Lcom/google/android/gms/internal/vision/zzcu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/vision/zzcu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzcu<",
            "Lcom/google/android/gms/internal/vision/zzku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzcx;->zza(Lcom/google/android/gms/internal/vision/zzcu;)Lcom/google/android/gms/internal/vision/zzcu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzkv;->zzagd:Lcom/google/android/gms/internal/vision/zzcu;

    return-void
.end method

.method public static zzjp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzkv;->zzagg:Lcom/google/android/gms/internal/vision/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzkv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzku;->zzjp()Z

    move-result v0

    return v0
.end method

.method public static zzjq()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzkv;->zzagg:Lcom/google/android/gms/internal/vision/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzkv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzku;->zzjq()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzkv;->zzagd:Lcom/google/android/gms/internal/vision/zzcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzcu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzku;

    return-object v0
.end method
