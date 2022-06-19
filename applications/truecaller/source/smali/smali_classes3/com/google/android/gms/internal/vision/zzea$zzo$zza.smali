.class public final Lcom/google/android/gms/internal/vision/zzea$zzo$zza;
.super Lcom/google/android/gms/internal/vision/zzgs$zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzea$zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs$zza<",
        "Lcom/google/android/gms/internal/vision/zzea$zzo;",
        "Lcom/google/android/gms/internal/vision/zzea$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzdj()Lcom/google/android/gms/internal/vision/zzea$zzo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzgs$zza;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/zzdz;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzea$zzo$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vision/zzea$zzk$zza;)Lcom/google/android/gms/internal/vision/zzea$zzo$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzgc()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs;

    check-cast p1, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zza(Lcom/google/android/gms/internal/vision/zzea$zzo;Lcom/google/android/gms/internal/vision/zzea$zzk;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzea$zzi;)Lcom/google/android/gms/internal/vision/zzea$zzo$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzfy()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwc:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zza;->zzwb:Lcom/google/android/gms/internal/vision/zzgs;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zza(Lcom/google/android/gms/internal/vision/zzea$zzo;Lcom/google/android/gms/internal/vision/zzea$zzi;)V

    return-object p0
.end method
