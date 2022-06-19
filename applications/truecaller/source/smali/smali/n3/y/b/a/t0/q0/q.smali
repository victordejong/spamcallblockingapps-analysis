.class public final Ln3/y/b/a/t0/q0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln3/y/b/a/x0/v;

.field public final c:Ln3/y/b/a/x0/m;

.field public d:Ln3/y/b/a/q0/h;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/q;->g:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/q;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln3/y/b/a/x0/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/q;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/q0/q;->b:Ln3/y/b/a/x0/v;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final b(J)Ln3/y/b/a/q0/p;
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->d:Ln3/y/b/a/q0/h;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v0

    .line 2
    iget-object v6, p0, Ln3/y/b/a/t0/q0/q;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v7, -0x1

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v9, p1

    .line 4
    invoke-static/range {v1 .. v11}, Landroidx/media2/exoplayer/external/Format;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 6
    iget-object p1, p0, Ln3/y/b/a/t0/q0/q;->d:Ln3/y/b/a/q0/h;

    invoke-interface {p1}, Ln3/y/b/a/q0/h;->g()V

    return-object v0
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 5

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/q0/q;->d:Ln3/y/b/a/q0/h;

    .line 2
    new-instance v0, Ln3/y/b/a/q0/n$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {v0, v3, v4, v1, v2}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 4
    invoke-interface {p1, v0}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    iget-object v3, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    invoke-virtual {v0, v3, v2}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    invoke-static {v0}, Ln3/y/b/a/u0/b/b;->a(Ln3/y/b/a/x0/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v2, v3, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 6
    iget-object p1, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    invoke-static {p1}, Ln3/y/b/a/u0/b/b;->a(Ln3/y/b/a/x0/m;)Z

    move-result p1

    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Ln3/y/b/a/q0/d;->c:J

    long-to-int p2, v0

    .line 2
    iget v0, p0, Ln3/y/b/a/t0/q0/q;->f:I

    iget-object v1, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    .line 5
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    iget v1, p0, Ln3/y/b/a/t0/q0/q;->f:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ln3/y/b/a/q0/d;->e([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 6
    iget v0, p0, Ln3/y/b/a/t0/q0/q;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Ln3/y/b/a/t0/q0/q;->f:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_3
    new-instance p1, Ln3/y/b/a/x0/m;

    iget-object p2, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    invoke-direct {p1, p2}, Ln3/y/b/a/x0/m;-><init>([B)V

    .line 8
    sget-object p2, Ln3/y/b/a/u0/b/b;->a:Ljava/util/regex/Pattern;

    .line 9
    iget p2, p1, Ln3/y/b/a/x0/m;->b:I

    .line 10
    invoke-static {p1}, Ln3/y/b/a/u0/b/b;->a(Ln3/y/b/a/x0/m;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p1, p2}, Ln3/y/b/a/x0/m;->z(I)V

    .line 12
    new-instance p2, Ln3/y/b/a/c0;

    const-string v0, "Expected WEBVTT. Got "

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p2, p1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v6, v4

    .line 13
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/32 v8, 0xf4240

    const-wide/32 v10, 0x15f90

    const/4 v12, 0x1

    if-nez v2, :cond_b

    const-string v2, "X-TIMESTAMP-MAP"

    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    sget-object v2, Ln3/y/b/a/t0/q0/q;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_8

    .line 17
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    sget-object v4, Ln3/y/b/a/t0/q0/q;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_a

    .line 20
    new-instance p1, Ln3/y/b/a/c0;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_a
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ln3/y/b/a/u0/b/b;->b(Ljava/lang/String;)J

    move-result-wide v6

    .line 22
    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    .line 23
    div-long/2addr v4, v10

    goto :goto_2

    .line 24
    :cond_b
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 25
    sget-object v2, Ln3/y/b/a/u0/b/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26
    :goto_5
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_5

    .line 27
    :cond_c
    sget-object v2, Ln3/y/b/a/u0/b/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_e

    .line 29
    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/t0/q0/q;->b(J)Ln3/y/b/a/q0/p;

    goto :goto_7

    .line 30
    :cond_e
    invoke-virtual {p2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln3/y/b/a/u0/b/b;->b(Ljava/lang/String;)J

    move-result-wide p1

    .line 31
    iget-object v0, p0, Ln3/y/b/a/t0/q0/q;->b:Ln3/y/b/a/x0/v;

    add-long/2addr v4, p1

    sub-long/2addr v4, v6

    mul-long/2addr v4, v10

    .line 32
    div-long/2addr v4, v8

    .line 33
    invoke-virtual {v0, v4, v5}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v7

    sub-long p1, v7, p1

    .line 34
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/q0/q;->b(J)Ln3/y/b/a/q0/p;

    move-result-object v6

    .line 35
    iget-object p1, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    iget-object p2, p0, Ln3/y/b/a/t0/q0/q;->e:[B

    iget v0, p0, Ln3/y/b/a/t0/q0/q;->f:I

    invoke-virtual {p1, p2, v0}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 36
    iget-object p1, p0, Ln3/y/b/a/t0/q0/q;->c:Ln3/y/b/a/x0/m;

    iget p2, p0, Ln3/y/b/a/t0/q0/q;->f:I

    invoke-interface {v6, p1, p2}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    const/4 v9, 0x1

    .line 37
    iget v10, p0, Ln3/y/b/a/t0/q0/q;->f:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    :goto_7
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method
