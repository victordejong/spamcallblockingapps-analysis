.class public Le/f/a/n/q/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/h/a$b;,
        Le/f/a/n/q/h/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Ljava/nio/ByteBuffer;",
        "Le/f/a/n/q/h/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Le/f/a/n/q/h/a$a;

.field public static final g:Le/f/a/n/q/h/a$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/q/h/a$b;

.field public final d:Le/f/a/n/q/h/a$a;

.field public final e:Le/f/a/n/q/h/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/q/h/a$a;

    invoke-direct {v0}, Le/f/a/n/q/h/a$a;-><init>()V

    sput-object v0, Le/f/a/n/q/h/a;->f:Le/f/a/n/q/h/a$a;

    .line 2
    new-instance v0, Le/f/a/n/q/h/a$b;

    invoke-direct {v0}, Le/f/a/n/q/h/a$b;-><init>()V

    sput-object v0, Le/f/a/n/q/h/a;->g:Le/f/a/n/q/h/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Le/f/a/n/o/b0/d;",
            "Le/f/a/n/o/b0/b;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/h/a;->g:Le/f/a/n/q/h/a$b;

    sget-object v1, Le/f/a/n/q/h/a;->f:Le/f/a/n/q/h/a$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/f/a/n/q/h/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/f/a/n/q/h/a;->b:Ljava/util/List;

    .line 5
    iput-object v1, p0, Le/f/a/n/q/h/a;->d:Le/f/a/n/q/h/a$a;

    .line 6
    new-instance p1, Le/f/a/n/q/h/b;

    invoke-direct {p1, p3, p4}, Le/f/a/n/q/h/b;-><init>(Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;)V

    iput-object p1, p0, Le/f/a/n/q/h/a;->e:Le/f/a/n/q/h/b;

    .line 7
    iput-object v0, p0, Le/f/a/n/q/h/a;->c:Le/f/a/n/q/h/a$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Le/f/a/n/q/h/i;->b:Le/f/a/n/h;

    invoke-virtual {p2, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Le/f/a/n/q/h/a;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 6
    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 9
    :goto_1
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Le/f/a/n/q/h/a;->c:Le/f/a/n/q/h/a$b;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Le/f/a/n/q/h/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/l/d;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Le/f/a/l/d;

    invoke-direct {v0}, Le/f/a/l/d;-><init>()V

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    .line 6
    iput-object v0, v6, Le/f/a/l/d;->b:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, v6, Le/f/a/l/d;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    new-instance v0, Le/f/a/l/c;

    invoke-direct {v0}, Le/f/a/l/c;-><init>()V

    iput-object v0, v6, Le/f/a/l/d;->c:Le/f/a/l/c;

    .line 9
    iput v2, v6, Le/f/a/l/d;->d:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Le/f/a/l/d;->b:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, v6, Le/f/a/l/d;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 14
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Le/f/a/n/q/h/a;->c(Ljava/nio/ByteBuffer;IILe/f/a/l/d;Le/f/a/n/i;)Le/f/a/n/q/h/e;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object p2, p0, Le/f/a/n/q/h/a;->c:Le/f/a/n/q/h/a$b;

    invoke-virtual {p2, v6}, Le/f/a/n/q/h/a$b;->a(Le/f/a/l/d;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/f/a/n/q/h/a;->c:Le/f/a/n/q/h/a$b;

    invoke-virtual {p2, v6}, Le/f/a/n/q/h/a$b;->a(Le/f/a/l/d;)V

    throw p1

    :catchall_1
    move-exception p2

    .line 16
    monitor-exit p1

    throw p2
.end method

.method public final c(Ljava/nio/ByteBuffer;IILe/f/a/l/d;Le/f/a/n/i;)Le/f/a/n/q/h/e;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "BufferGifDecoder"

    .line 1
    sget v0, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x2

    .line 2
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Le/f/a/l/d;->b()Le/f/a/l/c;

    move-result-object v0

    .line 3
    iget v6, v0, Le/f/a/l/c;->c:I

    const/4 v7, 0x0

    if-lez v6, :cond_6

    .line 4
    iget v6, v0, Le/f/a/l/c;->b:I

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    sget-object v6, Le/f/a/n/q/h/i;->a:Le/f/a/n/h;

    move-object/from16 v8, p5

    invoke-virtual {v8, v6}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Le/f/a/n/b;->b:Le/f/a/n/b;

    if-ne v6, v8, :cond_1

    .line 6
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    :goto_0
    iget v8, v0, Le/f/a/l/c;->g:I

    .line 9
    div-int v8, v8, p3

    .line 10
    iget v9, v0, Le/f/a/l/c;->f:I

    .line 11
    div-int v9, v9, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_1
    const/4 v9, 0x1

    .line 13
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 14
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    iget-object v10, v1, Le/f/a/n/q/h/a;->d:Le/f/a/n/q/h/a$a;

    iget-object v11, v1, Le/f/a/n/q/h/a;->e:Le/f/a/n/q/h/b;

    .line 16
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v12, Le/f/a/l/e;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v0, v10, v8}, Le/f/a/l/e;-><init>(Le/f/a/l/a$a;Le/f/a/l/c;Ljava/nio/ByteBuffer;I)V

    .line 18
    invoke-virtual {v12, v6}, Le/f/a/l/e;->i(Landroid/graphics/Bitmap$Config;)V

    .line 19
    iget v0, v12, Le/f/a/l/e;->k:I

    add-int/2addr v0, v9

    iget-object v6, v12, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v6, v6, Le/f/a/l/c;->c:I

    rem-int/2addr v0, v6

    iput v0, v12, Le/f/a/l/e;->k:I

    .line 20
    invoke-virtual {v12}, Le/f/a/l/e;->c()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_4

    .line 21
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-static {v3, v4}, Le/f/a/t/f;->a(J)D

    :cond_3
    return-object v7

    .line 23
    :cond_4
    :try_start_1
    sget-object v0, Le/f/a/n/q/c;->b:Le/f/a/n/m;

    check-cast v0, Le/f/a/n/q/c;

    .line 24
    new-instance v6, Le/f/a/n/q/h/c;

    iget-object v10, v1, Le/f/a/n/q/h/a;->a:Landroid/content/Context;

    move-object v9, v6

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Le/f/a/n/q/h/c;-><init>(Landroid/content/Context;Le/f/a/l/a;Le/f/a/n/m;IILandroid/graphics/Bitmap;)V

    .line 25
    new-instance v0, Le/f/a/n/q/h/e;

    invoke-direct {v0, v6}, Le/f/a/n/q/h/e;-><init>(Le/f/a/n/q/h/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    invoke-static {v3, v4}, Le/f/a/t/f;->a(J)D

    :cond_5
    return-object v0

    .line 28
    :cond_6
    :goto_2
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-static {v3, v4}, Le/f/a/t/f;->a(J)D

    :cond_7
    return-object v7

    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 31
    invoke-static {v3, v4}, Le/f/a/t/f;->a(J)D

    :cond_8
    throw v0
.end method
