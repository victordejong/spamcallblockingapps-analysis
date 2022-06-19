.class public abstract Lcom/google/android/gms/internal/vision/zzgs$zze;
.super Lcom/google/android/gms/internal/vision/zzgs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# instance fields
.field public zzwk:Lcom/google/android/gms/internal/vision/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgi;->zzfn()Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/vision/zzge;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzge<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzgs;->zzb(Lcom/google/android/gms/internal/vision/zzge;)Lcom/google/android/gms/internal/vision/zzgs$zzg;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzwz:Lcom/google/android/gms/internal/vision/zzic;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs;->zzgd()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzgs;

    if-ne v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzgc:Ljava/lang/Object;

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxb:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 7
    iget-boolean v2, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/vision/zzkd;->zzaco:Lcom/google/android/gms/internal/vision/zzkd;

    if-ne v1, v2, :cond_2

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0

    .line 13
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzgk()Lcom/google/android/gms/internal/vision/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgi;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    return-object v0
.end method
