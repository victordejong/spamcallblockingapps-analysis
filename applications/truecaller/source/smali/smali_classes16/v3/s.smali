.class public final Lv3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Lv3/c0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lv3/c0;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/s;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lv3/s;->b:Lv3/c0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lv3/s;->b:Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->f()V

    .line 4
    iget-object v0, p1, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_1

    .line 5
    iget v1, v0, Lv3/w;->c:I

    iget v2, v0, Lv3/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 6
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    iget-object v2, p0, Lv3/s;->a:Ljava/io/OutputStream;

    iget-object v3, v0, Lv3/w;->a:[B

    iget v4, v0, Lv3/w;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget v2, v0, Lv3/w;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lv3/w;->b:I

    int-to-long v3, v1

    sub-long/2addr p2, v3

    .line 9
    iget-wide v5, p1, Lv3/f;->b:J

    sub-long/2addr v5, v3

    .line 10
    iput-wide v5, p1, Lv3/f;->b:J

    .line 11
    iget v1, v0, Lv3/w;->c:I

    if-ne v2, v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lv3/w;->a()Lv3/w;

    move-result-object v1

    iput-object v1, p1, Lv3/f;->a:Lv3/w;

    .line 13
    invoke-static {v0}, Lv3/x;->a(Lv3/w;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/s;->b:Lv3/c0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "sink("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/s;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
