.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzav;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:I

.field private final zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzav;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzb:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzc:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzd:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zze:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzf:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzb:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzc:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzd:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zze:I

    iget v5, p0, Lcom/google/android/gms/ads/internal/util/zzam;->zzf:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/util/zzav;->zzq(IIIIILandroid/content/DialogInterface;I)V

    return-void
.end method
