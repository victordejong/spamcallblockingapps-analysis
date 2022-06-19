.class public abstract Lu3/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/l0$a;,
        Lu3/l0$b;
    }
.end annotation


# static fields
.field public static final b:Lu3/l0$b;


# instance fields
.field public a:Ljava/io/Reader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/l0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/l0$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/l0;->b:Lu3/l0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu3/l0;->q()Lv3/h;

    move-result-object v0

    invoke-interface {v0}, Lv3/h;->k2()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu3/l0;->q()Lv3/h;

    move-result-object v0

    invoke-static {v0}, Lu3/p0/c;->d(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu3/l0;->k()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lu3/l0;->q()Lv3/h;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2}, Lv3/h;->i0()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length v2, v4

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v4

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v3, v0, v1}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final j()Ljava/io/Reader;
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/l0;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lu3/l0$a;

    invoke-virtual {p0}, Lu3/l0;->q()Lv3/h;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lu3/l0;->l()Lu3/c0;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    .line 3
    :goto_0
    invoke-direct {v0, v1, v2}, Lu3/l0$a;-><init>(Lv3/h;Ljava/nio/charset/Charset;)V

    .line 4
    iput-object v0, p0, Lu3/l0;->a:Ljava/io/Reader;

    :goto_1
    return-object v0
.end method

.method public abstract k()J
.end method

.method public abstract l()Lu3/c0;
.end method

.method public abstract q()Lv3/h;
.end method

.method public final s()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu3/l0;->q()Lv3/h;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lu3/l0;->l()Lu3/c0;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    .line 3
    :goto_0
    invoke-static {v0, v1}, Lu3/p0/c;->r(Lv3/h;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lv3/h;->q0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
