.class public final Lcom/google/android/gms/internal/play_billing/zzo;
.super Lcom/google/android/gms/internal/play_billing/zzp;
.source "SourceFile"


# instance fields
.field public final transient zza:I

.field public final transient zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/play_billing/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzp;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzp;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzj;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzo;->zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/play_billing/zzp;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzj;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzp;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzp;->zzf(II)Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object p1

    return-object p1
.end method
