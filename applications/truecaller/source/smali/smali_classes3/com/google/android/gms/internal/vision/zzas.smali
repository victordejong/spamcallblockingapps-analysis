.class public final Lcom/google/android/gms/internal/vision/zzas;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final synthetic zzfq:Lcom/google/android/gms/internal/vision/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzaq;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzas;->zzfq:Lcom/google/android/gms/internal/vision/zzaq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzas;->zzfq:Lcom/google/android/gms/internal/vision/zzaq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzaq;->zzv()V

    return-void
.end method
