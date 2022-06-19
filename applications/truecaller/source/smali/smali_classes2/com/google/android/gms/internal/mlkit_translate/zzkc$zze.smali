.class public abstract Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# instance fields
.field public zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzju<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    return-void
.end method
