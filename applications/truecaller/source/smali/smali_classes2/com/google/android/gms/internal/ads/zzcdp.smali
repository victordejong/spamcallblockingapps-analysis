.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Pinged SB successfully."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zza(Ljava/lang/String;)V

    return-void
.end method
