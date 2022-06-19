.class public Ln3/i/b/h/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Ln3/i/b/h/j;->a:[Z

    return-void
.end method

.method public static a(Ln3/i/b/h/e;Ln3/i/b/d;Ln3/i/b/h/d;)V
    .locals 7

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->d:Ln3/i/b/h/d$a;

    const/4 v1, -0x1

    iput v1, p2, Ln3/i/b/h/d;->j:I

    .line 2
    iput v1, p2, Ln3/i/b/h/d;->k:I

    .line 3
    iget-object v1, p0, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    const/4 v4, 0x2

    if-eq v1, v3, :cond_0

    iget-object v1, p2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_0

    .line 4
    iget-object v1, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    iget v1, v1, Ln3/i/b/h/c;->g:I

    .line 5
    invoke-virtual {p0}, Ln3/i/b/h/d;->w()I

    move-result v2

    iget-object v5, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget v5, v5, Ln3/i/b/h/c;->g:I

    sub-int/2addr v2, v5

    .line 6
    iget-object v5, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {p1, v5}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v6

    iput-object v6, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 7
    iget-object v5, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {p1, v5}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v6

    iput-object v6, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 8
    iget-object v5, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    iget-object v5, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {p1, v5, v1}, Ln3/i/b/d;->e(Ln3/i/b/g;I)V

    .line 9
    iget-object v5, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v5, v5, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {p1, v5, v2}, Ln3/i/b/d;->e(Ln3/i/b/g;I)V

    .line 10
    iput v4, p2, Ln3/i/b/h/d;->j:I

    .line 11
    iput v1, p2, Ln3/i/b/h/d;->W:I

    sub-int/2addr v2, v1

    .line 12
    iput v2, p2, Ln3/i/b/h/d;->S:I

    .line 13
    iget v1, p2, Ln3/i/b/h/d;->d0:I

    if-ge v2, v1, :cond_0

    .line 14
    iput v1, p2, Ln3/i/b/h/d;->S:I

    .line 15
    :cond_0
    iget-object v1, p0, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eq v1, v3, :cond_3

    iget-object v1, p2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_3

    .line 16
    iget-object v0, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    iget v0, v0, Ln3/i/b/h/c;->g:I

    .line 17
    invoke-virtual {p0}, Ln3/i/b/h/d;->q()I

    move-result p0

    iget-object v1, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget v1, v1, Ln3/i/b/h/c;->g:I

    sub-int/2addr p0, v1

    .line 18
    iget-object v1, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {p1, v1}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v2

    iput-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 19
    iget-object v1, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {p1, v1}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v2

    iput-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 20
    iget-object v1, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {p1, v1, v0}, Ln3/i/b/d;->e(Ln3/i/b/g;I)V

    .line 21
    iget-object v1, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    invoke-virtual {p1, v1, p0}, Ln3/i/b/d;->e(Ln3/i/b/g;I)V

    .line 22
    iget v1, p2, Ln3/i/b/h/d;->c0:I

    if-gtz v1, :cond_1

    .line 23
    iget v1, p2, Ln3/i/b/h/d;->j0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 24
    :cond_1
    iget-object v1, p2, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    invoke-virtual {p1, v1}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v2

    iput-object v2, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    .line 25
    iget-object v1, p2, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    iget-object v1, v1, Ln3/i/b/h/c;->i:Ln3/i/b/g;

    iget v2, p2, Ln3/i/b/h/d;->c0:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ln3/i/b/d;->e(Ln3/i/b/g;I)V

    .line 26
    :cond_2
    iput v4, p2, Ln3/i/b/h/d;->k:I

    .line 27
    iput v0, p2, Ln3/i/b/h/d;->X:I

    sub-int/2addr p0, v0

    .line 28
    iput p0, p2, Ln3/i/b/h/d;->T:I

    .line 29
    iget p1, p2, Ln3/i/b/h/d;->e0:I

    if-ge p0, p1, :cond_3

    .line 30
    iput p1, p2, Ln3/i/b/h/d;->T:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
