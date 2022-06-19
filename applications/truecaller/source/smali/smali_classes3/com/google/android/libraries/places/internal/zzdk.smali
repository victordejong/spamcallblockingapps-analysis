.class public final Lcom/google/android/libraries/places/internal/zzdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Landroid/os/DropBoxManager;

.field private static final zzb:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static zzc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdm;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzdm;-><init>(IFZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdk;->zzb:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static zza(Ljava/lang/String;)J
    .locals 7

    const/16 v0, 0x2e

    .line 25
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzfd;->zza(C)Lcom/google/android/libraries/places/internal/zzfd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzfs;->zza(Lcom/google/android/libraries/places/internal/zzfd;)Lcom/google/android/libraries/places/internal/zzfs;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzfs;->zza(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 28
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :catch_0
    return-wide v1
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Z)V
    .locals 1

    const-class p1, Lcom/google/android/libraries/places/internal/zzdk;

    monitor-enter p1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzdk;->zza:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "dropbox"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    sput-object p0, Lcom/google/android/libraries/places/internal/zzdk;->zza:Landroid/os/DropBoxManager;

    const-string p0, "com.google.android.libraries.places"

    .line 4
    sput-object p0, Lcom/google/android/libraries/places/internal/zzdk;->zzc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static declared-synchronized zza(Ljava/lang/Throwable;)V
    .locals 15

    const-class v0, Lcom/google/android/libraries/places/internal/zzdk;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 8
    sget-object v4, Lcom/google/android/libraries/places/internal/zzdk;->zzb:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v3, :cond_0

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    :try_start_1
    sget-object v5, Lcom/google/android/libraries/places/internal/zzdk;->zza:Landroid/os/DropBoxManager;

    if-eqz v5, :cond_1

    const-string v6, "system_app_crash"

    invoke-virtual {v5, v6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    sget-object v5, Lcom/google/android/libraries/places/internal/zzdk;->zza:Landroid/os/DropBoxManager;

    const-string v6, "system_app_crash"

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2.4.0"

    const-string v9, "Package: %s v%d (%s)\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 14
    sget-object v11, Lcom/google/android/libraries/places/internal/zzdk;->zzc:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 15
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object v8, v10, v11

    .line 16
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Build: %s\n"

    new-array v9, v13, [Ljava/lang/Object;

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v10, v9, v12

    .line 18
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    .line 19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {v5, v6, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
