.class public final Ln3/y/b/a/t0/f0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Ln3/y/b/a/t0/f0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/f0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/f0$e;->b:Ln3/y/b/a/t0/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ln3/y/b/a/t0/f0$e;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0$e;->b:Ln3/y/b/a/t0/f0;

    iget v1, p0, Ln3/y/b/a/t0/f0$e;->a:I

    .line 2
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ln3/y/b/a/t0/k;->b()V

    .line 3
    iget-object v1, v0, Ln3/y/b/a/t0/f0;->j:Ln3/y/b/a/w0/a0;

    iget-object v2, v0, Ln3/y/b/a/t0/f0;->d:Ln3/y/b/a/w0/z;

    iget v0, v0, Ln3/y/b/a/t0/f0;->z:I

    check-cast v2, Ln3/y/b/a/w0/t;

    invoke-virtual {v2, v0}, Ln3/y/b/a/w0/t;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ln3/y/b/a/w0/a0;->d(I)V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0$e;->b:Ln3/y/b/a/t0/f0;

    iget v1, p0, Ln3/y/b/a/t0/f0$e;->a:I

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/t0/f0;->B()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Ln3/y/b/a/t0/f0;->O:Z

    invoke-virtual {v1, v0}, Ln3/y/b/a/t0/k;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(J)I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0$e;->b:Ln3/y/b/a/t0/f0;

    iget v1, p0, Ln3/y/b/a/t0/f0$e;->a:I

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/t0/f0;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/f0;->x(I)V

    .line 4
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v2, v2, v1

    .line 5
    iget-boolean v4, v0, Ln3/y/b/a/t0/f0;->O:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ln3/y/b/a/t0/i0;->j()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 6
    invoke-virtual {v2}, Ln3/y/b/a/t0/i0;->f()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    invoke-virtual {v2, p1, p2, v4, v4}, Ln3/y/b/a/t0/i0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    if-nez v3, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/f0;->y(I)V

    :cond_3
    :goto_1
    return v3
.end method

.method public d(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0$e;->b:Ln3/y/b/a/t0/f0;

    iget v1, p0, Ln3/y/b/a/t0/f0$e;->a:I

    .line 2
    invoke-virtual {v0}, Ln3/y/b/a/t0/f0;->B()Z

    move-result v2

    const/4 v3, -0x3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/f0;->x(I)V

    .line 4
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->t:[Ln3/y/b/a/t0/k;

    aget-object v4, v2, v1

    iget-boolean v8, v0, Ln3/y/b/a/t0/f0;->O:Z

    iget-wide v9, v0, Ln3/y/b/a/t0/f0;->K:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 5
    invoke-virtual/range {v4 .. v10}, Ln3/y/b/a/t0/k;->c(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;ZZJ)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ln3/y/b/a/t0/f0;->y(I)V

    :cond_1
    move v3, p1

    :goto_0
    return v3
.end method
