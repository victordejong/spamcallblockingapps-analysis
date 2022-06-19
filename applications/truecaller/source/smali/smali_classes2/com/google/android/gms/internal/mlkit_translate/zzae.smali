.class public final Lcom/google/android/gms/internal/mlkit_translate/zzae;
.super Lcom/google/android/gms/internal/mlkit_translate/zzw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_translate/zzw<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient zzb:Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzu;Lcom/google/android/gms/internal/mlkit_translate/zzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zze()Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzak<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zze()Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzak;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzae;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    return-object v0
.end method
