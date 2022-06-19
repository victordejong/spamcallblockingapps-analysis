.class public final Ln3/y/b/a/q0/w/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# instance fields
.field public final a:Ln3/y/b/a/x0/m;

.field public b:Ln3/y/b/a/q0/p;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/n;->c:Z

    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/q0/w/n;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Ln3/y/b/a/q0/w/n;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Ln3/y/b/a/q0/w/n;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/q0/w/n;->b:Ln3/y/b/a/q0/p;

    iget-wide v2, p0, Ln3/y/b/a/q0/w/n;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/n;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public c(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Ln3/y/b/a/q0/w/n;->c:Z

    .line 2
    iput-wide p1, p0, Ln3/y/b/a/q0/w/n;->d:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ln3/y/b/a/q0/w/n;->e:I

    .line 4
    iput p1, p0, Ln3/y/b/a/q0/w/n;->f:I

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/q0/w/n;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v0

    .line 3
    iget v1, p0, Ln3/y/b/a/q0/w/n;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    iget-object v3, p1, Ln3/y/b/a/x0/m;->a:[B

    .line 6
    iget v4, p1, Ln3/y/b/a/x0/m;->b:I

    .line 7
    iget-object v5, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    iget v6, p0, Ln3/y/b/a/q0/w/n;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Ln3/y/b/a/q0/w/n;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 9
    iget-object v1, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ln3/y/b/a/x0/m;->z(I)V

    const/16 v1, 0x49

    .line 10
    iget-object v4, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    .line 11
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ln3/y/b/a/x0/m;->A(I)V

    .line 13
    iget-object v1, p0, Ln3/y/b/a/q0/w/n;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v1}, Ln3/y/b/a/x0/m;->n()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Ln3/y/b/a/q0/w/n;->e:I

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iput-boolean v3, p0, Ln3/y/b/a/q0/w/n;->c:Z

    return-void

    .line 15
    :cond_3
    :goto_1
    iget v1, p0, Ln3/y/b/a/q0/w/n;->e:I

    iget v2, p0, Ln3/y/b/a/q0/w/n;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16
    iget-object v1, p0, Ln3/y/b/a/q0/w/n;->b:Ln3/y/b/a/q0/p;

    invoke-interface {v1, p1, v0}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 17
    iget p1, p0, Ln3/y/b/a/q0/w/n;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Ln3/y/b/a/q0/w/n;->f:I

    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/n;->b:Ln3/y/b/a/q0/p;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
