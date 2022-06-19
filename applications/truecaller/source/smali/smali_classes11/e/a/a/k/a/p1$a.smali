.class public final Le/a/a/k/a/p1$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/p1;->a(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Lcom/truecaller/messaging/data/types/LinkPreviewEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/io/OutputStream;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/protobuf/ByteString;

.field public final synthetic c:Ls1/z/c/y;

.field public final synthetic d:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

.field public final synthetic e:Le/a/a/k/a/p1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;Ls1/z/c/c0;Ls1/z/c/y;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;Le/a/a/k/a/p1;Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/p1$a;->b:Lcom/google/protobuf/ByteString;

    iput-object p3, p0, Le/a/a/k/a/p1$a;->c:Ls1/z/c/y;

    iput-object p4, p0, Le/a/a/k/a/p1$a;->d:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    iput-object p5, p0, Le/a/a/k/a/p1$a;->e:Le/a/a/k/a/p1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/io/OutputStream;

    const-string v0, "out"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/a/p1$a;->b:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    const-string v1, "input"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    .line 5
    iget-object p1, p0, Le/a/a/k/a/p1$a;->c:Ls1/z/c/y;

    iget-object v1, p0, Le/a/a/k/a/p1$a;->d:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->getLinkPreview()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity$LinkPreview;->hasPlayable()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Le/a/a/k/a/p1$a;->e:Le/a/a/k/a/p1;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 9
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v1, :cond_1

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    move v2, v4

    .line 13
    :cond_2
    iput-boolean v2, p1, Ls1/z/c/y;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {v0, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
