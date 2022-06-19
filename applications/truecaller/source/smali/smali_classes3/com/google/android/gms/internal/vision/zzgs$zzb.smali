.class public Lcom/google/android/gms/internal/vision/zzgs$zzb;
.super Lcom/google/android/gms/internal/vision/zzgs$zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzgs$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzgs$zza<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzgs$zze;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzgs$zza;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method


# virtual methods
.method public zzfy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgi;

    iput-object v0, v1, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    return-void
.end method

.method public synthetic zzfz()Lcom/google/android/gms/internal/vision/zzgs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zzb;->zzgb()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zze;

    return-object v0
.end method

.method public synthetic zzgb()Lcom/google/android/gms/internal/vision/zzic;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zze;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwk:Lcom/google/android/gms/internal/vision/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgi;->zzdp()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfz()Lcom/google/android/gms/internal/vision/zzgs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zze;

    return-object v0
.end method
