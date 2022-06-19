.class public final Lcom/google/android/gms/internal/firebase_messaging/zzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/i/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/i/b<",
        "Lcom/google/android/gms/internal/firebase_messaging/zzw;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/util/Map;
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

.field private final zzd:Ljava/util/Map;
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

.field private final zze:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzv;

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzb:Le/m/d/r/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzd:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzb:Le/m/d/r/e;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zze:Le/m/d/r/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Le/m/d/r/g;)Le/m/d/r/i/b;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_messaging/zzx;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzx;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzc:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zzd:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zze:Le/m/d/r/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzx;-><init>(Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V

    return-object v0
.end method
