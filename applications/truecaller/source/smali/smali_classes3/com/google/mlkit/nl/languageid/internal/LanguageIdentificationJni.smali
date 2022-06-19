.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;
.super Le/m/h/a/d/j;
.source "SourceFile"


# static fields
.field public static h:Z


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field public f:Ljava/nio/MappedByteBuffer;

.field public g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_language_id/zzcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/h/a/d/j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->e:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/a/d/j;->b:Le/m/h/a/d/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Le/m/h/a/d/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    :try_start_0
    iget-wide v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 6
    const-class v2, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    monitor-enter v2
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    :try_start_1
    sget-boolean v6, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_1

    .line 8
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Le/m/h/a/a; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v6, "language_id_jni"

    .line 9
    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 10
    :try_start_4
    sput-boolean v3, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 11
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catch Le/m/h/a/a; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    const/16 v2, 0xd

    .line 12
    :try_start_6
    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v6, "langid_model.smfb.jpg"

    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Le/m/h/a/a; {:try_start_6 .. :try_end_6} :catch_2

    .line 13
    :try_start_7
    new-instance v6, Ljava/io/FileInputStream;

    .line 14
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 15
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 16
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->f:Ljava/nio/MappedByteBuffer;

    .line 17
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeInit(Ljava/nio/MappedByteBuffer;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_2

    .line 18
    :try_start_8
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Le/m/h/a/a; {:try_start_8 .. :try_end_8} :catch_2

    return-void

    .line 19
    :cond_2
    :try_start_9
    new-instance v4, Le/m/h/a/a;

    const-string v5, "Couldn\'t load language detection model"

    invoke-direct {v4, v5, v2}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 20
    :try_start_a
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_b
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzq;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Le/m/h/a/a; {:try_start_b .. :try_end_b} :catch_2

    :catch_0
    move-exception v3

    .line 21
    :try_start_c
    new-instance v4, Le/m/h/a/a;

    const-string v5, "Couldn\'t open language detection model file"

    invoke-direct {v4, v5, v2, v3}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
    :try_end_c
    .catch Le/m/h/a/a; {:try_start_c .. :try_end_c} :catch_2

    :catch_1
    move-exception v3

    .line 22
    :try_start_d
    new-instance v4, Le/m/h/a/a;

    const-string v5, "Couldn\'t load language detection library."

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6, v3}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_e
    monitor-exit v2

    throw v3
    :try_end_e
    .catch Le/m/h/a/a; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v2

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 24
    new-instance v0, Le/m/h/b/a/b/a;

    invoke-direct {v0, v3, v4}, Le/m/h/b/a/b/a;-><init>(J)V

    .line 25
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->e:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzaj;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V

    .line 26
    throw v2
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/h/a/d/j;->b:Le/m/h/a/d/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Le/m/h/a/d/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 4
    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeDestroy(J)V

    .line 6
    iput-wide v2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->f:Ljava/nio/MappedByteBuffer;

    return-void
.end method

.method public final native nativeDestroy(J)V
.end method

.method public final native nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;
.end method

.method public final native nativeInit(Ljava/nio/MappedByteBuffer;J)J
.end method
