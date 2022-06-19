.class public final Lcom/google/android/gms/internal/vision/zzef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgy;


# static fields
.field public static final zzhb:Lcom/google/android/gms/internal/vision/zzgy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzef;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzef;->zzhb:Lcom/google/android/gms/internal/vision/zzgy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzea$zzf$zzb;->zzt(I)Lcom/google/android/gms/internal/vision/zzea$zzf$zzb;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
