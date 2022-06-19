.class public final Ln3/z/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b0/a/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/b0/a/q;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ln3/z/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/z0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ln3/z/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/z0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final h:Ln3/b0/a/q;


# direct methods
.method public constructor <init>(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/z/z0<",
            "TT;>;",
            "Ln3/b0/a/q;",
            ")V"
        }
    .end annotation

    const-string v0, "oldList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/b1;->f:Ln3/z/z0;

    iput-object p2, p0, Ln3/z/b1;->g:Ln3/z/z0;

    iput-object p3, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 2
    invoke-interface {p1}, Ln3/z/z0;->c()I

    move-result p2

    iput p2, p0, Ln3/z/b1;->a:I

    .line 3
    invoke-interface {p1}, Ln3/z/z0;->d()I

    move-result p2

    iput p2, p0, Ln3/z/b1;->b:I

    .line 4
    invoke-interface {p1}, Ln3/z/z0;->b()I

    move-result p1

    iput p1, p0, Ln3/z/b1;->c:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Ln3/z/b1;->d:I

    .line 6
    iput p1, p0, Ln3/z/b1;->e:I

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 2
    iget v1, p0, Ln3/z/b1;->a:I

    add-int/2addr p1, v1

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 9

    .line 1
    sget-object v0, Ln3/z/y;->b:Ln3/z/y;

    iget v1, p0, Ln3/z/b1;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge p1, v1, :cond_0

    :goto_0
    move v1, v5

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Ln3/z/b1;->e:I

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v1, p0, Ln3/z/b1;->b:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    iput v3, p0, Ln3/z/b1;->e:I

    .line 5
    iget-object v6, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 6
    iget v7, p0, Ln3/z/b1;->a:I

    add-int/2addr v7, p1

    .line 7
    invoke-interface {v6, v7, v1, v0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 8
    iget v6, p0, Ln3/z/b1;->b:I

    sub-int/2addr v6, v1

    iput v6, p0, Ln3/z/b1;->b:I

    :cond_2
    sub-int v6, p2, v1

    if-lez v6, :cond_3

    .line 9
    iget-object v7, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    add-int/2addr v1, p1

    .line 10
    iget v8, p0, Ln3/z/b1;->a:I

    add-int/2addr v1, v8

    .line 11
    invoke-interface {v7, v1, v6}, Ln3/b0/a/q;->onInserted(II)V

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    if-lez p1, :cond_5

    :goto_2
    move v2, v5

    goto :goto_3

    .line 12
    :cond_5
    iget v1, p0, Ln3/z/b1;->d:I

    if-ne v1, v4, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    iget v1, p0, Ln3/z/b1;->a:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_7

    .line 14
    iput v3, p0, Ln3/z/b1;->d:I

    rsub-int/lit8 v3, v1, 0x0

    .line 15
    iget-object v4, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 16
    iget v6, p0, Ln3/z/b1;->a:I

    add-int/2addr v3, v6

    .line 17
    invoke-interface {v4, v3, v1, v0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 18
    iget v0, p0, Ln3/z/b1;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Ln3/z/b1;->a:I

    :cond_7
    sub-int v0, p2, v1

    if-lez v0, :cond_8

    .line 19
    iget-object v1, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 20
    iget v3, p0, Ln3/z/b1;->a:I

    add-int/2addr v3, v5

    .line 21
    invoke-interface {v1, v3, v0}, Ln3/b0/a/q;->onInserted(II)V

    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    goto :goto_4

    .line 22
    :cond_9
    iget-object v0, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 23
    iget v1, p0, Ln3/z/b1;->a:I

    add-int/2addr p1, v1

    .line 24
    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onInserted(II)V

    .line 25
    :goto_4
    iget p1, p0, Ln3/z/b1;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Ln3/z/b1;->c:I

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 2
    iget v1, p0, Ln3/z/b1;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 9

    .line 1
    sget-object v0, Ln3/z/y;->a:Ln3/z/y;

    add-int v1, p1, p2

    .line 2
    iget v2, p0, Ln3/z/b1;->c:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v1, v2, :cond_0

    :goto_0
    move v1, v6

    goto :goto_1

    .line 3
    :cond_0
    iget v1, p0, Ln3/z/b1;->e:I

    if-ne v1, v5, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {v1}, Ln3/z/z0;->d()I

    move-result v1

    iget v2, p0, Ln3/z/b1;->b:I

    sub-int/2addr v1, v2

    .line 5
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gez v1, :cond_2

    move v1, v6

    :cond_2
    sub-int v2, p2, v1

    if-lez v1, :cond_3

    .line 6
    iput v4, p0, Ln3/z/b1;->e:I

    .line 7
    iget-object v7, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 8
    iget v8, p0, Ln3/z/b1;->a:I

    add-int/2addr v8, p1

    .line 9
    invoke-interface {v7, v8, v1, v0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 10
    iget v7, p0, Ln3/z/b1;->b:I

    add-int/2addr v7, v1

    iput v7, p0, Ln3/z/b1;->b:I

    :cond_3
    if-lez v2, :cond_4

    .line 11
    iget-object v7, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    add-int/2addr v1, p1

    .line 12
    iget v8, p0, Ln3/z/b1;->a:I

    add-int/2addr v1, v8

    .line 13
    invoke-interface {v7, v1, v2}, Ln3/b0/a/q;->onRemoved(II)V

    :cond_4
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    if-lez p1, :cond_6

    :goto_2
    move v3, v6

    goto :goto_3

    .line 14
    :cond_6
    iget v1, p0, Ln3/z/b1;->d:I

    if-ne v1, v5, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    iget-object v1, p0, Ln3/z/b1;->g:Ln3/z/z0;

    invoke-interface {v1}, Ln3/z/z0;->c()I

    move-result v1

    iget v2, p0, Ln3/z/b1;->a:I

    sub-int/2addr v1, v2

    .line 16
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gez v1, :cond_8

    move v1, v6

    :cond_8
    sub-int v2, p2, v1

    if-lez v2, :cond_9

    .line 17
    iget-object v5, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 18
    iget v7, p0, Ln3/z/b1;->a:I

    add-int/2addr v7, v6

    .line 19
    invoke-interface {v5, v7, v2}, Ln3/b0/a/q;->onRemoved(II)V

    :cond_9
    if-lez v1, :cond_a

    .line 20
    iput v4, p0, Ln3/z/b1;->d:I

    .line 21
    iget-object v2, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 22
    iget v4, p0, Ln3/z/b1;->a:I

    add-int/2addr v4, v6

    .line 23
    invoke-interface {v2, v4, v1, v0}, Ln3/b0/a/q;->onChanged(IILjava/lang/Object;)V

    .line 24
    iget v0, p0, Ln3/z/b1;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Ln3/z/b1;->a:I

    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    goto :goto_4

    .line 25
    :cond_b
    iget-object v0, p0, Ln3/z/b1;->h:Ln3/b0/a/q;

    .line 26
    iget v1, p0, Ln3/z/b1;->a:I

    add-int/2addr p1, v1

    .line 27
    invoke-interface {v0, p1, p2}, Ln3/b0/a/q;->onRemoved(II)V

    .line 28
    :goto_4
    iget p1, p0, Ln3/z/b1;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Ln3/z/b1;->c:I

    return-void
.end method
