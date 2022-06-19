.class public final Lcom/google/android/gms/internal/mlkit_translate/zzek;
.super Lcom/google/android/gms/internal/mlkit_translate/zzen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzen<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/mlkit_translate/zzel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzek;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzel;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzel;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzeh;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzen;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzeh;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzen;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzem;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzem;->zzf:Ljava/lang/Object;

    return-object v0
.end method
