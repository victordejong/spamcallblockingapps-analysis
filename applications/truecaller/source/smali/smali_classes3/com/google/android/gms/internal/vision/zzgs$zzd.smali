.class public final Lcom/google/android/gms/internal/vision/zzgs$zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzgk<",
        "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public final number:I

.field public final zzwg:Lcom/google/android/gms/internal/vision/zzgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "*>;"
        }
    .end annotation
.end field

.field public final zzwh:Lcom/google/android/gms/internal/vision/zzka;

.field public final zzwi:Z

.field public final zzwj:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzgv;ILcom/google/android/gms/internal/vision/zzka;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzgv<",
            "*>;I",
            "Lcom/google/android/gms/internal/vision/zzka;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwg:Lcom/google/android/gms/internal/vision/zzgv;

    const p1, 0xc0b2142

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    iget p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzib;Lcom/google/android/gms/internal/vision/zzic;)Lcom/google/android/gms/internal/vision/zzib;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zza;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzgs$zza;->zza(Lcom/google/android/gms/internal/vision/zzgs;)Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzih;Lcom/google/android/gms/internal/vision/zzih;)Lcom/google/android/gms/internal/vision/zzih;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    return v0
.end method

.method public final zzfs()Lcom/google/android/gms/internal/vision/zzka;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    return-object v0
.end method

.method public final zzft()Lcom/google/android/gms/internal/vision/zzkd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwh:Lcom/google/android/gms/internal/vision/zzka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzka;->zzip()Lcom/google/android/gms/internal/vision/zzkd;

    move-result-object v0

    return-object v0
.end method

.method public final zzfu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwi:Z

    return v0
.end method

.method public final zzfv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwj:Z

    return v0
.end method
