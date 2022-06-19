.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# instance fields
.field public zzc:Lcom/google/android/gms/internal/mlkit_common/zzfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzfl<",
            "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zza()Lcom/google/android/gms/internal/mlkit_common/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfl;

    return-void
.end method
