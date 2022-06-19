.class public Le/f/a/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/l/a;


# static fields
.field public static final u:Ljava/lang/String; = "e"


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Le/f/a/l/a$a;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[I

.field public k:I

.field public l:Le/f/a/l/c;

.field public m:Landroid/graphics/Bitmap;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Le/f/a/l/a$a;Le/f/a/l/c;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Le/f/a/l/e;->b:[I

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Le/f/a/l/e;->t:Landroid/graphics/Bitmap$Config;

    .line 4
    iput-object p1, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    .line 5
    new-instance p1, Le/f/a/l/c;

    invoke-direct {p1}, Le/f/a/l/c;-><init>()V

    iput-object p1, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    .line 6
    monitor-enter p0

    if-lez p4, :cond_3

    .line 7
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 p4, 0x0

    .line 8
    iput p4, p0, Le/f/a/l/e;->o:I

    .line 9
    iput-object p2, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Le/f/a/l/e;->k:I

    .line 11
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    iget-object p3, p0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    iput-boolean p4, p0, Le/f/a/l/e;->n:Z

    .line 15
    iget-object p3, p2, Le/f/a/l/c;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/f/a/l/b;

    .line 16
    iget p4, p4, Le/f/a/l/b;->g:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    .line 17
    iput-boolean p3, p0, Le/f/a/l/e;->n:Z

    .line 18
    :cond_1
    iput p1, p0, Le/f/a/l/e;->p:I

    .line 19
    iget p3, p2, Le/f/a/l/c;->f:I

    div-int p4, p3, p1

    iput p4, p0, Le/f/a/l/e;->r:I

    .line 20
    iget p2, p2, Le/f/a/l/c;->g:I

    div-int p1, p2, p1

    iput p1, p0, Le/f/a/l/e;->q:I

    .line 21
    iget-object p1, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr p3, p2

    check-cast p1, Le/f/a/n/q/h/b;

    :try_start_1
    invoke-virtual {p1, p3}, Le/f/a/n/q/h/b;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Le/f/a/l/e;->i:[B

    .line 22
    iget-object p1, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    iget p2, p0, Le/f/a/l/e;->r:I

    iget p3, p0, Le/f/a/l/e;->q:I

    mul-int/2addr p2, p3

    check-cast p1, Le/f/a/n/q/h/b;

    .line 23
    iget-object p1, p1, Le/f/a/n/q/h/b;->b:Le/f/a/n/o/b0/b;

    if-nez p1, :cond_2

    .line 24
    new-array p1, p2, [I

    goto :goto_0

    .line 25
    :cond_2
    const-class p3, [I

    invoke-interface {p1, p2, p3}, Le/f/a/n/o/b0/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 26
    :goto_0
    iput-object p1, p0, Le/f/a/l/e;->j:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sample size must be >=0, not: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/a/l/e;->k:I

    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Le/f/a/l/e;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Le/f/a/l/e;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public declared-synchronized c()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v0, v0, Le/f/a/l/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Le/f/a/l/e;->k:I

    if-gez v0, :cond_2

    .line 2
    :cond_0
    sget-object v0, Le/f/a/l/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v0, v0, Le/f/a/l/c;->c:I

    .line 4
    :cond_1
    iput v2, p0, Le/f/a/l/e;->o:I

    .line 5
    :cond_2
    iget v0, p0, Le/f/a/l/e;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Le/f/a/l/e;->o:I

    .line 7
    iget-object v5, p0, Le/f/a/l/e;->e:[B

    if-nez v5, :cond_4

    .line 8
    iget-object v5, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xff

    check-cast v5, Le/f/a/n/q/h/b;

    :try_start_1
    invoke-virtual {v5, v6}, Le/f/a/n/q/h/b;->a(I)[B

    move-result-object v5

    iput-object v5, p0, Le/f/a/l/e;->e:[B

    .line 9
    :cond_4
    iget-object v5, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget-object v5, v5, Le/f/a/l/c;->e:Ljava/util/List;

    iget v6, p0, Le/f/a/l/e;->k:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/f/a/l/b;

    .line 10
    iget v6, p0, Le/f/a/l/e;->k:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    .line 11
    iget-object v7, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget-object v7, v7, Le/f/a/l/c;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/f/a/l/b;

    goto :goto_0

    :cond_5
    move-object v6, v3

    .line 12
    :goto_0
    iget-object v7, v5, Le/f/a/l/b;->k:[I

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget-object v7, v7, Le/f/a/l/c;->a:[I

    :goto_1
    iput-object v7, p0, Le/f/a/l/e;->a:[I

    if-nez v7, :cond_7

    .line 13
    sget-object v0, Le/f/a/l/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 14
    iput v2, p0, Le/f/a/l/e;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-object v3

    .line 16
    :cond_7
    :try_start_2
    iget-boolean v1, v5, Le/f/a/l/b;->f:Z

    if-eqz v1, :cond_8

    .line 17
    iget-object v1, p0, Le/f/a/l/e;->b:[I

    array-length v2, v7

    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v1, p0, Le/f/a/l/e;->b:[I

    iput-object v1, p0, Le/f/a/l/e;->a:[I

    .line 19
    iget v2, v5, Le/f/a/l/b;->h:I

    aput v0, v1, v2

    .line 20
    iget v0, v5, Le/f/a/l/b;->g:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Le/f/a/l/e;->k:I

    if-nez v0, :cond_8

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    .line 22
    :cond_8
    invoke-virtual {p0, v5, v6}, Le/f/a/l/e;->j(Le/f/a/l/b;Le/f/a/l/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :cond_9
    :goto_2
    :try_start_3
    sget-object v0, Le/f/a/l/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    .line 2
    iget-object v1, p0, Le/f/a/l/e;->i:[B

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v2, Le/f/a/n/q/h/b;

    .line 4
    iget-object v2, v2, Le/f/a/n/q/h/b;->b:Le/f/a/n/o/b0/b;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v2, v1}, Le/f/a/n/o/b0/b;->put(Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Le/f/a/l/e;->j:[I

    if-eqz v1, :cond_3

    .line 7
    iget-object v2, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v2, Le/f/a/n/q/h/b;

    .line 8
    iget-object v2, v2, Le/f/a/n/q/h/b;->b:Le/f/a/n/o/b0/b;

    if-nez v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v2, v1}, Le/f/a/n/o/b0/b;->put(Ljava/lang/Object;)V

    .line 10
    :cond_3
    :goto_1
    iget-object v1, p0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 11
    iget-object v2, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v2, Le/f/a/n/q/h/b;

    .line 12
    iget-object v2, v2, Le/f/a/n/q/h/b;->a:Le/f/a/n/o/b0/d;

    invoke-interface {v2, v1}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_4
    iput-object v0, p0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    .line 14
    iput-object v0, p0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    .line 15
    iput-object v0, p0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    .line 16
    iget-object v0, p0, Le/f/a/l/e;->e:[B

    if-eqz v0, :cond_6

    .line 17
    iget-object v1, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v1, Le/f/a/n/q/h/b;

    .line 18
    iget-object v1, v1, Le/f/a/n/q/h/b;->b:Le/f/a/n/o/b0/b;

    if-nez v1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v1, v0}, Le/f/a/n/o/b0/b;->put(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Le/f/a/l/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v1, v1, Le/f/a/l/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Le/f/a/l/e;->k:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v0, v0, Le/f/a/l/c;->c:I

    return v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public g()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v1, v0, Le/f/a/l/c;->c:I

    if-lez v1, :cond_2

    iget v2, p0, Le/f/a/l/e;->k:I

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    if-ge v2, v1, :cond_1

    .line 2
    iget-object v0, v0, Le/f/a/l/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/l/b;

    iget v0, v0, Le/f/a/l/b;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/f/a/l/e;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    :goto_1
    iget-object v1, p0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    iget v2, p0, Le/f/a/l/e;->r:I

    iget v3, p0, Le/f/a/l/e;->q:I

    check-cast v1, Le/f/a/n/q/h/b;

    .line 3
    iget-object v1, v1, Le/f/a/n/q/h/b;->a:Le/f/a/n/o/b0/d;

    invoke-interface {v1, v2, v3, v0}, Le/f/a/n/o/b0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method public i(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Le/f/a/l/e;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final j(Le/f/a/l/b;Le/f/a/l/b;)Landroid/graphics/Bitmap;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v10, v0, Le/f/a/l/e;->j:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 2
    iget-object v3, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, v0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v4, Le/f/a/n/q/h/b;

    .line 4
    iget-object v4, v4, Le/f/a/n/q/h/b;->a:Le/f/a/n/o/b0/d;

    invoke-interface {v4, v3}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v3, 0x0

    .line 5
    iput-object v3, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    .line 6
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 7
    iget v4, v2, Le/f/a/l/b;->g:I

    if-ne v4, v3, :cond_2

    iget-object v4, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 8
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v4, 0x2

    if-eqz v2, :cond_7

    .line 9
    iget v5, v2, Le/f/a/l/b;->g:I

    if-lez v5, :cond_7

    if-ne v5, v4, :cond_6

    .line 10
    iget-boolean v3, v1, Le/f/a/l/b;->f:Z

    if-nez v3, :cond_3

    .line 11
    iget-object v3, v0, Le/f/a/l/e;->l:Le/f/a/l/c;

    iget v4, v3, Le/f/a/l/c;->k:I

    .line 12
    iget-object v5, v1, Le/f/a/l/b;->k:[I

    if-eqz v5, :cond_4

    iget v3, v3, Le/f/a/l/c;->j:I

    iget v5, v1, Le/f/a/l/b;->h:I

    if-ne v3, v5, :cond_4

    :cond_3
    move v4, v11

    .line 13
    :cond_4
    iget v3, v2, Le/f/a/l/b;->d:I

    iget v5, v0, Le/f/a/l/e;->p:I

    div-int/2addr v3, v5

    .line 14
    iget v6, v2, Le/f/a/l/b;->b:I

    div-int/2addr v6, v5

    .line 15
    iget v7, v2, Le/f/a/l/b;->c:I

    div-int/2addr v7, v5

    .line 16
    iget v2, v2, Le/f/a/l/b;->a:I

    div-int/2addr v2, v5

    .line 17
    iget v5, v0, Le/f/a/l/e;->r:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    mul-int/2addr v3, v5

    add-int/2addr v3, v6

    :goto_0
    if-ge v6, v3, :cond_7

    add-int v2, v6, v7

    move v5, v6

    :goto_1
    if-ge v5, v2, :cond_5

    .line 18
    aput v4, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget v2, v0, Le/f/a/l/e;->r:I

    add-int/2addr v6, v2

    goto :goto_0

    :cond_6
    if-ne v5, v3, :cond_7

    .line 20
    iget-object v2, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    .line 21
    iget v8, v0, Le/f/a/l/e;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Le/f/a/l/e;->q:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    :cond_7
    iget-object v2, v0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Le/f/a/l/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    iget v2, v1, Le/f/a/l/b;->c:I

    iget v3, v1, Le/f/a/l/b;->d:I

    mul-int/2addr v2, v3

    .line 24
    iget-object v3, v0, Le/f/a/l/e;->i:[B

    if-eqz v3, :cond_8

    array-length v3, v3

    if-ge v3, v2, :cond_9

    .line 25
    :cond_8
    iget-object v3, v0, Le/f/a/l/e;->c:Le/f/a/l/a$a;

    check-cast v3, Le/f/a/n/q/h/b;

    invoke-virtual {v3, v2}, Le/f/a/n/q/h/b;->a(I)[B

    move-result-object v3

    iput-object v3, v0, Le/f/a/l/e;->i:[B

    .line 26
    :cond_9
    iget-object v3, v0, Le/f/a/l/e;->i:[B

    .line 27
    iget-object v4, v0, Le/f/a/l/e;->f:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_a

    new-array v4, v5, [S

    .line 28
    iput-object v4, v0, Le/f/a/l/e;->f:[S

    .line 29
    :cond_a
    iget-object v4, v0, Le/f/a/l/e;->f:[S

    .line 30
    iget-object v6, v0, Le/f/a/l/e;->g:[B

    if-nez v6, :cond_b

    new-array v5, v5, [B

    .line 31
    iput-object v5, v0, Le/f/a/l/e;->g:[B

    .line 32
    :cond_b
    iget-object v5, v0, Le/f/a/l/e;->g:[B

    .line 33
    iget-object v6, v0, Le/f/a/l/e;->h:[B

    if-nez v6, :cond_c

    const/16 v6, 0x1001

    new-array v6, v6, [B

    .line 34
    iput-object v6, v0, Le/f/a/l/e;->h:[B

    .line 35
    :cond_c
    iget-object v6, v0, Le/f/a/l/e;->h:[B

    .line 36
    iget-object v7, v0, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v9, 0x2

    add-int/2addr v7, v8

    shl-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    move v14, v11

    :goto_2
    if-ge v14, v9, :cond_d

    .line 37
    aput-short v11, v4, v14

    int-to-byte v15, v14

    .line 38
    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 39
    :cond_d
    iget-object v14, v0, Le/f/a/l/e;->e:[B

    const/4 v15, -0x1

    move/from16 p2, v7

    move/from16 v25, p2

    move/from16 v23, v8

    move/from16 v26, v23

    move v7, v11

    move/from16 v16, v7

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v24, v13

    move/from16 v22, v15

    move-object v8, v0

    move/from16 v15, v21

    :goto_3
    const/16 v27, 0x8

    if-ge v11, v2, :cond_19

    if-nez v16, :cond_10

    .line 40
    iget-object v15, v8, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    if-gtz v15, :cond_e

    move-object/from16 v30, v10

    move/from16 v28, v11

    move/from16 v29, v13

    goto :goto_4

    :cond_e
    move/from16 v28, v11

    .line 41
    iget-object v11, v8, Le/f/a/l/e;->d:Ljava/nio/ByteBuffer;

    move/from16 v29, v13

    iget-object v13, v8, Le/f/a/l/e;->e:[B

    move-object/from16 v30, v10

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v0, 0x0

    invoke-virtual {v11, v13, v0, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    if-gtz v15, :cond_f

    const/4 v0, 0x3

    .line 42
    iput v0, v8, Le/f/a/l/e;->o:I

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_f
    const/16 v17, 0x0

    move/from16 v16, v15

    goto :goto_5

    :cond_10
    move-object/from16 v30, v10

    move/from16 v28, v11

    move/from16 v29, v13

    .line 43
    :goto_5
    aget-byte v0, v14, v17

    and-int/lit16 v0, v0, 0xff

    shl-int v0, v0, v18

    add-int v19, v19, v0

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v18

    move/from16 v10, v20

    move/from16 v13, v22

    move/from16 v15, v24

    move/from16 v11, v28

    move-object/from16 v18, v8

    move/from16 v8, v25

    :goto_6
    if-lt v0, v8, :cond_18

    move-object/from16 v20, v14

    and-int v14, v19, v26

    shr-int v19, v19, v8

    sub-int/2addr v0, v8

    if-ne v14, v9, :cond_11

    const/4 v8, -0x1

    move-object/from16 v22, v6

    move v13, v8

    move/from16 v26, v23

    move/from16 v15, v29

    move/from16 v8, p2

    move-object/from16 v32, v18

    move/from16 v18, v0

    move-object/from16 v0, v32

    goto/16 :goto_9

    :cond_11
    if-ne v14, v12, :cond_12

    move-object/from16 v22, v6

    goto/16 :goto_a

    :cond_12
    move/from16 v18, v0

    const/4 v0, -0x1

    if-ne v13, v0, :cond_13

    .line 44
    aget-byte v0, v5, v14

    aput-byte v0, v3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    move v13, v10

    move/from16 v0, v18

    move-object/from16 v14, v20

    move-object/from16 v18, p0

    goto :goto_6

    :cond_13
    if-lt v14, v15, :cond_14

    int-to-byte v0, v10

    .line 45
    aput-byte v0, v6, v21

    add-int/lit8 v21, v21, 0x1

    move v0, v13

    goto :goto_7

    :cond_14
    move v0, v14

    :goto_7
    if-lt v0, v9, :cond_15

    .line 46
    aget-byte v10, v5, v0

    aput-byte v10, v6, v21

    add-int/lit8 v21, v21, 0x1

    .line 47
    aget-short v0, v4, v0

    goto :goto_7

    .line 48
    :cond_15
    aget-byte v0, v5, v0

    and-int/lit16 v10, v0, 0xff

    int-to-byte v0, v10

    .line 49
    aput-byte v0, v3, v7

    :goto_8
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    if-lez v21, :cond_16

    add-int/lit8 v21, v21, -0x1

    .line 50
    aget-byte v22, v6, v21

    aput-byte v22, v3, v7

    goto :goto_8

    :cond_16
    move-object/from16 v22, v6

    const/16 v6, 0x1000

    if-ge v15, v6, :cond_17

    int-to-short v13, v13

    .line 51
    aput-short v13, v4, v15

    .line 52
    aput-byte v0, v5, v15

    add-int/lit8 v15, v15, 0x1

    and-int v0, v15, v26

    if-nez v0, :cond_17

    if-ge v15, v6, :cond_17

    add-int/lit8 v8, v8, 0x1

    add-int v26, v26, v15

    :cond_17
    move-object/from16 v0, p0

    move v13, v14

    :goto_9
    move-object/from16 v14, v20

    move-object/from16 v6, v22

    move/from16 v32, v18

    move-object/from16 v18, v0

    move/from16 v0, v32

    goto/16 :goto_6

    :cond_18
    move-object/from16 v22, v6

    move-object/from16 v20, v14

    move-object/from16 v18, p0

    :goto_a
    const/4 v6, 0x0

    move/from16 v25, v8

    move/from16 v24, v15

    move-object/from16 v8, v18

    move-object/from16 v14, v20

    move/from16 v18, v0

    move v15, v6

    move/from16 v20, v10

    move-object/from16 v6, v22

    move-object/from16 v10, v30

    move-object/from16 v0, p0

    move/from16 v22, v13

    move/from16 v13, v29

    goto/16 :goto_3

    :cond_19
    move-object/from16 v30, v10

    .line 53
    :goto_b
    invoke-static {v3, v7, v2, v15}, Ljava/util/Arrays;->fill([BIIB)V

    .line 54
    iget-boolean v0, v1, Le/f/a/l/b;->e:Z

    if-nez v0, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Le/f/a/l/e;->p:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    goto/16 :goto_11

    .line 55
    :cond_1a
    iget-object v2, v0, Le/f/a/l/e;->j:[I

    .line 56
    iget v3, v1, Le/f/a/l/b;->d:I

    .line 57
    iget v4, v1, Le/f/a/l/b;->b:I

    .line 58
    iget v5, v1, Le/f/a/l/b;->c:I

    .line 59
    iget v6, v1, Le/f/a/l/b;->a:I

    .line 60
    iget v7, v0, Le/f/a/l/e;->k:I

    if-nez v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_c

    :cond_1b
    move v7, v15

    .line 61
    :goto_c
    iget v8, v0, Le/f/a/l/e;->r:I

    .line 62
    iget-object v9, v0, Le/f/a/l/e;->i:[B

    .line 63
    iget-object v10, v0, Le/f/a/l/e;->a:[I

    const/4 v11, -0x1

    :goto_d
    if-ge v15, v3, :cond_20

    add-int v12, v15, v4

    mul-int/2addr v12, v8

    add-int v13, v12, v6

    add-int v14, v13, v5

    add-int/2addr v12, v8

    if-ge v12, v14, :cond_1c

    move v14, v12

    .line 64
    :cond_1c
    iget v12, v1, Le/f/a/l/b;->c:I

    mul-int/2addr v12, v15

    :goto_e
    if-ge v13, v14, :cond_1f

    move/from16 v16, v3

    .line 65
    aget-byte v3, v9, v12

    move/from16 v17, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v11, :cond_1e

    .line 66
    aget v4, v10, v4

    if-eqz v4, :cond_1d

    .line 67
    aput v4, v2, v13

    goto :goto_f

    :cond_1d
    move v11, v3

    :cond_1e
    :goto_f
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_e

    :cond_1f
    move/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 68
    :cond_20
    iget-object v2, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    .line 69
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    iget-object v2, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    if-eqz v7, :cond_23

    const/4 v2, -0x1

    if-eq v11, v2, :cond_23

    :cond_22
    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    goto/16 :goto_21

    :cond_24
    move-object/from16 v0, p0

    .line 70
    :goto_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Le/f/a/l/e;->j:[I

    .line 71
    iget v4, v1, Le/f/a/l/b;->d:I

    iget v5, v0, Le/f/a/l/e;->p:I

    div-int/2addr v4, v5

    .line 72
    iget v6, v1, Le/f/a/l/b;->b:I

    div-int/2addr v6, v5

    .line 73
    iget v7, v1, Le/f/a/l/b;->c:I

    div-int/2addr v7, v5

    .line 74
    iget v8, v1, Le/f/a/l/b;->a:I

    div-int/2addr v8, v5

    .line 75
    iget v9, v0, Le/f/a/l/e;->k:I

    if-nez v9, :cond_25

    const/4 v9, 0x1

    goto :goto_12

    :cond_25
    const/4 v9, 0x0

    .line 76
    :goto_12
    iget v10, v0, Le/f/a/l/e;->r:I

    .line 77
    iget v11, v0, Le/f/a/l/e;->q:I

    .line 78
    iget-object v12, v0, Le/f/a/l/e;->i:[B

    .line 79
    iget-object v13, v0, Le/f/a/l/e;->a:[I

    .line 80
    iget-object v14, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 p2, v2

    move/from16 v2, v16

    :goto_13
    if-ge v2, v4, :cond_3a

    move-object/from16 v16, v14

    .line 81
    iget-boolean v14, v1, Le/f/a/l/b;->e:Z

    if-eqz v14, :cond_2a

    if-lt v15, v4, :cond_29

    add-int/lit8 v14, v17, 0x1

    move/from16 v18, v4

    const/4 v4, 0x2

    if-eq v14, v4, :cond_28

    const/4 v4, 0x3

    if-eq v14, v4, :cond_27

    const/4 v4, 0x4

    if-eq v14, v4, :cond_26

    goto :goto_14

    :cond_26
    const/16 v27, 0x2

    const/4 v15, 0x1

    goto :goto_14

    :cond_27
    const/16 v27, 0x4

    const/4 v15, 0x2

    goto :goto_14

    :cond_28
    const/4 v15, 0x4

    :goto_14
    move/from16 v17, v14

    goto :goto_15

    :cond_29
    move/from16 v18, v4

    :goto_15
    add-int v4, v15, v27

    goto :goto_16

    :cond_2a
    move/from16 v18, v4

    move v4, v15

    move v15, v2

    :goto_16
    add-int/2addr v15, v6

    const/4 v14, 0x1

    if-ne v5, v14, :cond_2b

    const/4 v14, 0x1

    goto :goto_17

    :cond_2b
    const/4 v14, 0x0

    :goto_17
    if-ge v15, v11, :cond_39

    mul-int/2addr v15, v10

    move/from16 v19, v4

    add-int v4, v15, v8

    move/from16 v20, v6

    add-int v6, v4, v7

    add-int/2addr v15, v10

    if-ge v15, v6, :cond_2c

    move v6, v15

    :cond_2c
    mul-int v15, v2, v5

    move/from16 v21, v7

    .line 82
    iget v7, v1, Le/f/a/l/b;->c:I

    mul-int/2addr v15, v7

    if-eqz v14, :cond_30

    move-object/from16 v14, v16

    :goto_18
    if-ge v4, v6, :cond_2f

    .line 83
    aget-byte v7, v12, v15

    and-int/lit16 v7, v7, 0xff

    .line 84
    aget v7, v13, v7

    if-eqz v7, :cond_2d

    .line 85
    aput v7, v3, v4

    goto :goto_19

    :cond_2d
    if-eqz v9, :cond_2e

    if-nez v14, :cond_2e

    move-object/from16 v14, p2

    :cond_2e
    :goto_19
    add-int/2addr v15, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2f
    move/from16 v28, v8

    move/from16 v29, v10

    move/from16 v31, v11

    goto/16 :goto_1f

    :cond_30
    invoke-static {v6, v4, v5, v15}, Le/d/c/a/a;->y1(IIII)I

    move-result v7

    move-object/from16 v14, v16

    :goto_1a
    if-ge v4, v6, :cond_2f

    move/from16 v22, v6

    .line 86
    iget v6, v1, Le/f/a/l/b;->c:I

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v28, v8

    move/from16 v29, v10

    move v8, v15

    .line 87
    :goto_1b
    iget v10, v0, Le/f/a/l/e;->p:I

    add-int/2addr v10, v15

    if-ge v8, v10, :cond_32

    iget-object v10, v0, Le/f/a/l/e;->i:[B

    move/from16 v31, v11

    array-length v11, v10

    if-ge v8, v11, :cond_33

    if-ge v8, v7, :cond_33

    .line 88
    aget-byte v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    .line 89
    iget-object v11, v0, Le/f/a/l/e;->a:[I

    aget v10, v11, v10

    if-eqz v10, :cond_31

    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v16, v16, v11

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v23, v23, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v24, v24, v11

    and-int/lit16 v10, v10, 0xff

    add-int v25, v25, v10

    add-int/lit8 v26, v26, 0x1

    :cond_31
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v31

    goto :goto_1b

    :cond_32
    move/from16 v31, v11

    :cond_33
    add-int/2addr v6, v15

    move v8, v6

    .line 90
    :goto_1c
    iget v10, v0, Le/f/a/l/e;->p:I

    add-int/2addr v10, v6

    if-ge v8, v10, :cond_35

    iget-object v10, v0, Le/f/a/l/e;->i:[B

    array-length v11, v10

    if-ge v8, v11, :cond_35

    if-ge v8, v7, :cond_35

    .line 91
    aget-byte v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    .line 92
    iget-object v11, v0, Le/f/a/l/e;->a:[I

    aget v10, v11, v10

    if-eqz v10, :cond_34

    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v16, v16, v11

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v23, v23, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v24, v24, v11

    and-int/lit16 v10, v10, 0xff

    add-int v25, v25, v10

    add-int/lit8 v26, v26, 0x1

    :cond_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_35
    if-nez v26, :cond_36

    const/4 v6, 0x0

    goto :goto_1d

    .line 93
    :cond_36
    div-int v16, v16, v26

    shl-int/lit8 v6, v16, 0x18

    div-int v23, v23, v26

    shl-int/lit8 v8, v23, 0x10

    or-int/2addr v6, v8

    div-int v24, v24, v26

    shl-int/lit8 v8, v24, 0x8

    or-int/2addr v6, v8

    div-int v25, v25, v26

    or-int v6, v6, v25

    :goto_1d
    if-eqz v6, :cond_37

    .line 94
    aput v6, v3, v4

    goto :goto_1e

    :cond_37
    if-eqz v9, :cond_38

    if-nez v14, :cond_38

    move-object/from16 v14, p2

    :cond_38
    :goto_1e
    add-int/2addr v15, v5

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v22

    move/from16 v8, v28

    move/from16 v10, v29

    move/from16 v11, v31

    goto/16 :goto_1a

    :cond_39
    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v28, v8

    move/from16 v29, v10

    move/from16 v31, v11

    move-object/from16 v14, v16

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v28

    move/from16 v10, v29

    move/from16 v11, v31

    goto/16 :goto_13

    :cond_3a
    move-object/from16 v16, v14

    .line 95
    iget-object v2, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_3c

    if-nez v16, :cond_3b

    const/4 v2, 0x0

    goto :goto_20

    .line 96
    :cond_3b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 97
    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Le/f/a/l/e;->s:Ljava/lang/Boolean;

    .line 98
    :cond_3c
    :goto_21
    iget-boolean v2, v0, Le/f/a/l/e;->n:Z

    if-eqz v2, :cond_3f

    iget v1, v1, Le/f/a/l/b;->g:I

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 99
    :cond_3d
    iget-object v1, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3e

    .line 100
    invoke-virtual/range {p0 .. p0}, Le/f/a/l/e;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    .line 101
    :cond_3e
    iget-object v1, v0, Le/f/a/l/e;->m:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Le/f/a/l/e;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Le/f/a/l/e;->q:I

    move-object/from16 v2, v30

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 102
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Le/f/a/l/e;->h()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 103
    iget v7, v0, Le/f/a/l/e;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Le/f/a/l/e;->q:I

    move-object v1, v9

    move-object/from16 v2, v30

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method
