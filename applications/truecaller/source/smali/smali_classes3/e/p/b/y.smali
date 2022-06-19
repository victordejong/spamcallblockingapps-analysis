.class public Le/p/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/squareup/picasso/Picasso;

.field public final b:Le/p/b/x$b;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Le/p/b/y;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    .line 3
    new-instance v0, Le/p/b/x$b;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Le/p/b/x$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Le/p/b/y;->b:Le/p/b/x$b;

    return-void
.end method


# virtual methods
.method public final a(J)Le/p/b/x;
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    sget-object v3, Le/p/b/y;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 2
    iget-object v4, v0, Le/p/b/y;->b:Le/p/b/x$b;

    .line 3
    iget-boolean v5, v4, Le/p/b/x$b;->e:Z

    if-eqz v5, :cond_1

    .line 4
    iget v5, v4, Le/p/b/x$b;->c:I

    if-nez v5, :cond_1

    iget v5, v4, Le/p/b/x$b;->d:I

    if-eqz v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v5, v4, Le/p/b/x$b;->h:Lcom/squareup/picasso/Picasso$e;

    if-nez v5, :cond_2

    .line 7
    sget-object v5, Lcom/squareup/picasso/Picasso$e;->b:Lcom/squareup/picasso/Picasso$e;

    iput-object v5, v4, Le/p/b/x$b;->h:Lcom/squareup/picasso/Picasso$e;

    .line 8
    :cond_2
    new-instance v5, Le/p/b/x;

    move-object v6, v5

    iget-object v7, v4, Le/p/b/x$b;->a:Landroid/net/Uri;

    iget v8, v4, Le/p/b/x$b;->b:I

    iget-object v10, v4, Le/p/b/x$b;->f:Ljava/util/List;

    iget v11, v4, Le/p/b/x$b;->c:I

    iget v12, v4, Le/p/b/x$b;->d:I

    const/4 v13, 0x0

    iget-boolean v14, v4, Le/p/b/x$b;->e:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v9, v4, Le/p/b/x$b;->g:Landroid/graphics/Bitmap$Config;

    move-object/from16 v22, v9

    iget-object v4, v4, Le/p/b/x$b;->h:Lcom/squareup/picasso/Picasso$e;

    move-object/from16 v23, v4

    const/16 v24, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v24}, Le/p/b/x;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$e;Le/p/b/x$a;)V

    .line 9
    iput v3, v5, Le/p/b/x;->a:I

    .line 10
    iput-wide v1, v5, Le/p/b/x;->b:J

    .line 11
    iget-object v4, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->n:Z

    const-string v6, "Main"

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v5}, Le/p/b/x;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Le/p/b/x;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "created"

    invoke-static {v6, v9, v7, v8}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v7, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    .line 14
    iget-object v7, v7, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso$f;

    check-cast v7, Lcom/squareup/picasso/Picasso$f$a;

    .line 15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v5, v5, :cond_4

    .line 16
    iput v3, v5, Le/p/b/x;->a:I

    .line 17
    iput-wide v1, v5, Le/p/b/x;->b:J

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v5}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changed"

    invoke-static {v6, v3, v1, v2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v5
.end method

.method public b()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/p/b/y;->b:Le/p/b/x$b;

    invoke-virtual {v2}, Le/p/b/x$b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    iget-object v2, p0, Le/p/b/y;->b:Le/p/b/x$b;

    .line 4
    iget-object v3, v2, Le/p/b/x$b;->h:Lcom/squareup/picasso/Picasso$e;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-nez v6, :cond_2

    .line 5
    sget-object v6, Lcom/squareup/picasso/Picasso$e;->a:Lcom/squareup/picasso/Picasso$e;

    if-nez v3, :cond_1

    .line 6
    iput-object v6, v2, Le/p/b/x$b;->h:Lcom/squareup/picasso/Picasso$e;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Priority already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v1}, Le/p/b/y;->a(J)Le/p/b/x;

    move-result-object v7

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v0}, Le/p/b/f0;->a(Le/p/b/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-static {v5}, Le/p/b/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v11}, Lcom/squareup/picasso/Picasso;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v7}, Le/p/b/x;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$d;->b:Lcom/squareup/picasso/Picasso$d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "completed"

    invoke-static {v2, v3, v0, v1}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    new-instance v0, Le/p/b/k;

    iget-object v6, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Le/p/b/k;-><init>(Lcom/squareup/picasso/Picasso;Le/p/b/x;IILjava/lang/Object;Ljava/lang/String;Le/p/b/e;)V

    .line 15
    iget-object v1, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    .line 16
    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->f:Le/p/b/i;

    .line 17
    iget-object v1, v1, Le/p/b/i;->i:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Le/p/b/f0;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Le/p/b/y;->b:Le/p/b/x$b;

    invoke-virtual {v2}, Le/p/b/x$b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0, v1}, Le/p/b/y;->a(J)Le/p/b/x;

    move-result-object v3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0}, Le/p/b/f0;->a(Le/p/b/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v0, Le/p/b/m;

    iget-object v2, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/p/b/m;-><init>(Lcom/squareup/picasso/Picasso;Le/p/b/x;IILjava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->f:Le/p/b/i;

    iget-object v3, v1, Lcom/squareup/picasso/Picasso;->g:Le/p/b/d;

    iget-object v4, v1, Lcom/squareup/picasso/Picasso;->h:Le/p/b/b0;

    invoke-static {v1, v2, v3, v4, v0}, Le/p/b/c;->e(Lcom/squareup/picasso/Picasso;Le/p/b/i;Le/p/b/d;Le/p/b/b0;Le/p/b/a;)Le/p/b/c;

    move-result-object v0

    invoke-virtual {v0}, Le/p/b/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method call should not happen from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget v0, p0, Le/p/b/y;->c:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/p/b/y;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e(Landroid/widget/ImageView;Le/p/b/e;)V
    .locals 14

    move-object v0, p0

    move-object v3, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Le/p/b/f0;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    .line 3
    iget-object v4, v0, Le/p/b/y;->b:Le/p/b/x$b;

    invoke-virtual {v4}, Le/p/b/x$b;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Le/p/b/y;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Le/p/b/v;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, v1, v2}, Le/p/b/y;->a(J)Le/p/b/x;

    move-result-object v7

    .line 9
    sget-object v1, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    invoke-static {v7, v1}, Le/p/b/f0;->a(Le/p/b/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    invoke-static {v2}, Le/p/b/s;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/Picasso;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V

    .line 16
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    sget-object v8, Lcom/squareup/picasso/Picasso$d;->b:Lcom/squareup/picasso/Picasso$d;

    const/4 v5, 0x0

    iget-boolean v6, v1, Lcom/squareup/picasso/Picasso;->m:Z

    move-object v1, p1

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Le/p/b/v;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;ZZ)V

    .line 17
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v7}, Le/p/b/x;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 19
    move-object/from16 v1, p2

    check-cast v1, Le/i/b/r1/m;

    .line 20
    iget-object v1, v1, Le/i/b/r1/m;->a:Le/i/b/w1/a$a;

    invoke-virtual {v1}, Le/i/b/w1/a$a;->a()V

    :cond_2
    return-void

    .line 21
    :cond_3
    invoke-virtual {p0}, Le/p/b/y;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Le/p/b/v;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 22
    new-instance v13, Le/p/b/n;

    iget-object v2, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Le/p/b/y;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-object v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, Le/p/b/n;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Le/p/b/x;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Le/p/b/e;Z)V

    .line 23
    iget-object v1, v0, Le/p/b/y;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/Picasso;->c(Le/p/b/a;)V

    return-void

    .line 24
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method call should happen from the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
