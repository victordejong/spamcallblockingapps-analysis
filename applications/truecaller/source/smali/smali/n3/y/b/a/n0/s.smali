.class public abstract Ln3/y/b/a/n0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/n0/g;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/nio/ByteBuffer;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln3/y/b/a/n0/s;->c:I

    .line 5
    iput v0, p0, Ln3/y/b/a/n0/s;->b:I

    .line 6
    iput v0, p0, Ln3/y/b/a/n0/s;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/n0/s;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    sget-object v1, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/n0/s;->g:Z

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/n0/s;->k()V

    return-void
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final flush()V
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/y/b/a/n0/s;->g:Z

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/n0/s;->a()V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/s;->c:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/s;->b:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/s;->d:I

    return v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final m(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :goto_0
    iget-object p1, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Ln3/y/b/a/n0/s;->f:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final n(III)Z
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/s;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Ln3/y/b/a/n0/s;->c:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Ln3/y/b/a/n0/s;->d:I

    if-ne p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput p1, p0, Ln3/y/b/a/n0/s;->b:I

    .line 3
    iput p2, p0, Ln3/y/b/a/n0/s;->c:I

    .line 4
    iput p3, p0, Ln3/y/b/a/n0/s;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/s;->flush()V

    .line 2
    sget-object v0, Ln3/y/b/a/n0/g;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ln3/y/b/a/n0/s;->e:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln3/y/b/a/n0/s;->b:I

    .line 4
    iput v0, p0, Ln3/y/b/a/n0/s;->c:I

    .line 5
    iput v0, p0, Ln3/y/b/a/n0/s;->d:I

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/n0/s;->l()V

    return-void
.end method
