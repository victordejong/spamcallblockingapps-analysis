.class public final Le/m/h/b/b/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/h/b/b/e/e$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/h/a/d/n/f;

.field public final c:Le/m/h/b/b/b;

.field public final d:Le/m/h/b/b/e/n;

.field public final e:Le/m/h/b/b/e/o;

.field public final f:Landroid/app/DownloadManager;

.field public final g:Le/m/h/a/d/n/c;

.field public final h:Le/m/h/a/d/l;

.field public final i:Lcom/google/android/gms/internal/mlkit_translate/zzgx;

.field public final j:Landroid/content/SharedPreferences;

.field public k:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/h/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/m/h/a/c/a;

.field public n:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TranslateDLManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Le/m/h/a/d/g;Landroid/content/Context;Le/m/h/a/d/n/f;Le/m/h/b/b/b;Le/m/h/b/b/e/v;Le/m/h/b/b/e/n;Le/m/h/b/b/e/o;Landroid/app/DownloadManager;Le/m/h/a/d/n/c;Le/m/h/a/d/l;Le/m/h/b/b/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/h/b/b/e/e;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/m/h/b/b/e/e;->b:Le/m/h/a/d/n/f;

    .line 4
    iput-object p4, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 5
    iput-object p6, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 6
    iput-object p7, p0, Le/m/h/b/b/e/e;->e:Le/m/h/b/b/e/o;

    if-nez p8, :cond_0

    .line 7
    sget-object p3, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p5, "TranslateDLManager"

    const-string p6, "Download manager service is not available in the service."

    invoke-virtual {p3, p5, p6}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iput-object p8, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    .line 9
    iput-object p9, p0, Le/m/h/b/b/e/e;->g:Le/m/h/a/d/n/c;

    .line 10
    iput-object p10, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    .line 11
    const-class p3, Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;

    invoke-virtual {p1, p3}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzgx$zza;

    invoke-virtual {p1, p4}, Le/m/h/a/d/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzgx;

    iput-object p1, p0, Le/m/h/b/b/e/e;->i:Lcom/google/android/gms/internal/mlkit_translate/zzgx;

    const/4 p1, 0x0

    const-string p3, "com.google.mlkit.translate.download_manager"

    .line 12
    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Le/m/h/b/b/e/e;->j:Landroid/content/SharedPreferences;

    .line 13
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v0}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/m/h/b/b/e/e;->b:Le/m/h/a/d/n/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Le/m/h/a/d/n/f;->a(Z)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    const-string v4, "25"

    aput-object v4, v3, v0

    const-string v4, "dict.%1$s_%2$s"

    .line 6
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzat;->zza()Ljava/io/File;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 11
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 15
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "Illegal name: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 17
    invoke-static {v6}, Le/m/d/y/n;->E1(Ljava/io/File;)V

    .line 18
    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    :try_start_2
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzar;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 21
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 22
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 23
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    new-instance p1, Le/m/h/b/b/e/f;

    invoke-direct {p1, v3}, Le/m/h/b/b/e/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 26
    array-length v3, p1

    if-ne v3, v0, :cond_8

    .line 27
    aget-object p1, p1, v2

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 29
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Zip content file could not be moved."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    .line 32
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unzipped folder could not be deleted."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected behavior for inZipFolder inside the zip archive."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Zip file could not be deleted."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception p1

    .line 35
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Could not unzip translate model file"

    .line 36
    sget-object v1, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v2, 0x3

    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 38
    iget-object v1, v1, Lcom/google/android/gms/common/internal/GmsLogger;->b:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    :cond_b
    :goto_6
    iget-object v1, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzs:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v1, v2, v3}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 42
    new-instance v1, Le/m/h/a/a;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2, p1}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v0}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/h/b/b/e/e;->b:Le/m/h/a/d/n/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Le/m/h/a/d/n/f;->a(Z)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-static {v0}, Le/m/h/b/b/e/w;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    move v4, v2

    :cond_0
    if-ge v4, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->i()I

    move-result v0

    iget-object v1, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v1, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v0, v1}, Le/m/h/a/d/l;->a(Le/m/h/a/c/b;)V

    .line 5
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->h()Lcom/google/android/gms/tasks/Task;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->d()Ljava/io/File;
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d()Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v1

    .line 2
    iget-object v1, v1, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 4
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->e()Ljava/lang/Long;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v3, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v2, v3}, Le/m/h/a/d/l;->c(Le/m/h/a/c/b;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->g()Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    .line 8
    iget-object v0, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Le/m/h/a/a;

    const-string v2, "No download"

    invoke-direct {v1, v2, v5}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-object v3

    .line 10
    :cond_1
    sget-object v6, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v7, "TranslateDLManager"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Download Status code: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_7

    .line 12
    iget-object v4, p0, Le/m/h/b/b/e/e;->n:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    .line 13
    iget-object v5, p0, Le/m/h/b/b/e/e;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    iput-object v3, p0, Le/m/h/b/b/e/e;->n:Landroid/content/BroadcastReceiver;

    :cond_2
    const-string v4, "TranslateDLManager"

    const-string v5, "Model downloaded successfully"

    .line 15
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Le/m/h/b/b/e/e;->i:Lcom/google/android/gms/internal/mlkit_translate/zzgx;

    const/4 v5, 0x6

    invoke-virtual {v4, v10, v9, v0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza(IZLe/m/h/a/d/k;I)V

    .line 17
    :try_start_0
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 18
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 20
    iget-object v0, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    invoke-virtual {v0}, Le/m/h/b/b/e/n;->e()V

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->e()Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_4

    goto :goto_0

    .line 23
    :cond_4
    :try_start_1
    iget-object v4, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 24
    :catch_0
    :try_start_2
    sget-object v0, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "TranslateDLManager"

    const-string v5, "Downloaded file is not found"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_5

    .line 25
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzq:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v2, v4}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 28
    :cond_5
    sget-object v4, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v5, "TranslateDLManager"

    const-string v6, "moving downloaded model from external storage to private folder."

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v5, p0, Le/m/h/b/b/e/e;->b:Le/m/h/a/d/n/f;

    iget-object v6, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 30
    invoke-virtual {v5, v0, v2, v6}, Le/m/h/a/d/n/f;->b(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Le/m/h/a/c/b;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6

    .line 31
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzr:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v2, v4}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 34
    :cond_6
    invoke-virtual {p0, v0}, Le/m/h/b/b/e/e;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const-string v5, "TranslateDLManager"

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Moved the downloaded model to private folder successfully: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v4, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 37
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :try_start_3
    invoke-virtual {v0}, Le/m/h/a/d/l;->i()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 39
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "current_model_hash_%s"

    new-array v7, v9, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v4}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v10

    .line 41
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :goto_2
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    .line 46
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v0, v2, v4}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 49
    iget-object v0, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, v1}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception v1

    .line 51
    :try_start_5
    monitor-exit v0

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 52
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    .line 53
    throw v0

    .line 54
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_a

    .line 55
    iget-object v2, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    if-eqz v2, :cond_9

    .line 56
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v6, v9, [J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v10

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "reason"

    .line 58
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 59
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_4

    :cond_9
    :goto_3
    move v1, v10

    .line 60
    :goto_4
    iget-object v2, p0, Le/m/h/b/b/e/e;->i:Lcom/google/android/gms/internal/mlkit_translate/zzgx;

    invoke-virtual {v2, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzgx;->zza(ZLe/m/h/a/d/k;I)V

    .line 61
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    .line 62
    iget-object v0, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Le/m/h/a/a;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Downloading error %d"

    new-array v7, v9, [Ljava/lang/Object;

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v5}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    .line 64
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, v2}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    :cond_a
    return-object v3

    .line 65
    :cond_b
    :goto_5
    sget-object v0, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TranslateDLManager"

    const-string v2, "No new model is downloading."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    return-object v3
.end method

.method public final e()Ljava/lang/Long;
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v1, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Le/m/h/a/d/l;->i()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloading_model_id_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v1}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, -0x1

    .line 6
    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    invoke-virtual {v0}, Le/m/h/b/b/e/n;->e()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    sget-object v1, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cancel or remove existing downloading task: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranslateDLManager"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v3, v2, [J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    aput-wide v4, v3, v0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->remove([J)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Le/m/h/b/b/e/e;->g()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    .line 9
    :cond_2
    iget-object v1, p0, Le/m/h/b/b/e/e;->g:Le/m/h/a/d/n/c;

    iget-object v3, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 10
    invoke-virtual {v3}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 11
    iget-object v4, v4, Le/m/h/a/c/b;->c:Le/m/h/a/d/k;

    .line 12
    invoke-virtual {v1, v3, v4, v2}, Le/m/h/a/d/n/c;->c(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Le/m/h/a/d/n/c;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    sget-object v1, Le/m/h/a/d/n/c;->b:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "Failed to delete the temp labels file directory: "

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "ModelFileHelper"

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v1, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v2, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v1, v2}, Le/m/h/a/d/l;->a(Le/m/h/a/c/b;)V

    .line 18
    iget-object v1, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    iget-object v1, p0, Le/m/h/b/b/e/e;->j:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_uri_for_"

    iget-object v3, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    .line 21
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/h/a/d/i;

    .line 22
    iget-object v0, v0, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method public final g()Ljava/lang/Integer;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    invoke-virtual {v0}, Le/m/h/b/b/e/n;->e()V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v2, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [J

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "status"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    .line 8
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_7

    const-string v3, "reason"

    .line 9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_6

    const/16 v6, 0x257

    if-gt v3, v6, :cond_6

    .line 10
    iget-object v6, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 11
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zza(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 13
    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v6, v3, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto/16 :goto_2

    .line 14
    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v6, v3, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto/16 :goto_2

    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 15
    :pswitch_0
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    goto :goto_1

    .line 16
    :pswitch_1
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 19
    :pswitch_2
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 20
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzn:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 22
    :pswitch_3
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 23
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 25
    :pswitch_4
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 28
    :pswitch_5
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 31
    :pswitch_6
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 32
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 34
    :pswitch_7
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 37
    :pswitch_8
    iget-object v3, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    .line 38
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    goto :goto_2

    .line 40
    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzp:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_translate/zzbu;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbu;

    invoke-virtual {v3, v6, v7}, Le/m/h/b/b/e/n;->d(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzbu;)V

    .line 42
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_8

    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_8

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8

    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v5, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_9

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    :goto_4
    if-eqz v0, :cond_a

    .line 48
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbb;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw v1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final h()Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/e;->m:Le/m/h/a/c/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 2
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->i()I

    move-result v0

    .line 3
    iget-object v3, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v3, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/h/a/d/i;

    .line 6
    :try_start_0
    iget-object v3, p0, Le/m/h/b/b/e/e;->m:Le/m/h/a/c/a;

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 7
    iget-object v3, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v5, p0, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v3, v5}, Le/m/h/a/d/l;->c(Le/m/h/a/c/b;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    if-eqz v3, :cond_3

    .line 8
    iget-object v6, v0, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->g()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v6, "TranslateDLManager"

    const-string v7, "New model is already in downloading, do nothing."

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_3
    sget-object v3, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v6, "TranslateDLManager"

    const-string v7, "Need to download a new model."

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->f()V

    .line 14
    new-instance v6, Landroid/app/DownloadManager$Request;

    .line 15
    iget-object v7, v0, Le/m/h/a/d/i;->b:Landroid/net/Uri;

    .line 16
    invoke-direct {v6, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 17
    invoke-virtual {v6, v4}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 18
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "TranslateDLManager"

    const-string v7, "Model update is disabled and have a previous downloaded model, skip downloading"

    .line 19
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v6, v4

    goto :goto_3

    .line 20
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v3, v7, :cond_5

    .line 21
    iget-object v3, p0, Le/m/h/b/b/e/e;->m:Le/m/h/a/c/a;

    .line 22
    iget-boolean v3, v3, Le/m/h/a/c/a;->a:Z

    .line 23
    invoke-virtual {v6, v3}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 24
    :cond_5
    iget-object v3, p0, Le/m/h/b/b/e/e;->m:Le/m/h/a/c/a;

    .line 25
    iget-boolean v3, v3, Le/m/h/a/c/a;->b:Z

    if-eqz v3, :cond_6

    .line 26
    invoke-virtual {v6, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :cond_6
    const-string v3, "User-Agent"

    const-string v7, "TRANSLATE_OPM5_TEST_1"

    .line 27
    invoke-virtual {v6, v3, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez v6, :cond_7

    .line 28
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->e()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_7

    .line 29
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_7
    if-eqz v6, :cond_a

    .line 30
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v3

    .line 31
    iget-object v3, v3, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 33
    iget-object v3, p0, Le/m/h/b/b/e/e;->f:Landroid/app/DownloadManager;

    if-nez v3, :cond_8

    .line 34
    iget-object v0, p0, Le/m/h/b/b/e/e;->d:Le/m/h/b/b/e/n;

    invoke-virtual {v0}, Le/m/h/b/b/e/n;->e()V

    goto/16 :goto_5

    .line 35
    :cond_8
    invoke-virtual {v3, v6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    .line 36
    sget-object v6, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v7, "TranslateDLManager"

    const/16 v8, 0x35

    const-string v9, "Schedule a new downloading task: "

    invoke-static {v8, v9, v3, v4}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v6, p0, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    .line 38
    monitor-enter v6

    .line 39
    :try_start_1
    iget-object v7, v0, Le/m/h/a/d/i;->a:Ljava/lang/String;

    .line 40
    iget-object v8, v0, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {v6}, Le/m/h/a/d/l;->i()Landroid/content/SharedPreferences;

    move-result-object v9

    .line 42
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "downloading_model_hash_%s"

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v7, v11, v1

    .line 43
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "downloading_model_id_%s"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v1

    .line 44
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "downloading_begin_time_%s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v1

    .line 45
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 47
    invoke-interface {v3, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v6

    .line 50
    iget-object v1, p0, Le/m/h/b/b/e/e;->j:Landroid/content/SharedPreferences;

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_uri_for_"

    .line 52
    iget-object v4, v0, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 53
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 54
    :goto_4
    iget-object v0, v0, Le/m/h/a/d/i;->b:Landroid/net/Uri;

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit v6

    throw v0

    .line 59
    :cond_a
    :goto_5
    invoke-virtual {p0}, Le/m/h/b/b/e/e;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_b

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 63
    :cond_b
    iget-object v0, p0, Le/m/h/b/b/e/e;->n:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_d

    .line 64
    new-instance v0, Le/m/h/b/b/e/g;

    invoke-direct {v0, p0}, Le/m/h/b/b/e/g;-><init>(Le/m/h/b/b/e/e;)V

    iput-object v0, p0, Le/m/h/b/b/e/e;->n:Landroid/content/BroadcastReceiver;

    .line 65
    iget-object v1, p0, Le/m/h/b/b/e/e;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 66
    :cond_c
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 67
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 68
    new-instance v1, Le/m/h/b/b/e/h;

    invoke-direct {v1, p0}, Le/m/h/b/b/e/h;-><init>(Le/m/h/b/b/e/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_d
    :goto_6
    iget-object v0, p0, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 70
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/h/a/d/i;

    .line 3
    iget-object v2, p0, Le/m/h/b/b/e/e;->j:Landroid/content/SharedPreferences;

    const-string v3, "last_uri_for_"

    .line 4
    iget-object v0, v0, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 6
    :goto_1
    iget-object v3, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 7
    iget-object v3, p0, Le/m/h/b/b/e/e;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/h/a/d/i;

    .line 8
    iget-object v3, v3, Le/m/h/a/d/i;->b:Landroid/net/Uri;

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    sget-object v0, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "TranslateDLManager"

    const-string v3, "Stored LAST_URI_ATTEMPTED was not found in ModelInfo"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v1
.end method
