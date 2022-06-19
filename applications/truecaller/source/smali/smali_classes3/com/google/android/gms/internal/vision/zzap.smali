.class public final synthetic Lcom/google/android/gms/internal/vision/zzap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzaw;


# instance fields
.field private final zzfi:Lcom/google/android/gms/internal/vision/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzap;->zzfi:Lcom/google/android/gms/internal/vision/zzaq;

    return-void
.end method


# virtual methods
.method public final zzt()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzap;->zzfi:Lcom/google/android/gms/internal/vision/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzaq;->zzy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
