.class public final Ln3/y/b/a/t0/q0/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/q0/r/i;
.implements Ln3/y/b/a/w0/a0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/q0/r/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/y/b/a/t0/q0/r/i;",
        "Ln3/y/b/a/w0/a0$b<",
        "Ln3/y/b/a/w0/b0<",
        "Ln3/y/b/a/t0/q0/r/f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/e;

.field public final b:Ln3/y/b/a/t0/q0/r/h;

.field public final c:Ln3/y/b/a/w0/z;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ln3/y/b/a/t0/q0/r/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/t0/q0/r/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ln3/y/b/a/w0/b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/w0/b0$a<",
            "Ln3/y/b/a/t0/q0/r/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ln3/y/b/a/t0/c0$a;

.field public h:Ln3/y/b/a/w0/a0;

.field public i:Landroid/os/Handler;

.field public j:Ln3/y/b/a/t0/q0/r/i$e;

.field public k:Ln3/y/b/a/t0/q0/r/d;

.field public l:Landroid/net/Uri;

.field public m:Ln3/y/b/a/t0/q0/r/e;

.field public n:Z

.field public o:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/q0/r/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->a:Ln3/y/b/a/t0/q0/e;

    .line 3
    iput-object p3, p0, Ln3/y/b/a/t0/q0/r/c;->b:Ln3/y/b/a/t0/q0/r/h;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Ln3/y/b/a/t0/q0/r/c;->o:J

    return-void
.end method

