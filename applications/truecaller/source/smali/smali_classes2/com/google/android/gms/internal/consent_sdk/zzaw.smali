.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzat;->zzc()V

    return-void
.end method
