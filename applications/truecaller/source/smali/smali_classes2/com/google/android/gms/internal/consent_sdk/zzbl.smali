.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzbj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbj;->zzb()V

    return-void
.end method
