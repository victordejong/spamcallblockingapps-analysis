.class public final synthetic Lcom/google/android/gms/internal/ads/zzdef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzdfk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdef;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdef;->zza:Lcom/google/android/gms/internal/ads/zzdfk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeli;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeli;->onAdClicked()V

    return-void
.end method
