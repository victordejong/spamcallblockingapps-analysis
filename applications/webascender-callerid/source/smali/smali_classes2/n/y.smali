.class public final Ln/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ln/y;

.field public g:Ln/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ln/y;->a:[B

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln/y;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln/y;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/y;->a:[B

    .line 5
    iput p2, p0, Ln/y;->b:I

    .line 6
    iput p3, p0, Ln/y;->c:I

    .line 7
    iput-boolean p4, p0, Ln/y;->d:Z

    .line 8
    iput-boolean p5, p0, Ln/y;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln/y;->g:Ln/y;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_9

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-boolean v3, v0, Ln/y;->e:Z

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    iget v3, p0, Ln/y;->c:I

    iget v4, p0, Ln/y;->b:I

    sub-int/2addr v3, v4

    if-eqz v0, :cond_7

    .line 4
    iget v4, v0, Ln/y;->c:I

    rsub-int v4, v4, 0x2000

    if-eqz v0, :cond_6

    iget-boolean v5, v0, Ln/y;->d:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    iget v1, v0, Ln/y;->b:I

    :goto_1
    add-int/2addr v4, v1

    if-le v3, v4, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0, v0, v3}, Ln/y;->f(Ln/y;I)V

    .line 6
    invoke-virtual {p0}, Ln/y;->b()Ln/y;

    .line 7
    invoke-static {p0}, Ln/z;->b(Ln/y;)V

    return-void

    .line 8
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 9
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 10
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 11
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ln/y;
    .locals 4

    .line 1
    iget-object v0, p0, Ln/y;->f:Ln/y;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Ln/y;->g:Ln/y;

    if-eqz v3, :cond_2

    iput-object v0, v3, Ln/y;->f:Ln/y;

    .line 3
    iget-object v0, p0, Ln/y;->f:Ln/y;

    if-eqz v0, :cond_1

    iput-object v3, v0, Ln/y;->g:Ln/y;

    .line 4
    iput-object v1, p0, Ln/y;->f:Ln/y;

    .line 5
    iput-object v1, p0, Ln/y;->g:Ln/y;

    return-object v2

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public final c(Ln/y;)Ln/y;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p0, p1, Ln/y;->g:Ln/y;

    .line 2
    iget-object v0, p0, Ln/y;->f:Ln/y;

    iput-object v0, p1, Ln/y;->f:Ln/y;

    .line 3
    iget-object v0, p0, Ln/y;->f:Ln/y;

    if-eqz v0, :cond_0

    iput-object p1, v0, Ln/y;->g:Ln/y;

    .line 4
    iput-object p1, p0, Ln/y;->f:Ln/y;

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()Ln/y;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln/y;->d:Z

    .line 2
    new-instance v0, Ln/y;

    iget-object v2, p0, Ln/y;->a:[B

    iget v3, p0, Ln/y;->b:I

    iget v4, p0, Ln/y;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ln/y;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)Ln/y;
    .locals 8

    if-lez p1, :cond_0

    .line 1
    iget v0, p0, Ln/y;->c:I

    iget v1, p0, Ln/y;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ln/y;->d()Ln/y;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Ln/z;->c()Ln/y;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln/y;->a:[B

    iget-object v2, v0, Ln/y;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Ln/y;->b:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/s/e;->e([B[BIIIILjava/lang/Object;)[B

    .line 5
    :goto_1
    iget v1, v0, Ln/y;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Ln/y;->c:I

    .line 6
    iget v1, p0, Ln/y;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Ln/y;->b:I

    .line 7
    iget-object p1, p0, Ln/y;->g:Ln/y;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ln/y;->c(Ln/y;)Ln/y;

    return-object v0

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ln/y;I)V
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Ln/y;->e:Z

    if-eqz v0, :cond_3

    .line 2
    iget v5, p1, Ln/y;->c:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 3
    iget-boolean v0, p1, Ln/y;->d:Z

    if-nez v0, :cond_1

    add-int v0, v5, p2

    .line 4
    iget v4, p1, Ln/y;->b:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v2, p1, Ln/y;->a:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lkotlin/s/e;->e([B[BIIIILjava/lang/Object;)[B

    .line 6
    iget v0, p1, Ln/y;->c:I

    iget v1, p1, Ln/y;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Ln/y;->c:I

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Ln/y;->b:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Ln/y;->a:[B

    iget-object v1, p1, Ln/y;->a:[B

    iget v2, p1, Ln/y;->c:I

    iget v3, p0, Ln/y;->b:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/s/e;->c([B[BIII)[B

    .line 11
    iget v0, p1, Ln/y;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Ln/y;->c:I

    .line 12
    iget p1, p0, Ln/y;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Ln/y;->b:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
