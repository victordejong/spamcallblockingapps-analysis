.class public Le/f/a/n/o/b0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/b0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/b0/j$b;,
        Le/f/a/n/o/b0/j$a;
    }
.end annotation


# static fields
.field public static final j:Landroid/graphics/Bitmap$Config;


# instance fields
.field public final a:Le/f/a/n/o/b0/k;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/o/b0/j$a;

.field public d:J

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Le/f/a/n/o/b0/j;->j:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 1
    new-instance v0, Le/f/a/n/o/b0/m;

    invoke-direct {v0}, Le/f/a/n/o/b0/m;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Le/f/a/n/o/b0/j;->d:J

    .line 9
    iput-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    .line 10
    iput-object v1, p0, Le/f/a/n/o/b0/j;->b:Ljava/util/Set;

    .line 11
    new-instance p1, Le/f/a/n/o/b0/j$b;

    invoke-direct {p1}, Le/f/a/n/o/b0/j$b;-><init>()V

    iput-object p1, p0, Le/f/a/n/o/b0/j;->c:Le/f/a/n/o/b0/j$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/16 v2, 0x28

    if-ge p1, v2, :cond_2

    const/16 v2, 0x14

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v2, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 2
    :cond_1
    iget-wide v0, p0, Le/f/a/n/o/b0/j;->d:J

    const-wide/16 v2, 0x2

    .line 3
    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le/f/a/n/o/b0/j;->i(J)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Le/f/a/n/o/b0/j;->i(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/n/o/b0/j;->i(J)V

    return-void
.end method

.method public declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    .line 3
    check-cast v0, Le/f/a/n/o/b0/m;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    .line 6
    iget-wide v4, p0, Le/f/a/n/o/b0/j;->d:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Le/f/a/n/o/b0/j;->b:Ljava/util/Set;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v0, Le/f/a/n/o/b0/m;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 11
    iget-object v2, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Le/f/a/n/o/b0/m;

    :try_start_1
    invoke-virtual {v2, p1}, Le/f/a/n/o/b0/m;->f(Landroid/graphics/Bitmap;)V

    .line 12
    iget-object v2, p0, Le/f/a/n/o/b0/j;->c:Le/f/a/n/o/b0/j$a;

    check-cast v2, Le/f/a/n/o/b0/j$b;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v2, p0, Le/f/a/n/o/b0/j;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Le/f/a/n/o/b0/j;->h:I

    .line 15
    iget-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    const-string v0, "LruBitmapPool"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Le/f/a/n/o/b0/m;

    :try_start_2
    invoke-virtual {v0, p1}, Le/f/a/n/o/b0/m;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 18
    :cond_1
    invoke-virtual {p0}, Le/f/a/n/o/b0/j;->f()V

    .line 19
    iget-wide v0, p0, Le/f/a/n/o/b0/j;->d:J

    invoke-virtual {p0, v0, v1}, Le/f/a/n/o/b0/j;->i(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_3
    const-string v0, "LruBitmapPool"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    check-cast v0, Le/f/a/n/o/b0/m;

    :try_start_4
    invoke-virtual {v0, p1}, Le/f/a/n/o/b0/m;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    iget-object v0, p0, Le/f/a/n/o/b0/j;->b:Ljava/util/Set;

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_4
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 29
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/f/a/n/o/b0/j;->h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Le/f/a/n/o/b0/j;->j:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/f/a/n/o/b0/j;->h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p3, Le/f/a/n/o/b0/j;->j:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final f()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/n/o/b0/j;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    const-string v0, "Hits="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/f/a/n/o/b0/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/f/a/n/o/b0/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/f/a/n/o/b0/j;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/f/a/n/o/b0/j;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/f/a/n/o/b0/j;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/f/a/n/o/b0/j;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_5

    .line 3
    :goto_0
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    if-eqz p3, :cond_1

    move-object v1, p3

    goto :goto_1

    :cond_1
    sget-object v1, Le/f/a/n/o/b0/j;->j:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    check-cast v0, Le/f/a/n/o/b0/m;

    :try_start_1
    invoke-virtual {v0, p1, p2, v1}, Le/f/a/n/o/b0/m;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v2, Le/f/a/n/o/b0/m;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1, p2, p3}, Le/f/a/t/j;->c(IILandroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 8
    invoke-static {v2, p3}, Le/f/a/n/o/b0/m;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 9
    :cond_2
    iget v2, p0, Le/f/a/n/o/b0/j;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Le/f/a/n/o/b0/j;->g:I

    goto :goto_2

    .line 10
    :cond_3
    iget v2, p0, Le/f/a/n/o/b0/j;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Le/f/a/n/o/b0/j;->f:I

    .line 11
    iget-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    iget-object v4, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v4, Le/f/a/n/o/b0/m;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 14
    iput-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    .line 15
    iget-object v2, p0, Le/f/a/n/o/b0/j;->c:Le/f/a/n/o/b0/j$a;

    check-cast v2, Le/f/a/n/o/b0/j$b;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :goto_2
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v1, Le/f/a/n/o/b0/m;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p1, p2, p3}, Le/f/a/t/j;->c(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 23
    invoke-static {p1, p3}, Le/f/a/n/o/b0/m;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    .line 24
    :cond_4
    invoke-virtual {p0}, Le/f/a/n/o/b0/j;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-object v0

    .line 26
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create a mutable Bitmap with config: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final declared-synchronized i(J)V
    .locals 6

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-wide v0, p0, Le/f/a/n/o/b0/j;->e:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_4

    .line 2
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v0, Le/f/a/n/o/b0/m;

    .line 3
    iget-object v1, v0, Le/f/a/n/o/b0/m;->b:Le/f/a/n/o/b0/g;

    invoke-virtual {v1}, Le/f/a/n/o/b0/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Le/f/a/n/o/b0/m;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_0
    if-nez v1, :cond_2

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/f/a/n/o/b0/j;->g()V

    :cond_1
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Le/f/a/n/o/b0/j;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, p0, Le/f/a/n/o/b0/j;->c:Le/f/a/n/o/b0/j$a;

    check-cast v0, Le/f/a/n/o/b0/j$b;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;

    check-cast v0, Le/f/a/n/o/b0/m;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 15
    iput-wide v2, p0, Le/f/a/n/o/b0/j;->e:J

    .line 16
    iget v0, p0, Le/f/a/n/o/b0/j;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/f/a/n/o/b0/j;->i:I

    const-string v0, "LruBitmapPool"

    const/4 v2, 0x3

    .line 17
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Le/f/a/n/o/b0/j;->a:Le/f/a/n/o/b0/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Le/f/a/n/o/b0/m;

    :try_start_2
    invoke-virtual {v0, v1}, Le/f/a/n/o/b0/m;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 19
    :cond_3
    invoke-virtual {p0}, Le/f/a/n/o/b0/j;->f()V

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 21
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
