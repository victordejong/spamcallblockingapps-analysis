.class public final synthetic Lcom/google/android/gms/internal/ads/zzepw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepw;->zza:Lcom/google/android/gms/internal/ads/zzeqa;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepw;->zza:Lcom/google/android/gms/internal/ads/zzeqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeqa;->zzc()Lcom/google/android/gms/internal/ads/zzeqb;

    move-result-object v0

    return-object v0
.end method
