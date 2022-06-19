.class public final Ln3/y/b/a/q0/w/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/w/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/v;

.field public final b:Ln3/y/b/a/x0/m;

.field public final c:I


# direct methods
.method public constructor <init>(ILn3/y/b/a/x0/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/w/z$a;->c:I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/q0/w/z$a;->a:Ln3/y/b/a/x0/v;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/z$a;->b:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/w/z$a;->b:Ln3/y/b/a/x0/m;

    sget-object v1, Ln3/y/b/a/x0/x;->f:[B

    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->w([B)V

    return-void
.end method

.method public b(Ln3/y/b/a/q0/d;JLn3/y/b/a/q0/a$c;)Ln3/y/b/a/q0/a$f;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v5, v1, Ln3/y/b/a/q0/d;->d:J

    .line 2
    iget-wide v2, v1, Ln3/y/b/a/q0/d;->c:J

    sub-long/2addr v2, v5

    const-wide/32 v7, 0x1b8a0

    .line 3
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 4
    iget-object v3, v0, Ln3/y/b/a/q0/w/z$a;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v3, v2}, Ln3/y/b/a/x0/m;->v(I)V

    .line 5
    iget-object v3, v0, Ln3/y/b/a/q0/w/z$a;->b:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v3, v4, v2, v4}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 7
    iget-object v1, v0, Ln3/y/b/a/q0/w/z$a;->b:Ln3/y/b/a/x0/m;

    .line 8
    iget v2, v1, Ln3/y/b/a/x0/m;->c:I

    const-wide/16 v7, -0x1

    move-wide v9, v7

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    :goto_0
    invoke-virtual {v1}, Ln3/y/b/a/x0/m;->a()I

    move-result v11

    const/16 v12, 0xbc

    if-lt v11, v12, :cond_6

    .line 10
    iget-object v11, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 11
    iget v12, v1, Ln3/y/b/a/x0/m;->b:I

    :goto_1
    if-ge v12, v2, :cond_0

    .line 12
    aget-byte v15, v11, v12

    const/16 v3, 0x47

    if-eq v15, v3, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v3, v12, 0xbc

    if-le v3, v2, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget v4, v0, Ln3/y/b/a/q0/w/z$a;->c:I

    invoke-static {v1, v12, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->j1(Ln3/y/b/a/x0/m;II)J

    move-result-wide v7

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v15

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, v0, Ln3/y/b/a/q0/w/z$a;->a:Ln3/y/b/a/x0/v;

    invoke-virtual {v4, v7, v8}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v7

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    cmp-long v1, v13, v15

    if-nez v1, :cond_2

    .line 15
    new-instance v9, Ln3/y/b/a/q0/a$f;

    const/4 v2, -0x1

    move-object v1, v9

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Ln3/y/b/a/q0/a$f;-><init>(IJJ)V

    goto :goto_3

    :cond_2
    add-long/2addr v5, v9

    .line 16
    invoke-static {v5, v6}, Ln3/y/b/a/q0/a$f;->a(J)Ln3/y/b/a/q0/a$f;

    move-result-object v9

    goto :goto_3

    :cond_3
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v7

    cmp-long v4, v9, p2

    if-lez v4, :cond_4

    int-to-long v1, v12

    add-long/2addr v5, v1

    .line 17
    invoke-static {v5, v6}, Ln3/y/b/a/q0/a$f;->a(J)Ln3/y/b/a/q0/a$f;

    move-result-object v9

    goto :goto_3

    :cond_4
    int-to-long v9, v12

    move-wide v13, v7

    .line 18
    :cond_5
    invoke-virtual {v1, v3}, Ln3/y/b/a/x0/m;->z(I)V

    int-to-long v7, v3

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v13, v1

    if-eqz v1, :cond_7

    add-long v15, v5, v7

    .line 19
    new-instance v9, Ln3/y/b/a/q0/a$f;

    const/4 v12, -0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Ln3/y/b/a/q0/a$f;-><init>(IJJ)V

    goto :goto_3

    .line 20
    :cond_7
    sget-object v9, Ln3/y/b/a/q0/a$f;->d:Ln3/y/b/a/q0/a$f;

    :goto_3
    return-object v9
.end method
