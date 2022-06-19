.class public final Lcom/google/android/gms/flags/Singletons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static b:Lcom/google/android/gms/flags/Singletons;


# instance fields
.field public final a:Lcom/google/android/gms/flags/FlagRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/flags/Singletons;

    invoke-direct {v0}, Lcom/google/android/gms/flags/Singletons;-><init>()V

    .line 2
    const-class v1, Lcom/google/android/gms/flags/Singletons;

    monitor-enter v1

    .line 3
    :try_start_0
    sput-object v0, Lcom/google/android/gms/flags/Singletons;->b:Lcom/google/android/gms/flags/Singletons;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/flags/FlagRegistry;

    invoke-direct {v0}, Lcom/google/android/gms/flags/FlagRegistry;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/Singletons;->a:Lcom/google/android/gms/flags/FlagRegistry;

    .line 3
    new-instance v0, Lcom/google/android/gms/flags/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/flags/zzb;-><init>()V

    return-void
.end method
