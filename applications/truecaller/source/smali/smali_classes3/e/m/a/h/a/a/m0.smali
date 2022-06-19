.class public final Le/m/a/h/a/a/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/m0;->a:Le/m/a/h/a/d/f1;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 8

    iget-object v0, p0, Le/m/a/h/a/a/m0;->a:Le/m/a/h/a/d/f1;

    .line 1
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/s3;

    invoke-interface {v0, p1, p2, p3, p4}, Le/m/a/h/a/a/s3;->b(ILjava/lang/String;Ljava/lang/String;I)Le/m/a/h/a/h/r;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 2
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->m(Le/m/a/h/a/h/r;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    .line 5
    :cond_0
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v6, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p2, v6, v3

    aput-object p3, v6, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s"

    .line 7
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 8
    new-instance p3, Le/m/a/h/a/a/x0;

    const-string p4, "Extractor was interrupted while waiting for chunk file."

    .line 9
    invoke-direct {p3, p4, p2, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p3

    :catch_1
    move-exception v0

    new-instance v6, Le/m/a/h/a/a/x0;

    new-array v5, v5, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    const-string p2, "Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s"

    .line 11
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v6
.end method
