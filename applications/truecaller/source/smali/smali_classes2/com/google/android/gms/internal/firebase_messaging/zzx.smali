.class public final Lcom/google/android/gms/internal/firebase_messaging/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;",
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zzc:Le/m/d/r/e;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zza:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zzb:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzx;->zzc:Le/m/d/r/e;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzu;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzu;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_messaging/zzu;

    return-void
.end method
