.class public final Lcom/google/android/gms/internal/mlkit_translate/zzmg;
.super Lcom/google/android/gms/internal/mlkit_translate/zzmm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzmm;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/mlkit_translate/zzmf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzmf;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzmg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzmf;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzmm;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzmf;Lcom/google/android/gms/internal/mlkit_translate/zzme;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzmf;Lcom/google/android/gms/internal/mlkit_translate/zzme;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzmg;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzmf;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzmg;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzmf;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzmh;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzmf;Lcom/google/android/gms/internal/mlkit_translate/zzme;)V

    return-object v0
.end method