.method public static m(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/t0/q0/r/i$b;

    invoke-interface {v3, p1, p2, p3}, Ln3/y/b/a/t0/q0/r/i$b;->m(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static n(Ln3/y/b/a/t0/q0/r/e;Ln3/y/b/a/t0/q0/r/e;)Ln3/y/b/a/t0/q0/r/e$a;
    .locals 4

    .line 1
    iget-wide v0, p1, Ln3/y/b/a/t0/q0/r/e;->i:J

    iget-wide v2, p0, Ln3/y/b/a/t0/q0/r/e;->i:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 2
    iget-object p0, p0, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln3/y/b/a/t0/q0/r/e$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ln3/y/b/a/t0/q0/r/i$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/q0/r/c;->o:J

    return-wide v0
.end method

.method public c()Ln3/y/b/a/t0/q0/r/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->k:Ln3/y/b/a/t0/q0/r/d;

    return-object v0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/q0/r/c$a;

    .line 2
    iget-object v0, p1, Ln3/y/b/a/t0/q0/r/c$a;->b:Ln3/y/b/a/w0/a0;

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/a0;->d(I)V

    .line 4
    iget-object p1, p1, Ln3/y/b/a/t0/q0/r/c$a;->j:Ljava/io/IOException;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public e(Ln3/y/b/a/t0/q0/r/i$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/q0/r/c$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/q0/r/c$a;->b()V

    return-void
.end method

.method public g(Landroid/net/Uri;Ln3/y/b/a/t0/c0$a;Ln3/y/b/a/t0/q0/r/i$e;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->i:Landroid/os/Handler;

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    .line 3
    iput-object p3, p0, Ln3/y/b/a/t0/q0/r/c;->j:Ln3/y/b/a/t0/q0/r/i$e;

    .line 4
    new-instance p3, Ln3/y/b/a/w0/b0;

    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->a:Ln3/y/b/a/t0/q0/e;

    const/4 v1, 0x4

    .line 5
    invoke-interface {v0, v1}, Ln3/y/b/a/t0/q0/e;->a(I)Ln3/y/b/a/w0/h;

    move-result-object v0

    iget-object v2, p0, Ln3/y/b/a/t0/q0/r/c;->b:Ln3/y/b/a/t0/q0/r/h;

    .line 6
    check-cast v2, Ln3/y/b/a/t0/q0/r/a;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Ln3/y/b/a/t0/q0/r/g;

    invoke-direct {v2}, Ln3/y/b/a/t0/q0/r/g;-><init>()V

    .line 9
    invoke-direct {p3, v0, p1, v1, v2}, Ln3/y/b/a/w0/b0;-><init>(Ln3/y/b/a/w0/h;Landroid/net/Uri;ILn3/y/b/a/w0/b0$a;)V

    .line 10
    iget-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->h:Ln3/y/b/a/w0/a0;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 11
    new-instance p1, Ln3/y/b/a/w0/a0;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Ln3/y/b/a/w0/a0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->h:Ln3/y/b/a/w0/a0;

    .line 12
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    iget v1, p3, Ln3/y/b/a/w0/b0;->b:I

    .line 13
    check-cast v0, Ln3/y/b/a/w0/t;

    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/t;->b(I)I

    move-result v0

    .line 14
    invoke-virtual {p1, p3, p0, v0}, Ln3/y/b/a/w0/a0;->f(Ln3/y/b/a/w0/a0$e;Ln3/y/b/a/w0/a0$b;I)J

    move-result-wide v0

    .line 15
    iget-object p1, p3, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    iget p3, p3, Ln3/y/b/a/w0/b0;->b:I

    invoke-virtual {p2, p1, p3, v0, v1}, Ln3/y/b/a/t0/c0$a;->o(Ln3/y/b/a/w0/k;IJ)V

    return-void
.end method

.method public h(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/q0/r/c$a;

    .line 2
    iget-object v0, p1, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 4
    iget-object v0, p1, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    iget-wide v6, v0, Ln3/y/b/a/t0/q0/r/e;->p:J

    invoke-static {v6, v7}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 5
    iget-object v0, p1, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    iget-boolean v6, v0, Ln3/y/b/a/t0/q0/r/e;->l:Z

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget v0, v0, Ln3/y/b/a/t0/q0/r/e;->d:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    iget-wide v8, p1, Ln3/y/b/a/t0/q0/r/c$a;->e:J

    add-long/2addr v8, v4

    cmp-long p1, v8, v2

    if-lez p1, :cond_2

    :cond_1
    move v1, v7

    :cond_2
    :goto_0
    return v1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/r/c;->n:Z

    return v0
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->h:Ln3/y/b/a/w0/a0;

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/a0;->d(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ln3/y/b/a/t0/q0/r/c;->d(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public k(Landroid/net/Uri;Z)Ln3/y/b/a/t0/q0/r/e;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/t0/q0/r/c$a;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 4
    iget-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->k:Ln3/y/b/a/t0/q0/r/d;

    iget-object p2, p2, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/t0/q0/r/d$b;

    iget-object v3, v3, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 7
    iget-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 9
    iget-object p2, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/t0/q0/r/c$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/q0/r/c$a;->b()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public l(Ln3/y/b/a/w0/a0$e;JJLjava/io/IOException;I)Ln3/y/b/a/w0/a0$c;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/w0/b0;

    .line 2
    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    iget v4, v1, Ln3/y/b/a/w0/b0;->b:I

    .line 3
    move-object v3, v2

    check-cast v3, Ln3/y/b/a/w0/t;

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Ln3/y/b/a/w0/t;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 4
    :goto_0
    iget-object v6, v0, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    iget-object v7, v1, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 5
    iget-object v1, v1, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 6
    iget-object v8, v1, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 7
    iget-object v9, v1, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v10, 0x4

    .line 8
    iget-wide v13, v1, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v11, p2

    move-wide v15, v13

    move-wide/from16 v13, p4

    move-object/from16 v17, p6

    move/from16 v18, v4

    .line 9
    invoke-virtual/range {v6 .. v18}, Ln3/y/b/a/t0/c0$a;->l(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    .line 10
    sget-object v1, Ln3/y/b/a/w0/a0;->e:Ln3/y/b/a/w0/a0$c;

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v5, v2, v3}, Ln3/y/b/a/w0/a0;->b(ZJ)Ln3/y/b/a/w0/a0$c;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public s(Ln3/y/b/a/w0/a0$e;JJ)V
    .locals 40

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/w0/b0;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/w0/b0;->e:Ljava/lang/Object;

    .line 3
    check-cast v2, Ln3/y/b/a/t0/q0/r/f;

    .line 4
    instance-of v3, v2, Ln3/y/b/a/t0/q0/r/e;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, v2, Ln3/y/b/a/t0/q0/r/f;->a:Ljava/lang/String;

    .line 6
    sget-object v5, Ln3/y/b/a/t0/q0/r/d;->n:Ln3/y/b/a/t0/q0/r/d;

    .line 7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 8
    new-instance v4, Landroidx/media2/exoplayer/external/Format;

    move-object v8, v4

    const/4 v5, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide v21, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, -0x1

    const/high16 v27, -0x40800000    # -1.0f

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/16 v34, -0x1

    const/16 v35, -0x1

    const/16 v37, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v36, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string v9, "0"

    const-string v16, "application/x-mpegURL"

    invoke-direct/range {v8 .. v38}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 9
    new-instance v13, Ln3/y/b/a/t0/q0/r/d$b;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v13

    move-object/from16 v10, v39

    invoke-direct/range {v6 .. v12}, Ln3/y/b/a/t0/q0/r/d$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 11
    new-instance v4, Ln3/y/b/a/t0/q0/r/d;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v19

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    move-object v8, v4

    move-object v9, v5

    invoke-direct/range {v8 .. v20}, Ln3/y/b/a/t0/q0/r/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_0
    move-object v4, v2

    check-cast v4, Ln3/y/b/a/t0/q0/r/d;

    .line 20
    :goto_0
    iput-object v4, v0, Ln3/y/b/a/t0/q0/r/c;->k:Ln3/y/b/a/t0/q0/r/d;

    .line 21
    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c;->b:Ln3/y/b/a/t0/q0/r/h;

    check-cast v5, Ln3/y/b/a/t0/q0/r/a;

    .line 22
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v5, Ln3/y/b/a/t0/q0/r/g;

    invoke-direct {v5, v4}, Ln3/y/b/a/t0/q0/r/g;-><init>(Ln3/y/b/a/t0/q0/r/d;)V

    .line 24
    iput-object v5, v0, Ln3/y/b/a/t0/q0/r/c;->f:Ln3/y/b/a/w0/b0$a;

    .line 25
    iget-object v5, v4, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y/b/a/t0/q0/r/d$b;

    iget-object v5, v5, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 26
    iget-object v4, v4, Ln3/y/b/a/t0/q0/r/d;->d:Ljava/util/List;

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_1

    .line 28
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 29
    new-instance v8, Ln3/y/b/a/t0/q0/r/c$a;

    invoke-direct {v8, v0, v7}, Ln3/y/b/a/t0/q0/r/c$a;-><init>(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;)V

    .line 30
    iget-object v9, v0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 31
    :cond_1
    iget-object v4, v0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/t0/q0/r/c$a;

    if-eqz v3, :cond_2

    .line 32
    check-cast v2, Ln3/y/b/a/t0/q0/r/e;

    move-wide/from16 v12, p4

    .line 33
    invoke-virtual {v4, v2, v12, v13}, Ln3/y/b/a/t0/q0/r/c$a;->d(Ln3/y/b/a/t0/q0/r/e;J)V

    goto :goto_2

    :cond_2
    move-wide/from16 v12, p4

    .line 34
    invoke-virtual {v4}, Ln3/y/b/a/t0/q0/r/c$a;->b()V

    .line 35
    :goto_2
    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    iget-object v6, v1, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 36
    iget-object v1, v1, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 37
    iget-object v7, v1, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 38
    iget-object v8, v1, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v9, 0x4

    .line 39
    iget-wide v14, v1, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 40
    invoke-virtual/range {v5 .. v15}, Ln3/y/b/a/t0/c0$a;->i(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    .line 3
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->k:Ln3/y/b/a/t0/q0/r/d;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v1, p0, Ln3/y/b/a/t0/q0/r/c;->o:J

    .line 5
    iget-object v1, p0, Ln3/y/b/a/t0/q0/r/c;->h:Ln3/y/b/a/w0/a0;

    .line 6
    invoke-virtual {v1, v0}, Ln3/y/b/a/w0/a0;->e(Ln3/y/b/a/w0/a0$f;)V

    .line 7
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->h:Ln3/y/b/a/w0/a0;

    .line 8
    iget-object v1, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/t0/q0/r/c$a;

    .line 9
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c$a;->b:Ln3/y/b/a/w0/a0;

    .line 10
    invoke-virtual {v2, v0}, Ln3/y/b/a/w0/a0;->e(Ln3/y/b/a/w0/a0$f;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/t0/q0/r/c;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->i:Landroid/os/Handler;

    .line 13
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public t(Ln3/y/b/a/w0/a0$e;JJZ)V
    .locals 13

    .line 1
    move-object v0, p1

    check-cast v0, Ln3/y/b/a/w0/b0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    iget-object v3, v0, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 3
    iget-object v0, v0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 4
    iget-object v4, v0, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 5
    iget-object v5, v0, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v6, 0x4

    .line 6
    iget-wide v11, v0, Ln3/y/b/a/w0/d0;->b:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 7
    invoke-virtual/range {v2 .. v12}, Ln3/y/b/a/t0/c0$a;->f(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method
