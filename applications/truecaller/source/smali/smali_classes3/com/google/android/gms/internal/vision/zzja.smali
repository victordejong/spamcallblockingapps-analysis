.class public final Lcom/google/android/gms/internal/vision/zzja;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzaad:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaae:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zziz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zziz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzja;->zzaad:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzja;->zzaae:Ljava/lang/Iterable;

    return-void
.end method

.method public static zzid()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzja;->zzaae:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static synthetic zzie()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzja;->zzaad:Ljava/util/Iterator;

    return-object v0
.end method
