.class public final Ln3/y/b/a/t0/m0;
.super Ln3/y/b/a/l0;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/y/b/a/t0/m0;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/l0;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->b:J

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->c:J

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->d:J

    move-wide v1, p7

    .line 5
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->e:J

    move-wide v1, p9

    .line 6
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->f:J

    move-wide v1, p11

    .line 7
    iput-wide v1, v0, Ln3/y/b/a/t0/m0;->g:J

    move/from16 v1, p13

    .line 8
    iput-boolean v1, v0, Ln3/y/b/a/t0/m0;->h:Z

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, Ln3/y/b/a/t0/m0;->i:Z

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, Ln3/y/b/a/t0/m0;->k:Ljava/lang/Object;

    move-object/from16 v1, p16

    .line 11
    iput-object v1, v0, Ln3/y/b/a/t0/m0;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/t0/m0;->l:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->s(III)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Ln3/y/b/a/t0/m0;->l:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Ln3/y/b/a/t0/m0;->d:J

    iget-wide v6, p0, Ln3/y/b/a/t0/m0;->f:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/l0$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Ln3/y/b/a/l0$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->s(III)I

    .line 2
    sget-object p1, Ln3/y/b/a/t0/m0;->l:Ljava/lang/Object;

    return-object p1
.end method

.method public n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->s(III)I

    .line 2
    iget-wide v1, v0, Ln3/y/b/a/t0/m0;->g:J

    .line 3
    iget-boolean v11, v0, Ln3/y/b/a/t0/m0;->i:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v11, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_1

    .line 4
    iget-wide v5, v0, Ln3/y/b/a/t0/m0;->e:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    :goto_0
    move-wide v12, v3

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v12, v1

    .line 5
    :goto_1
    iget-object v4, v0, Ln3/y/b/a/t0/m0;->j:Ljava/lang/Object;

    iget-object v5, v0, Ln3/y/b/a/t0/m0;->k:Ljava/lang/Object;

    iget-wide v6, v0, Ln3/y/b/a/t0/m0;->b:J

    iget-wide v8, v0, Ln3/y/b/a/t0/m0;->c:J

    iget-boolean v10, v0, Ln3/y/b/a/t0/m0;->h:Z

    iget-wide v14, v0, Ln3/y/b/a/t0/m0;->e:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-wide v1, v0, Ln3/y/b/a/t0/m0;->f:J

    move-wide/from16 v18, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v19}, Ln3/y/b/a/l0$c;->a(Ljava/lang/Object;Ljava/lang/Object;JJZZJJIIJ)Ln3/y/b/a/l0$c;

    return-object p2
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
