.class public abstract Lcom/google/android/gms/internal/ads/zzgfx;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgfx<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzgfr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfr;->zza()Lcom/google/android/gms/internal/ads/zzgfr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfx;->zzb:Lcom/google/android/gms/internal/ads/zzgfr;

    return-void
.end method
