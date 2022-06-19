.class public Lcom/google/android/gms/internal/mlkit_common/zzab;
.super Lcom/google/android/gms/internal/mlkit_common/zzae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_common/zzae<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public zza:[Ljava/lang/Object;

.field public zzb:Z

.field private zzc:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzae;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzab;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzab;->zzc:I

    return-void
.end method
