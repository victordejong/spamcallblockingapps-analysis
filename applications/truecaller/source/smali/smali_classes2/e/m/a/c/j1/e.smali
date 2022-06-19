.class public Le/m/a/c/j1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/j1/l;


# static fields
.field public static final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/j1/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/j1/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/j1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/m/a/c/j1/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.exoplayer2.source.dash.offline.DashDownloader"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-static {v1}, Le/m/a/c/j1/e;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 3
    :goto_0
    sput-object v1, Le/m/a/c/j1/e;->b:Ljava/lang/reflect/Constructor;

    :try_start_1
    const-string v1, "com.google.android.exoplayer2.source.hls.offline.HlsDownloader"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v1}, Le/m/a/c/j1/e;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    .line 6
    :goto_1
    sput-object v1, Le/m/a/c/j1/e;->c:Ljava/lang/reflect/Constructor;

    :try_start_2
    const-string v1, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-static {v1}, Le/m/a/c/j1/e;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9
    :catch_2
    sput-object v0, Le/m/a/c/j1/e;->d:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Le/m/a/c/j1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/j1/e;->a:Le/m/a/c/j1/k;

    return-void
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/j1/j;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Le/m/a/c/j1/j;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Le/m/a/c/j1/k;

    aput-object v2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Downloader constructor missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Le/m/a/c/j1/j;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "progressive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "dash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "hls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    new-instance v0, Le/m/a/c/j1/m;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->c:Landroid/net/Uri;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->e:Ljava/lang/String;

    iget-object v2, p0, Le/m/a/c/j1/e;->a:Le/m/a/c/j1/k;

    invoke-direct {v0, v1, p1, v2}, Le/m/a/c/j1/m;-><init>(Landroid/net/Uri;Ljava/lang/String;Le/m/a/c/j1/k;)V

    return-object v0

    .line 4
    :pswitch_1
    sget-object v0, Le/m/a/c/j1/e;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Le/m/a/c/j1/e;->b(Lcom/google/android/exoplayer2/offline/DownloadRequest;Ljava/lang/reflect/Constructor;)Le/m/a/c/j1/j;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object v0, Le/m/a/c/j1/e;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Le/m/a/c/j1/e;->b(Lcom/google/android/exoplayer2/offline/DownloadRequest;Ljava/lang/reflect/Constructor;)Le/m/a/c/j1/j;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_3
    sget-object v0, Le/m/a/c/j1/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Le/m/a/c/j1/e;->b(Lcom/google/android/exoplayer2/offline/DownloadRequest;Ljava/lang/reflect/Constructor;)Le/m/a/c/j1/j;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_3
        0x193ef -> :sswitch_2
        0x2eef92 -> :sswitch_1
        0x43720b8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/exoplayer2/offline/DownloadRequest;Ljava/lang/reflect/Constructor;)Le/m/a/c/j1/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/offline/DownloadRequest;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/j1/j;",
            ">;)",
            "Le/m/a/c/j1/j;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->c:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Le/m/a/c/j1/e;->a:Le/m/a/c/j1/k;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/j1/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to instantiate downloader for: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Module missing for: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
