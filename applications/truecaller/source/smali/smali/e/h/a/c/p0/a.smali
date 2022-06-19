.class public Le/h/a/c/p0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/p0/a$a;
    }
.end annotation


# instance fields
.field public a:[I

.field public final b:Le/h/a/c/p0/a$a;

.field public c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:Le/h/a/c/p0/c;

.field public h:Z

.field public i:I

.field public j:[B

.field public k:[I

.field public l:Le/h/a/c/p0/d;

.field public final m:[I

.field public n:[B

.field public o:[S

.field public p:Landroid/graphics/Bitmap;

.field public q:Ljava/nio/ByteBuffer;

.field public r:I

.field public s:Z

.field public t:I

.field public u:[B

.field public v:[B

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Le/h/a/c/p0/e;

    invoke-direct {v0}, Le/h/a/c/p0/e;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x100

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Le/h/a/c/p0/a;->m:[I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/h/a/c/p0/a;->w:I

    .line 5
    iput v1, p0, Le/h/a/c/p0/a;->x:I

    .line 6
    iput-object v0, p0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    .line 7
    new-instance v0, Le/h/a/c/p0/c;

    invoke-direct {v0}, Le/h/a/c/p0/c;-><init>()V

    iput-object v0, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    return-void
.end method


# virtual methods
.method public final a([ILe/h/a/c/p0/b;I)V
    .locals 4

    .line 1
    iget v0, p2, Le/h/a/c/p0/b;->h:I

    iget v1, p0, Le/h/a/c/p0/a;->r:I

    div-int/2addr v0, v1

    .line 2
    iget v2, p2, Le/h/a/c/p0/b;->f:I

    div-int/2addr v2, v1

    .line 3
    iget v3, p2, Le/h/a/c/p0/b;->g:I

    div-int/2addr v3, v1

    .line 4
    iget p2, p2, Le/h/a/c/p0/b;->e:I

    div-int/2addr p2, v1

    .line 5
    iget v1, p0, Le/h/a/c/p0/a;->e:I

    mul-int/2addr v2, v1

    add-int/2addr v2, p2

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_1

    add-int p2, v2, v3

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_0

    .line 6
    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget p2, p0, Le/h/a/c/p0/a;->e:I

    add-int/2addr v2, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/h/a/c/p0/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 3
    :goto_0
    iget-object v1, p0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    iget v2, p0, Le/h/a/c/p0/a;->e:I

    iget v3, p0, Le/h/a/c/p0/a;->d:I

    check-cast v1, Le/h/a/c/p0/e;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method public declared-synchronized c()Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v1, v0, Le/h/a/c/p0/c;->d:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget v1, p0, Le/h/a/c/p0/a;->f:I

    if-gez v1, :cond_1

    .line 2
    :cond_0
    iput v2, p0, Le/h/a/c/p0/a;->t:I

    .line 3
    :cond_1
    iget v1, p0, Le/h/a/c/p0/a;->t:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/h/a/c/p0/a;->t:I

    .line 5
    iget-object v0, v0, Le/h/a/c/p0/c;->e:Ljava/util/List;

    iget v4, p0, Le/h/a/c/p0/a;->f:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p0/b;

    .line 6
    iget v4, p0, Le/h/a/c/p0/a;->f:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    .line 7
    iget-object v5, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/h/a/c/p0/b;

    goto :goto_0

    :cond_3
    move-object v4, v3

    .line 8
    :goto_0
    iget-object v5, v0, Le/h/a/c/p0/b;->i:[I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget-object v5, v5, Le/h/a/c/p0/c;->f:[I

    :goto_1
    iput-object v5, p0, Le/h/a/c/p0/a;->a:[I

    if-nez v5, :cond_5

    .line 9
    iput v2, p0, Le/h/a/c/p0/a;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object v3

    .line 11
    :cond_5
    :try_start_1
    iget-boolean v2, v0, Le/h/a/c/p0/b;->k:Z

    if-eqz v2, :cond_6

    .line 12
    iget-object v2, p0, Le/h/a/c/p0/a;->m:[I

    array-length v3, v5

    invoke-static {v5, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v2, p0, Le/h/a/c/p0/a;->m:[I

    iput-object v2, p0, Le/h/a/c/p0/a;->a:[I

    .line 14
    iget v3, v0, Le/h/a/c/p0/b;->j:I

    aput v1, v2, v3

    .line 15
    :cond_6
    invoke-virtual {p0, v0, v4}, Le/h/a/c/p0/a;->h(Le/h/a/c/p0/b;Le/h/a/c/p0/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 16
    :cond_7
    :goto_2
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d([B)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/p0/a;->l:Le/h/a/c/p0/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/p0/d;

    invoke-direct {v0}, Le/h/a/c/p0/d;-><init>()V

    iput-object v0, p0, Le/h/a/c/p0/a;->l:Le/h/a/c/p0/d;

    .line 3
    :cond_0
    iget-object v0, p0, Le/h/a/c/p0/a;->l:Le/h/a/c/p0/d;

    .line 4
    invoke-virtual {v0, p1}, Le/h/a/c/p0/d;->g([B)Le/h/a/c/p0/d;

    invoke-virtual {v0}, Le/h/a/c/p0/d;->b()Le/h/a/c/p0/c;

    move-result-object v0

    iput-object v0, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    if-eqz p1, :cond_1

    .line 5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    .line 8
    :try_start_2
    invoke-virtual {p0, v0, p1, v1}, Le/h/a/c/p0/a;->g(Le/h/a/c/p0/c;Ljava/nio/ByteBuffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget p1, p0, Le/h/a/c/p0/a;->t:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/p0/a;->f()V

    .line 2
    iget-object v0, p0, Le/h/a/c/p0/a;->v:[B

    iget v1, p0, Le/h/a/c/p0/a;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/h/a/c/p0/a;->w:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Le/h/a/c/p0/a;->t:I

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget v0, p0, Le/h/a/c/p0/a;->x:I

    iget v1, p0, Le/h/a/c/p0/a;->w:I

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/p0/a;->v:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    check-cast v0, Le/h/a/c/p0/e;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [B

    .line 5
    iput-object v0, p0, Le/h/a/c/p0/a;->v:[B

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Le/h/a/c/p0/a;->w:I

    .line 7
    iget-object v2, p0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Le/h/a/c/p0/a;->x:I

    .line 8
    iget-object v2, p0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Le/h/a/c/p0/a;->v:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public declared-synchronized g(Le/h/a/c/p0/c;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    .line 1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/h/a/c/p0/a;->t:I

    .line 3
    iput-object p1, p0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    .line 4
    iput-boolean v0, p0, Le/h/a/c/p0/a;->h:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Le/h/a/c/p0/a;->f:I

    .line 6
    iput v0, p0, Le/h/a/c/p0/a;->i:I

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object p2, p0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    iput-boolean v0, p0, Le/h/a/c/p0/a;->s:Z

    .line 11
    iget-object p2, p1, Le/h/a/c/p0/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/p0/b;

    .line 12
    iget v0, v0, Le/h/a/c/p0/b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Le/h/a/c/p0/a;->s:Z

    .line 14
    :cond_1
    iput p3, p0, Le/h/a/c/p0/a;->r:I

    .line 15
    iget p2, p1, Le/h/a/c/p0/c;->l:I

    div-int v0, p2, p3

    iput v0, p0, Le/h/a/c/p0/a;->e:I

    .line 16
    iget p1, p1, Le/h/a/c/p0/c;->i:I

    div-int p3, p1, p3

    iput p3, p0, Le/h/a/c/p0/a;->d:I

    .line 17
    iget-object p3, p0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    mul-int/2addr p2, p1

    check-cast p3, Le/h/a/c/p0/e;

    .line 18
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-array p1, p2, [B

    .line 20
    iput-object p1, p0, Le/h/a/c/p0/a;->j:[B

    .line 21
    iget-object p1, p0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    iget p2, p0, Le/h/a/c/p0/a;->e:I

    iget p3, p0, Le/h/a/c/p0/a;->d:I

    mul-int/2addr p2, p3

    check-cast p1, Le/h/a/c/p0/e;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-array p1, p2, [I

    .line 24
    iput-object p1, p0, Le/h/a/c/p0/a;->k:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 26
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final h(Le/h/a/c/p0/b;Le/h/a/c/p0/b;)Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v10, v0, Le/h/a/c/p0/a;->k:[I

    const/4 v11, 0x0

    if-nez v2, :cond_0

    .line 2
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v12, 0x1

    if-eqz v2, :cond_6

    .line 3
    iget v5, v2, Le/h/a/c/p0/b;->c:I

    if-lez v5, :cond_6

    if-ne v5, v3, :cond_4

    .line 4
    iget-boolean v3, v1, Le/h/a/c/p0/b;->k:Z

    if-nez v3, :cond_1

    .line 5
    iget-object v3, v0, Le/h/a/c/p0/a;->g:Le/h/a/c/p0/c;

    iget v4, v3, Le/h/a/c/p0/c;->a:I

    .line 6
    iget-object v5, v1, Le/h/a/c/p0/b;->i:[I

    if-eqz v5, :cond_3

    iget v3, v3, Le/h/a/c/p0/c;->b:I

    iget v5, v1, Le/h/a/c/p0/b;->j:I

    if-ne v3, v5, :cond_3

    goto :goto_0

    .line 7
    :cond_1
    iget v3, v0, Le/h/a/c/p0/a;->f:I

    if-nez v3, :cond_2

    .line 8
    iput-boolean v12, v0, Le/h/a/c/p0/a;->h:Z

    :cond_2
    :goto_0
    move v4, v11

    .line 9
    :cond_3
    invoke-virtual {v0, v10, v2, v4}, Le/h/a/c/p0/a;->a([ILe/h/a/c/p0/b;I)V

    goto :goto_1

    :cond_4
    if-ne v5, v4, :cond_6

    .line 10
    iget-object v3, v0, Le/h/a/c/p0/a;->p:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 11
    invoke-virtual {v0, v10, v2, v11}, Le/h/a/c/p0/a;->a([ILe/h/a/c/p0/b;I)V

    goto :goto_1

    .line 12
    :cond_5
    iget v4, v2, Le/h/a/c/p0/b;->h:I

    iget v5, v0, Le/h/a/c/p0/a;->r:I

    div-int v9, v4, v5

    .line 13
    iget v4, v2, Le/h/a/c/p0/b;->f:I

    div-int v7, v4, v5

    .line 14
    iget v4, v2, Le/h/a/c/p0/b;->g:I

    div-int v8, v4, v5

    .line 15
    iget v2, v2, Le/h/a/c/p0/b;->e:I

    div-int v6, v2, v5

    .line 16
    iget v5, v0, Le/h/a/c/p0/a;->e:I

    mul-int v2, v7, v5

    add-int v4, v2, v6

    move-object v2, v3

    move-object v3, v10

    .line 17
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    :cond_6
    :goto_1
    iput v11, v0, Le/h/a/c/p0/a;->x:I

    .line 19
    iput v11, v0, Le/h/a/c/p0/a;->w:I

    .line 20
    iget-object v2, v0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    iget v3, v1, Le/h/a/c/p0/b;->a:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget v2, v1, Le/h/a/c/p0/b;->g:I

    iget v3, v1, Le/h/a/c/p0/b;->h:I

    mul-int/2addr v2, v3

    .line 22
    iget-object v3, v0, Le/h/a/c/p0/a;->j:[B

    if-eqz v3, :cond_7

    array-length v3, v3

    if-ge v3, v2, :cond_8

    .line 23
    :cond_7
    iget-object v3, v0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    check-cast v3, Le/h/a/c/p0/e;

    .line 24
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-array v3, v2, [B

    .line 26
    iput-object v3, v0, Le/h/a/c/p0/a;->j:[B

    .line 27
    :cond_8
    iget-object v3, v0, Le/h/a/c/p0/a;->o:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_9

    new-array v3, v4, [S

    .line 28
    iput-object v3, v0, Le/h/a/c/p0/a;->o:[S

    .line 29
    :cond_9
    iget-object v3, v0, Le/h/a/c/p0/a;->u:[B

    if-nez v3, :cond_a

    new-array v3, v4, [B

    .line 30
    iput-object v3, v0, Le/h/a/c/p0/a;->u:[B

    .line 31
    :cond_a
    iget-object v3, v0, Le/h/a/c/p0/a;->n:[B

    if-nez v3, :cond_b

    const/16 v3, 0x1001

    new-array v3, v3, [B

    .line 32
    iput-object v3, v0, Le/h/a/c/p0/a;->n:[B

    .line 33
    :cond_b
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p0/a;->e()I

    move-result v3

    shl-int v4, v12, v3

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v3, v12

    shl-int v7, v12, v3

    sub-int/2addr v7, v12

    move v8, v11

    :goto_2
    if-ge v8, v4, :cond_c

    .line 34
    iget-object v9, v0, Le/h/a/c/p0/a;->o:[S

    aput-short v11, v9, v8

    .line 35
    iget-object v9, v0, Le/h/a/c/p0/a;->u:[B

    int-to-byte v13, v8

    aput-byte v13, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_c
    const/4 v8, -0x1

    move/from16 p2, v3

    move/from16 v20, p2

    move/from16 v18, v6

    move/from16 v19, v18

    move/from16 v21, v7

    move v3, v11

    move v9, v3

    move v13, v9

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move v6, v12

    move/from16 v12, v17

    :goto_3
    const/16 v22, 0x8

    move/from16 v23, v7

    const/16 v7, 0xff

    if-ge v11, v2, :cond_1c

    if-nez v9, :cond_12

    .line 36
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p0/a;->e()I

    move-result v9

    if-lez v9, :cond_10

    .line 37
    :try_start_0
    iget-object v13, v0, Le/h/a/c/p0/a;->c:[B

    if-nez v13, :cond_d

    .line 38
    iget-object v13, v0, Le/h/a/c/p0/a;->b:Le/h/a/c/p0/a$a;

    check-cast v13, Le/h/a/c/p0/e;

    .line 39
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v7, v7, [B

    .line 40
    iput-object v7, v0, Le/h/a/c/p0/a;->c:[B

    .line 41
    :cond_d
    iget v7, v0, Le/h/a/c/p0/a;->x:I

    iget v13, v0, Le/h/a/c/p0/a;->w:I

    sub-int/2addr v7, v13

    if-lt v7, v9, :cond_e

    .line 42
    iget-object v7, v0, Le/h/a/c/p0/a;->v:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v24, v8

    :try_start_1
    iget-object v8, v0, Le/h/a/c/p0/a;->c:[B

    invoke-static {v7, v13, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v7, v0, Le/h/a/c/p0/a;->w:I

    add-int/2addr v7, v9

    iput v7, v0, Le/h/a/c/p0/a;->w:I

    goto :goto_5

    :cond_e
    move/from16 v24, v8

    .line 44
    iget-object v8, v0, Le/h/a/c/p0/a;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v8, v7

    if-lt v8, v9, :cond_f

    .line 45
    iget-object v8, v0, Le/h/a/c/p0/a;->v:[B

    iget v6, v0, Le/h/a/c/p0/a;->w:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v13, v0, Le/h/a/c/p0/a;->c:[B

    invoke-static {v8, v6, v13, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v6, v0, Le/h/a/c/p0/a;->x:I

    iput v6, v0, Le/h/a/c/p0/a;->w:I

    .line 47
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p0/a;->f()V

    sub-int v6, v9, v7

    .line 48
    iget-object v8, v0, Le/h/a/c/p0/a;->v:[B

    iget-object v13, v0, Le/h/a/c/p0/a;->c:[B

    invoke-static {v8, v3, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget v7, v0, Le/h/a/c/p0/a;->w:I

    add-int/2addr v7, v6

    iput v7, v0, Le/h/a/c/p0/a;->w:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    const/4 v6, 0x1

    goto :goto_4

    .line 50
    :cond_f
    :try_start_3
    iput v6, v0, Le/h/a/c/p0/a;->t:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_1
    move/from16 v24, v8

    .line 51
    :catch_2
    :goto_4
    iput v6, v0, Le/h/a/c/p0/a;->t:I

    goto :goto_5

    :cond_10
    move/from16 v24, v8

    :goto_5
    if-gtz v9, :cond_11

    const/4 v3, 0x3

    .line 52
    iput v3, v0, Le/h/a/c/p0/a;->t:I

    goto/16 :goto_b

    :cond_11
    move v13, v3

    goto :goto_6

    :cond_12
    move/from16 v24, v8

    .line 53
    :goto_6
    iget-object v3, v0, Le/h/a/c/p0/a;->c:[B

    aget-byte v3, v3, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    add-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v19

    move/from16 v6, v20

    move/from16 v8, v24

    :goto_7
    if-lt v14, v6, :cond_1b

    and-int v7, v15, v21

    shr-int/2addr v15, v6

    sub-int/2addr v14, v6

    if-ne v7, v4, :cond_13

    const/4 v8, -0x1

    move/from16 v6, p2

    move/from16 v3, v18

    move/from16 v21, v23

    goto :goto_7

    :cond_13
    if-le v7, v3, :cond_14

    const/4 v7, 0x3

    .line 54
    iput v7, v0, Le/h/a/c/p0/a;->t:I

    goto :goto_8

    :cond_14
    if-ne v7, v5, :cond_15

    :goto_8
    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v20, v6

    move/from16 v6, v19

    move/from16 v19, v3

    move v3, v7

    move/from16 v7, v23

    goto/16 :goto_3

    :cond_15
    move/from16 v19, v5

    const/4 v5, -0x1

    if-ne v8, v5, :cond_16

    .line 55
    iget-object v5, v0, Le/h/a/c/p0/a;->n:[B

    add-int/lit8 v8, v17, 0x1

    iget-object v12, v0, Le/h/a/c/p0/a;->u:[B

    aget-byte v12, v12, v7

    aput-byte v12, v5, v17

    move v12, v7

    move/from16 v17, v8

    move/from16 v5, v19

    move v8, v12

    goto :goto_7

    :cond_16
    if-lt v7, v3, :cond_17

    .line 56
    iget-object v5, v0, Le/h/a/c/p0/a;->n:[B

    add-int/lit8 v20, v17, 0x1

    int-to-byte v12, v12

    aput-byte v12, v5, v17

    move v5, v8

    move/from16 v17, v20

    goto :goto_9

    :cond_17
    move v5, v7

    :goto_9
    if-lt v5, v4, :cond_18

    .line 57
    iget-object v12, v0, Le/h/a/c/p0/a;->n:[B

    add-int/lit8 v20, v17, 0x1

    move/from16 v24, v4

    iget-object v4, v0, Le/h/a/c/p0/a;->u:[B

    aget-byte v4, v4, v5

    aput-byte v4, v12, v17

    .line 58
    iget-object v4, v0, Le/h/a/c/p0/a;->o:[S

    aget-short v5, v4, v5

    move/from16 v17, v20

    move/from16 v4, v24

    goto :goto_9

    :cond_18
    move/from16 v24, v4

    .line 59
    iget-object v4, v0, Le/h/a/c/p0/a;->u:[B

    aget-byte v5, v4, v5

    and-int/lit16 v12, v5, 0xff

    .line 60
    iget-object v5, v0, Le/h/a/c/p0/a;->n:[B

    add-int/lit8 v20, v17, 0x1

    move/from16 v22, v7

    int-to-byte v7, v12

    aput-byte v7, v5, v17

    const/16 v5, 0x1000

    if-ge v3, v5, :cond_19

    .line 61
    iget-object v5, v0, Le/h/a/c/p0/a;->o:[S

    int-to-short v8, v8

    aput-short v8, v5, v3

    .line 62
    aput-byte v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    and-int v4, v3, v21

    if-nez v4, :cond_19

    const/16 v4, 0x1000

    if-ge v3, v4, :cond_19

    add-int/lit8 v6, v6, 0x1

    add-int v21, v21, v3

    :cond_19
    move/from16 v17, v20

    :goto_a
    if-lez v17, :cond_1a

    .line 63
    iget-object v4, v0, Le/h/a/c/p0/a;->j:[B

    add-int/lit8 v5, v16, 0x1

    iget-object v7, v0, Le/h/a/c/p0/a;->n:[B

    add-int/lit8 v17, v17, -0x1

    aget-byte v7, v7, v17

    aput-byte v7, v4, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v5

    goto :goto_a

    :cond_1a
    move/from16 v5, v19

    move/from16 v8, v22

    move/from16 v4, v24

    goto/16 :goto_7

    :cond_1b
    move/from16 v24, v4

    move/from16 v19, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v20, v6

    move/from16 v7, v23

    move v6, v5

    move/from16 v5, v19

    move/from16 v19, v3

    move v3, v4

    move/from16 v4, v24

    goto/16 :goto_3

    :cond_1c
    :goto_b
    move/from16 v3, v16

    :goto_c
    if-ge v3, v2, :cond_1d

    .line 64
    iget-object v4, v0, Le/h/a/c/p0/a;->j:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    const/4 v2, 0x0

    .line 65
    iget v3, v1, Le/h/a/c/p0/b;->h:I

    iget v4, v0, Le/h/a/c/p0/a;->r:I

    div-int/2addr v3, v4

    .line 66
    iget v5, v1, Le/h/a/c/p0/b;->f:I

    div-int/2addr v5, v4

    .line 67
    iget v6, v1, Le/h/a/c/p0/b;->g:I

    div-int/2addr v6, v4

    .line 68
    iget v7, v1, Le/h/a/c/p0/b;->e:I

    div-int/2addr v7, v4

    .line 69
    iget v4, v0, Le/h/a/c/p0/a;->f:I

    if-nez v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_d

    :cond_1e
    move v4, v2

    :goto_d
    const/4 v8, 0x1

    move v9, v8

    move v8, v2

    :goto_e
    if-ge v2, v3, :cond_2f

    .line 70
    iget-boolean v11, v1, Le/h/a/c/p0/b;->d:Z

    if-eqz v11, :cond_23

    const/4 v11, 0x4

    if-lt v8, v3, :cond_22

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eq v9, v12, :cond_21

    if-eq v9, v13, :cond_20

    if-eq v9, v11, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v8, 0x1

    move/from16 v22, v12

    goto :goto_f

    :cond_20
    move/from16 v22, v11

    move v8, v12

    goto :goto_f

    :cond_21
    move v8, v11

    :cond_22
    :goto_f
    add-int v11, v8, v22

    goto :goto_10

    :cond_23
    move v11, v8

    move v8, v2

    :goto_10
    add-int/2addr v8, v5

    .line 71
    iget v12, v0, Le/h/a/c/p0/a;->d:I

    if-ge v8, v12, :cond_2e

    .line 72
    iget v12, v0, Le/h/a/c/p0/a;->e:I

    mul-int/2addr v8, v12

    add-int v13, v8, v7

    add-int v14, v13, v6

    add-int/2addr v8, v12

    if-ge v8, v14, :cond_24

    move v14, v8

    .line 73
    :cond_24
    iget v8, v0, Le/h/a/c/p0/a;->r:I

    mul-int v12, v2, v8

    iget v15, v1, Le/h/a/c/p0/b;->g:I

    mul-int/2addr v12, v15

    invoke-static {v14, v13, v8, v12}, Le/d/c/a/a;->y1(IIII)I

    move-result v8

    :goto_11
    if-ge v13, v14, :cond_2e

    .line 74
    iget v15, v0, Le/h/a/c/p0/a;->r:I

    move/from16 p2, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_25

    .line 75
    iget-object v3, v0, Le/h/a/c/p0/a;->j:[B

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    .line 76
    iget-object v15, v0, Le/h/a/c/p0/a;->a:[I

    aget v3, v15, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v7

    goto/16 :goto_14

    .line 77
    :cond_25
    iget v3, v1, Le/h/a/c/p0/b;->g:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v5

    move/from16 v21, v6

    move v5, v12

    .line 78
    :goto_12
    iget v6, v0, Le/h/a/c/p0/a;->r:I

    add-int/2addr v6, v12

    if-ge v5, v6, :cond_27

    iget-object v6, v0, Le/h/a/c/p0/a;->j:[B

    move/from16 v23, v7

    array-length v7, v6

    if-ge v5, v7, :cond_28

    if-ge v5, v8, :cond_28

    .line 79
    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    .line 80
    iget-object v7, v0, Le/h/a/c/p0/a;->a:[I

    aget v6, v7, v6

    if-eqz v6, :cond_26

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v15, v7

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int v16, v16, v7

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int v17, v17, v7

    and-int/lit16 v6, v6, 0xff

    add-int v18, v18, v6

    add-int/lit8 v19, v19, 0x1

    :cond_26
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v23

    goto :goto_12

    :cond_27
    move/from16 v23, v7

    :cond_28
    add-int/2addr v3, v12

    move v5, v3

    .line 81
    :goto_13
    iget v6, v0, Le/h/a/c/p0/a;->r:I

    add-int/2addr v6, v3

    if-ge v5, v6, :cond_2a

    iget-object v6, v0, Le/h/a/c/p0/a;->j:[B

    array-length v7, v6

    if-ge v5, v7, :cond_2a

    if-ge v5, v8, :cond_2a

    .line 82
    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    .line 83
    iget-object v7, v0, Le/h/a/c/p0/a;->a:[I

    aget v6, v7, v6

    if-eqz v6, :cond_29

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v15, v7

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int v16, v16, v7

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int v17, v17, v7

    and-int/lit16 v6, v6, 0xff

    add-int v18, v18, v6

    add-int/lit8 v19, v19, 0x1

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2a
    if-nez v19, :cond_2b

    const/4 v3, 0x0

    goto :goto_14

    .line 84
    :cond_2b
    div-int v15, v15, v19

    shl-int/lit8 v3, v15, 0x18

    div-int v16, v16, v19

    shl-int/lit8 v5, v16, 0x10

    or-int/2addr v3, v5

    div-int v17, v17, v19

    shl-int/lit8 v5, v17, 0x8

    or-int/2addr v3, v5

    div-int v18, v18, v19

    or-int v3, v3, v18

    :goto_14
    if-eqz v3, :cond_2c

    .line 85
    aput v3, v10, v13

    goto :goto_15

    .line 86
    :cond_2c
    iget-boolean v3, v0, Le/h/a/c/p0/a;->h:Z

    if-nez v3, :cond_2d

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    .line 87
    iput-boolean v3, v0, Le/h/a/c/p0/a;->h:Z

    .line 88
    :cond_2d
    :goto_15
    iget v3, v0, Le/h/a/c/p0/a;->r:I

    add-int/2addr v12, v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p2

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v23

    goto/16 :goto_11

    :cond_2e
    move/from16 p2, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v7

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    move v8, v11

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v23

    goto/16 :goto_e

    .line 89
    :cond_2f
    iget-boolean v2, v0, Le/h/a/c/p0/a;->s:Z

    if-eqz v2, :cond_32

    iget v1, v1, Le/h/a/c/p0/b;->c:I

    if-eqz v1, :cond_30

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 90
    :cond_30
    iget-object v1, v0, Le/h/a/c/p0/a;->p:Landroid/graphics/Bitmap;

    if-nez v1, :cond_31

    .line 91
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p0/a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Le/h/a/c/p0/a;->p:Landroid/graphics/Bitmap;

    .line 92
    :cond_31
    iget-object v1, v0, Le/h/a/c/p0/a;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Le/h/a/c/p0/a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Le/h/a/c/p0/a;->d:I

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 93
    :cond_32
    invoke-virtual/range {p0 .. p0}, Le/h/a/c/p0/a;->b()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 94
    iget v7, v0, Le/h/a/c/p0/a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Le/h/a/c/p0/a;->d:I

    move-object v1, v9

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method
