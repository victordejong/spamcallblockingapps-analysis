.class public abstract Lcom/google/android/libraries/places/internal/zzsf$zzb;
.super Lcom/google/android/libraries/places/internal/zzsf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zztq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzsf$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# instance fields
.field public zzc:Lcom/google/android/libraries/places/internal/zzrx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzrx<",
            "Lcom/google/android/libraries/places/internal/zzsf$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzrx;->zza()Lcom/google/android/libraries/places/internal/zzrx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    return-void
.end method
