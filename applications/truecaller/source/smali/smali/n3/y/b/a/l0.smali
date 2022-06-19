.class public abstract Ln3/y/b/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/l0$b;,
        Ln3/y/b/a/l0$c;
    }
.end annotation


# static fields
.field public static final a:Ln3/y/b/a/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/y/b/a/l0$a;

    invoke-direct {v0}, Ln3/y/b/a/l0$a;-><init>()V

    sput-object v0, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/l0;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Ljava/lang/Object;)I
.end method

.method public c(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/l0;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/l0;->o()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final d(ILn3/y/b/a/l0$b;Ln3/y/b/a/l0$c;IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object p2

    .line 2
    iget p2, p2, Ln3/y/b/a/l0$b;->c:I

    .line 3
    invoke-virtual {p0, p2, p3}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object v0

    iget v0, v0, Ln3/y/b/a/l0$c;->h:I

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0, p2, p4, p5}, Ln3/y/b/a/l0;->e(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object p1

    iget p1, p1, Ln3/y/b/a/l0$c;->g:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Ln3/y/b/a/l0;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Ln3/y/b/a/l0;->a(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 4
    :cond_3
    invoke-virtual {p0, p3}, Ln3/y/b/a/l0;->c(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public final f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;
.end method

.method public h(Ljava/lang/Object;Ln3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract i()I
.end method

.method public final j(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/l0$c;",
            "Ln3/y/b/a/l0$b;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/l0;->k(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final k(Ln3/y/b/a/l0$c;Ln3/y/b/a/l0$b;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/l0$c;",
            "Ln3/y/b/a/l0$b;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/l0;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->s(III)I

    .line 2
    invoke-virtual {p0, p3, p1, p6, p7}, Ln3/y/b/a/l0;->n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 3
    iget-wide p4, p1, Ln3/y/b/a/l0$c;->i:J

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget p3, p1, Ln3/y/b/a/l0$c;->g:I

    .line 5
    iget-wide v0, p1, Ln3/y/b/a/l0$c;->k:J

    add-long/2addr v0, p4

    const/4 p4, 0x1

    .line 6
    invoke-virtual {p0, p3, p2, p4}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object p5

    .line 7
    iget-wide v2, p5, Ln3/y/b/a/l0$b;->d:J

    :goto_0
    cmp-long p5, v2, p6

    if-eqz p5, :cond_1

    cmp-long p5, v0, v2

    if-ltz p5, :cond_1

    .line 8
    iget p5, p1, Ln3/y/b/a/l0$c;->h:I

    if-ge p3, p5, :cond_1

    sub-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    .line 9
    invoke-virtual {p0, p3, p2, p4}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    move-result-object p5

    .line 10
    iget-wide v2, p5, Ln3/y/b/a/l0$b;->d:J

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p2, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public abstract l(I)Ljava/lang/Object;
.end method

.method public final m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ln3/y/b/a/l0;->n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;

    move-result-object p1

    return-object p1
.end method

.method public abstract n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;
.end method

.method public abstract o()I
.end method

.method public final p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/l0;->o()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
