.class public final Lcom/google/android/gms/internal/firebase_messaging/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/i/a;


# static fields
.field public static final zza:Le/m/d/r/i/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzd;->zza:Le/m/d/r/i/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Le/m/d/r/i/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/r/i/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzc;

    invoke-interface {p1, v0, v1}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    const-class v0, Le/m/d/y/e1/b;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzb;

    invoke-interface {p1, v0, v1}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    const-class v0, Le/m/d/y/e1/a;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase_messaging/zza;->zza:Lcom/google/android/gms/internal/firebase_messaging/zza;

    invoke-interface {p1, v0, v1}, Le/m/d/r/i/b;->registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;

    return-void
.end method
