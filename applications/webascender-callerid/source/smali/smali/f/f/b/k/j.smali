.class public Lf/f/b/k/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Lf/f/b/k/j;->a:[Z

    return-void
.end method

.method static a(Lf/f/b/k/f;Lf/f/b/d;Lf/f/b/k/e;)V
    .locals 6

    const/4 v0, -0x1

    .line 1
    iput v0, p2, Lf/f/b/k/e;->l:I

    .line 2
    iput v0, p2, Lf/f/b/k/e;->m:I

    .line 3
    iget-object v0, p0, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    aget-object v0, v0, v1

    sget-object v1, Lf/f/b/k/e$b;->MATCH_PARENT:Lf/f/b/k/e$b;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p2, Lf/f/b/k/e;->F:Lf/f/b/k/d;

    iget v0, v0, Lf/f/b/k/d;->g:I

    .line 5
    invoke-virtual {p0}, Lf/f/b/k/e;->R()I

    move-result v1

    iget-object v4, p2, Lf/f/b/k/e;->H:Lf/f/b/k/d;

    iget v4, v4, Lf/f/b/k/d;->g:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p2, Lf/f/b/k/e;->F:Lf/f/b/k/d;

    invoke-virtual {p1, v4}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v5

    iput-object v5, v4, Lf/f/b/k/d;->i:Lf/f/b/i;

    .line 7
    iget-object v4, p2, Lf/f/b/k/e;->H:Lf/f/b/k/d;

    invoke-virtual {p1, v4}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v5

    iput-object v5, v4, Lf/f/b/k/d;->i:Lf/f/b/i;

    .line 8
    iget-object v4, p2, Lf/f/b/k/e;->F:Lf/f/b/k/d;

    iget-object v4, v4, Lf/f/b/k/d;->i:Lf/f/b/i;

    invoke-virtual {p1, v4, v0}, Lf/f/b/d;->f(Lf/f/b/i;I)V

    .line 9
    iget-object v4, p2, Lf/f/b/k/e;->H:Lf/f/b/k/d;

    iget-object v4, v4, Lf/f/b/k/d;->i:Lf/f/b/i;

    invoke-virtual {p1, v4, v1}, Lf/f/b/d;->f(Lf/f/b/i;I)V

    .line 10
    iput v3, p2, Lf/f/b/k/e;->l:I

    .line 11
    invoke-virtual {p2, v0, v1}, Lf/f/b/k/e;->y0(II)V

    .line 12
    :cond_0
    iget-object v0, p0, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    aget-object v0, v0, v1

    sget-object v1, Lf/f/b/k/e$b;->MATCH_PARENT:Lf/f/b/k/e$b;

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p2, Lf/f/b/k/e;->G:Lf/f/b/k/d;

    iget v0, v0, Lf/f/b/k/d;->g:I

    .line 14
    invoke-virtual {p0}, Lf/f/b/k/e;->v()I

    move-result p0

    iget-object v1, p2, Lf/f/b/k/e;->I:Lf/f/b/k/d;

    iget v1, v1, Lf/f/b/k/d;->g:I

    sub-int/2addr p0, v1

    .line 15
    iget-object v1, p2, Lf/f/b/k/e;->G:Lf/f/b/k/d;

    invoke-virtual {p1, v1}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v2

    iput-object v2, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    .line 16
    iget-object v1, p2, Lf/f/b/k/e;->I:Lf/f/b/k/d;

    invoke-virtual {p1, v1}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v2

    iput-object v2, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    .line 17
    iget-object v1, p2, Lf/f/b/k/e;->G:Lf/f/b/k/d;

    iget-object v1, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    invoke-virtual {p1, v1, v0}, Lf/f/b/d;->f(Lf/f/b/i;I)V

    .line 18
    iget-object v1, p2, Lf/f/b/k/e;->I:Lf/f/b/k/d;

    iget-object v1, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    invoke-virtual {p1, v1, p0}, Lf/f/b/d;->f(Lf/f/b/i;I)V

    .line 19
    iget v1, p2, Lf/f/b/k/e;->Y:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Lf/f/b/k/e;->Q()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 20
    :cond_1
    iget-object v1, p2, Lf/f/b/k/e;->J:Lf/f/b/k/d;

    invoke-virtual {p1, v1}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v2

    iput-object v2, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    .line 21
    iget-object v1, p2, Lf/f/b/k/e;->J:Lf/f/b/k/d;

    iget-object v1, v1, Lf/f/b/k/d;->i:Lf/f/b/i;

    iget v2, p2, Lf/f/b/k/e;->Y:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lf/f/b/d;->f(Lf/f/b/i;I)V

    .line 22
    :cond_2
    iput v3, p2, Lf/f/b/k/e;->m:I

    .line 23
    invoke-virtual {p2, v0, p0}, Lf/f/b/k/e;->P0(II)V

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
