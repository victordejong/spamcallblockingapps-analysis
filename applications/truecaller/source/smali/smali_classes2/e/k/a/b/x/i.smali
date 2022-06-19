.class public Le/k/a/b/x/i;
.super Le/k/a/b/u/b;
.source "SourceFile"


# static fields
.field public static final h0:I

.field public static final i0:I

.field public static final j0:I

.field public static final k0:I

.field public static final l0:I

.field public static final m0:I

.field public static final n0:I

.field public static final o0:I

.field public static final p0:[I

.field public static final q0:[I


# instance fields
.field public Q:Le/k/a/b/n;

.field public final R:Le/k/a/b/y/a;

.field public S:[I

.field public T:Z

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Ljava/io/InputStream;

.field public Z:[B

.field public g0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/j$a;->n:Le/k/a/b/j$a;

    .line 2
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 3
    sput v0, Le/k/a/b/x/i;->h0:I

    .line 4
    sget-object v0, Le/k/a/b/j$a;->j:Le/k/a/b/j$a;

    .line 5
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 6
    sput v0, Le/k/a/b/x/i;->i0:I

    .line 7
    sget-object v0, Le/k/a/b/j$a;->l:Le/k/a/b/j$a;

    .line 8
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 9
    sput v0, Le/k/a/b/x/i;->j0:I

    .line 10
    sget-object v0, Le/k/a/b/j$a;->m:Le/k/a/b/j$a;

    .line 11
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 12
    sput v0, Le/k/a/b/x/i;->k0:I

    .line 13
    sget-object v0, Le/k/a/b/j$a;->g:Le/k/a/b/j$a;

    .line 14
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 15
    sput v0, Le/k/a/b/x/i;->l0:I

    .line 16
    sget-object v0, Le/k/a/b/j$a;->f:Le/k/a/b/j$a;

    .line 17
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 18
    sput v0, Le/k/a/b/x/i;->m0:I

    .line 19
    sget-object v0, Le/k/a/b/j$a;->d:Le/k/a/b/j$a;

    .line 20
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 21
    sput v0, Le/k/a/b/x/i;->n0:I

    .line 22
    sget-object v0, Le/k/a/b/j$a;->e:Le/k/a/b/j$a;

    .line 23
    iget v0, v0, Le/k/a/b/j$a;->b:I

    .line 24
    sput v0, Le/k/a/b/x/i;->o0:I

    .line 25
    sget-object v0, Le/k/a/b/w/a;->d:[I

    .line 26
    sput-object v0, Le/k/a/b/x/i;->p0:[I

    .line 27
    sget-object v0, Le/k/a/b/w/a;->c:[I

    .line 28
    sput-object v0, Le/k/a/b/x/i;->q0:[I

    return-void
.end method

.method public constructor <init>(Le/k/a/b/w/b;ILjava/io/InputStream;Le/k/a/b/n;Le/k/a/b/y/a;[BIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/b/u/b;-><init>(Le/k/a/b/w/b;I)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    .line 3
    iput-object p3, p0, Le/k/a/b/x/i;->Y:Ljava/io/InputStream;

    .line 4
    iput-object p4, p0, Le/k/a/b/x/i;->Q:Le/k/a/b/n;

    .line 5
    iput-object p5, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    .line 6
    iput-object p6, p0, Le/k/a/b/x/i;->Z:[B

    .line 7
    iput p7, p0, Le/k/a/b/u/b;->o:I

    .line 8
    iput p8, p0, Le/k/a/b/u/b;->p:I

    sub-int p1, p7, p9

    .line 9
    iput p1, p0, Le/k/a/b/u/b;->s:I

    neg-int p1, p7

    add-int/2addr p1, p9

    int-to-long p1, p1

    .line 10
    iput-wide p1, p0, Le/k/a/b/u/b;->q:J

    .line 11
    iput-boolean p10, p0, Le/k/a/b/x/i;->g0:Z

    return-void
.end method

.method public static final F3(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 p1, p1, 0x3

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public final A3(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Le/k/a/b/x/i;->B3(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    iget v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 6
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/b/x/i;->i3(Ljava/lang/String;II)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->R3(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final B3(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    :cond_0
    iget v1, p0, Le/k/a/b/u/b;->o:I

    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    iget v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 4
    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 5
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/b/x/i;->i3(Ljava/lang/String;II)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->R3(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final C3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 5
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iput v2, p0, Le/k/a/b/u/b;->o:I

    return-void

    :cond_1
    const-string v0, "true"

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Le/k/a/b/x/i;->B3(Ljava/lang/String;I)V

    return-void
.end method

.method public final D3()Le/k/a/b/m;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/k/a/b/u/b;->A:Z

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    .line 4
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v2, p0, Le/k/a/b/u/b;->u:I

    iget v3, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {v1, v2, v3}, Le/k/a/b/x/d;->j(II)Le/k/a/b/x/d;

    move-result-object v1

    iput-object v1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v2, p0, Le/k/a/b/u/b;->u:I

    iget v3, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {v1, v2, v3}, Le/k/a/b/x/d;->k(II)Le/k/a/b/x/d;

    move-result-object v1

    iput-object v1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 8
    :cond_1
    :goto_0
    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0
.end method

.method public final E3(I)Le/k/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/k/a/b/x/i;->T:Z

    .line 2
    sget-object p1, Le/k/a/b/m;->p:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    :cond_0
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x74

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->v3(I)Le/k/a/b/m;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->L3(I)Le/k/a/b/m;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v0, p0, Le/k/a/b/u/b;->u:I

    iget v1, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {p1, v0, v1}, Le/k/a/b/x/d;->k(II)Le/k/a/b/x/d;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 6
    sget-object p1, Le/k/a/b/m;->j:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Le/k/a/b/x/i;->C3()V

    .line 8
    sget-object p1, Le/k/a/b/m;->s:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p0}, Le/k/a/b/x/i;->z3()V

    .line 10
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/x/i;->y3()V

    .line 12
    sget-object p1, Le/k/a/b/m;->t:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 13
    :cond_5
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v0, p0, Le/k/a/b/u/b;->u:I

    iget v1, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {p1, v0, v1}, Le/k/a/b/x/d;->j(II)Le/k/a/b/x/d;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 14
    sget-object p1, Le/k/a/b/m;->l:Le/k/a/b/m;

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 15
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/i;->H3()Le/k/a/b/m;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    .line 16
    :cond_7
    invoke-virtual {p0}, Le/k/a/b/x/i;->J3()Le/k/a/b/m;

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public F1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->r3()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/u/b;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-super {p0, v0}, Le/k/a/b/u/c;->I1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G3([CIIZI)Le/k/a/b/m;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x39

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2e

    if-ne p3, v5, :cond_6

    .line 1
    array-length v5, p1

    if-lt p2, v5, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move p2, v3

    :cond_0
    add-int/lit8 v5, p2, 0x1

    int-to-char v6, p3

    .line 3
    aput-char v6, p1, p2

    move p2, v5

    move v5, v3

    .line 4
    :goto_0
    iget v6, p0, Le/k/a/b/u/b;->o:I

    iget v7, p0, Le/k/a/b/u/b;->p:I

    if-lt v6, v7, :cond_1

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_2

    .line 5
    :cond_1
    iget-object p3, p0, Le/k/a/b/x/i;->Z:[B

    iget v6, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Le/k/a/b/u/b;->o:I

    aget-byte p3, p3, v6

    and-int/lit16 p3, p3, 0xff

    if-lt p3, v2, :cond_4

    if-le p3, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 6
    array-length v6, p1

    if-lt p2, v6, :cond_3

    .line 7
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move p2, v3

    :cond_3
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, p3

    .line 8
    aput-char v7, p1, p2

    move p2, v6

    goto :goto_0

    :cond_4
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "Decimal point not followed by a digit"

    .line 9
    invoke-virtual {p0, p3, p1}, Le/k/a/b/u/c;->N2(ILjava/lang/String;)V

    throw v0

    :cond_6
    move v6, v3

    :goto_3
    const/16 v5, 0x65

    if-eq p3, v5, :cond_7

    const/16 v5, 0x45

    if-ne p3, v5, :cond_11

    .line 10
    :cond_7
    array-length v5, p1

    if-lt p2, v5, :cond_8

    .line 11
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move p2, v3

    :cond_8
    add-int/lit8 v5, p2, 0x1

    int-to-char p3, p3

    .line 12
    aput-char p3, p1, p2

    .line 13
    iget p2, p0, Le/k/a/b/u/b;->o:I

    iget p3, p0, Le/k/a/b/u/b;->p:I

    if-lt p2, p3, :cond_9

    .line 14
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 15
    :cond_9
    iget-object p2, p0, Le/k/a/b/x/i;->Z:[B

    iget p3, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v7, p3, 0x1

    iput v7, p0, Le/k/a/b/u/b;->o:I

    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x2d

    if-eq p2, p3, :cond_b

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move p3, p2

    move p2, v3

    goto :goto_6

    .line 16
    :cond_b
    :goto_5
    array-length p3, p1

    if-lt v5, p3, :cond_c

    .line 17
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move v5, v3

    :cond_c
    add-int/lit8 p3, v5, 0x1

    int-to-char p2, p2

    .line 18
    aput-char p2, p1, v5

    .line 19
    iget p2, p0, Le/k/a/b/u/b;->o:I

    iget v5, p0, Le/k/a/b/u/b;->p:I

    if-lt p2, v5, :cond_d

    .line 20
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 21
    :cond_d
    iget-object p2, p0, Le/k/a/b/x/i;->Z:[B

    iget v5, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Le/k/a/b/u/b;->o:I

    aget-byte p2, p2, v5

    and-int/lit16 p2, p2, 0xff

    move v5, p3

    goto :goto_4

    :goto_6
    if-lt p3, v2, :cond_10

    if-gt p3, v1, :cond_10

    add-int/lit8 p2, p2, 0x1

    .line 22
    array-length v7, p1

    if-lt v5, v7, :cond_e

    .line 23
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move v5, v3

    :cond_e
    add-int/lit8 v7, v5, 0x1

    int-to-char v8, p3

    .line 24
    aput-char v8, p1, v5

    .line 25
    iget v5, p0, Le/k/a/b/u/b;->o:I

    iget v8, p0, Le/k/a/b/u/b;->p:I

    if-lt v5, v8, :cond_f

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v5

    if-nez v5, :cond_f

    move v6, v4

    move v5, v7

    goto :goto_7

    .line 26
    :cond_f
    iget-object p3, p0, Le/k/a/b/x/i;->Z:[B

    iget v5, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Le/k/a/b/u/b;->o:I

    aget-byte p3, p3, v5

    and-int/lit16 p3, p3, 0xff

    move v5, v7

    goto :goto_6

    :cond_10
    :goto_7
    if-eqz p2, :cond_13

    move p2, v5

    :cond_11
    if-nez v6, :cond_12

    .line 27
    iget p1, p0, Le/k/a/b/u/b;->o:I

    sub-int/2addr p1, v4

    iput p1, p0, Le/k/a/b/u/b;->o:I

    .line 28
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {p1}, Le/k/a/b/l;->f()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 29
    invoke-virtual {p0, p3}, Le/k/a/b/x/i;->j4(I)V

    .line 30
    :cond_12
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 31
    iput p2, p1, Le/k/a/b/a0/n;->i:I

    .line 32
    iput-boolean p4, p0, Le/k/a/b/u/b;->N:Z

    .line 33
    iput p5, p0, Le/k/a/b/u/b;->O:I

    .line 34
    iput v3, p0, Le/k/a/b/u/b;->D:I

    .line 35
    sget-object p1, Le/k/a/b/m;->r:Le/k/a/b/m;

    return-object p1

    :cond_13
    const-string p1, "Exponent indicator not followed by a digit"

    .line 36
    invoke-virtual {p0, p3, p1}, Le/k/a/b/u/c;->N2(ILjava/lang/String;)V

    throw v0
.end method

.method public final H3()Le/k/a/b/m;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/x/e;->k:Le/k/a/b/x/e;

    .line 2
    iget-object v0, v0, Le/k/a/b/x/e;->c:Le/k/a/b/j$a;

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->v3(I)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->i()[C

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Le/k/a/b/x/i;->G3([CIIZI)Le/k/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public I(Le/k/a/b/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->o:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/k/a/b/u/b;->C:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Current token ("

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->l3(Le/k/a/b/a;)[B

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->C:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le/k/a/b/x/i;->T:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 10
    throw v0

    .line 11
    :cond_2
    iget-object v0, p0, Le/k/a/b/u/b;->C:[B

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Le/k/a/b/u/b;->T2()Le/k/a/b/a0/c;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Le/k/a/b/x/i;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Le/k/a/b/u/c;->x2(Ljava/lang/String;Le/k/a/b/a0/c;Le/k/a/b/a;)V

    .line 14
    invoke-virtual {v0}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/u/b;->C:[B

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Le/k/a/b/u/b;->C:[B

    return-object p1
.end method

.method public I1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean p1, p0, Le/k/a/b/x/i;->T:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Le/k/a/b/x/i;->T:Z

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->r3()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/u/b;->Q()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-super {p0, p1}, Le/k/a/b/u/c;->I1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final I3(I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x22

    const/4 v7, 0x1

    if-eq v0, v5, :cond_1c

    const-string v8, " in field name"

    const/16 v9, 0x27

    if-ne v0, v9, :cond_12

    .line 1
    iget v10, v6, Le/k/a/b/j;->a:I

    sget v11, Le/k/a/b/x/i;->l0:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_12

    .line 2
    iget v0, v6, Le/k/a/b/u/b;->o:I

    iget v10, v6, Le/k/a/b/u/b;->p:I

    if-lt v0, v10, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    const-string v1, ": was expecting closing \'\'\' for field name"

    invoke-virtual {v6, v1, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v4

    .line 5
    :cond_1
    :goto_0
    iget-object v0, v6, Le/k/a/b/x/i;->Z:[B

    iget v10, v6, Le/k/a/b/u/b;->o:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v9, :cond_2

    goto/16 :goto_a

    .line 6
    :cond_2
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    .line 7
    sget-object v10, Le/k/a/b/x/i;->q0:[I

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_1
    if-ne v0, v9, :cond_6

    if-lez v11, :cond_4

    .line 8
    array-length v0, v1

    if-lt v12, v0, :cond_3

    .line 9
    array-length v0, v1

    invoke-static {v1, v0}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v0

    iput-object v0, v6, Le/k/a/b/x/i;->S:[I

    move-object v1, v0

    :cond_3
    add-int/lit8 v0, v12, 0x1

    .line 10
    invoke-static {v13, v11}, Le/k/a/b/x/i;->F3(II)I

    move-result v2

    aput v2, v1, v12

    move v12, v0

    .line 11
    :cond_4
    iget-object v0, v6, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v0, v1, v12}, Le/k/a/b/y/a;->o([II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {v6, v1, v12, v11}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    :goto_2
    move-object v1, v0

    goto/16 :goto_a

    .line 13
    :cond_6
    aget v14, v10, v0

    if-eqz v14, :cond_d

    if-eq v0, v5, :cond_d

    const/16 v14, 0x5c

    if-eq v0, v14, :cond_7

    const-string v14, "name"

    .line 14
    invoke-virtual {v6, v0, v14}, Le/k/a/b/u/b;->b3(ILjava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_7
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->S2()C

    move-result v0

    :goto_3
    const/16 v14, 0x7f

    if-le v0, v14, :cond_d

    if-lt v11, v3, :cond_9

    .line 16
    array-length v11, v1

    if-lt v12, v11, :cond_8

    .line 17
    array-length v11, v1

    invoke-static {v1, v11}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v1

    iput-object v1, v6, Le/k/a/b/x/i;->S:[I

    :cond_8
    add-int/lit8 v11, v12, 0x1

    .line 18
    aput v13, v1, v12

    move v13, v2

    move v12, v11

    move v11, v13

    :cond_9
    const/16 v14, 0x800

    shl-int/lit8 v13, v13, 0x8

    if-ge v0, v14, :cond_a

    shr-int/lit8 v14, v0, 0x6

    or-int/lit16 v14, v14, 0xc0

    or-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    shr-int/lit8 v14, v0, 0xc

    or-int/lit16 v14, v14, 0xe0

    or-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v3, :cond_c

    .line 19
    array-length v11, v1

    if-lt v12, v11, :cond_b

    .line 20
    array-length v11, v1

    invoke-static {v1, v11}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v1

    iput-object v1, v6, Le/k/a/b/x/i;->S:[I

    :cond_b
    add-int/lit8 v11, v12, 0x1

    .line 21
    aput v13, v1, v12

    move v13, v2

    move v12, v11

    move v11, v13

    :cond_c
    shl-int/lit8 v13, v13, 0x8

    shr-int/lit8 v14, v0, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    or-int/2addr v13, v14

    add-int/2addr v11, v7

    :goto_4
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_d
    if-ge v11, v3, :cond_e

    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v0, v13

    move v13, v0

    goto :goto_5

    .line 22
    :cond_e
    array-length v11, v1

    if-lt v12, v11, :cond_f

    .line 23
    array-length v11, v1

    invoke-static {v1, v11}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v1

    iput-object v1, v6, Le/k/a/b/x/i;->S:[I

    :cond_f
    add-int/lit8 v11, v12, 0x1

    .line 24
    aput v13, v1, v12

    move v13, v0

    move v12, v11

    move v11, v7

    .line 25
    :goto_5
    iget v0, v6, Le/k/a/b/u/b;->o:I

    iget v14, v6, Le/k/a/b/u/b;->p:I

    if-lt v0, v14, :cond_11

    .line 26
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 27
    :cond_10
    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {v6, v8, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v4

    .line 28
    :cond_11
    :goto_6
    iget-object v0, v6, Le/k/a/b/x/i;->Z:[B

    iget v14, v6, Le/k/a/b/u/b;->o:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v14

    and-int/lit16 v0, v0, 0xff

    goto/16 :goto_1

    .line 29
    :cond_12
    iget v1, v6, Le/k/a/b/j;->a:I

    sget v5, Le/k/a/b/x/i;->m0:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    .line 30
    sget-object v1, Le/k/a/b/w/a;->f:[I

    .line 31
    aget v5, v1, v0

    if-nez v5, :cond_1a

    .line 32
    iget-object v5, v6, Le/k/a/b/x/i;->S:[I

    move v9, v2

    move-object v10, v5

    move v5, v9

    :goto_7
    if-ge v2, v3, :cond_13

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v0, v9

    move v9, v0

    goto :goto_8

    .line 33
    :cond_13
    array-length v2, v10

    if-lt v5, v2, :cond_14

    .line 34
    array-length v2, v10

    invoke-static {v10, v2}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v10

    iput-object v10, v6, Le/k/a/b/x/i;->S:[I

    :cond_14
    add-int/lit8 v2, v5, 0x1

    .line 35
    aput v9, v10, v5

    move v9, v0

    move v5, v2

    move v2, v7

    .line 36
    :goto_8
    iget v0, v6, Le/k/a/b/u/b;->o:I

    iget v11, v6, Le/k/a/b/u/b;->p:I

    if-lt v0, v11, :cond_16

    .line 37
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    .line 38
    :cond_15
    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {v6, v8, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v4

    .line 39
    :cond_16
    :goto_9
    iget-object v0, v6, Le/k/a/b/x/i;->Z:[B

    iget v11, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    .line 40
    aget v12, v1, v0

    if-eqz v12, :cond_19

    if-lez v2, :cond_18

    .line 41
    array-length v0, v10

    if-lt v5, v0, :cond_17

    .line 42
    array-length v0, v10

    invoke-static {v10, v0}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v0

    iput-object v0, v6, Le/k/a/b/x/i;->S:[I

    move-object v10, v0

    :cond_17
    add-int/lit8 v0, v5, 0x1

    .line 43
    aput v9, v10, v5

    move v5, v0

    .line 44
    :cond_18
    iget-object v0, v6, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v0, v10, v5}, Le/k/a/b/y/a;->o([II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 45
    invoke-virtual {v6, v10, v5, v2}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :goto_a
    return-object v1

    :cond_19
    add-int/lit8 v11, v11, 0x1

    .line 46
    iput v11, v6, Le/k/a/b/u/b;->o:I

    goto :goto_7

    :cond_1a
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 47
    invoke-virtual {v6, v0, v1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v4

    .line 48
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Le/k/a/b/x/i;->m3(I)I

    move-result v0

    int-to-char v0, v0

    const-string v1, "was expecting double-quote to start field name"

    .line 49
    invoke-virtual {v6, v0, v1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v4

    .line 50
    :cond_1c
    iget v0, v6, Le/k/a/b/u/b;->o:I

    add-int/lit8 v8, v0, 0xd

    iget v9, v6, Le/k/a/b/u/b;->p:I

    if-le v8, v9, :cond_20

    if-lt v0, v9, :cond_1e

    .line 51
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_b

    .line 52
    :cond_1d
    sget-object v0, Le/k/a/b/m;->n:Le/k/a/b/m;

    const-string v1, ": was expecting closing \'\"\' for name"

    invoke-virtual {v6, v1, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v4

    .line 53
    :cond_1e
    :goto_b
    iget-object v0, v6, Le/k/a/b/x/i;->Z:[B

    iget v2, v6, Le/k/a/b/u/b;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v2

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v5, :cond_1f

    goto :goto_c

    .line 54
    :cond_1f
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    .line 55
    :cond_20
    iget-object v4, v6, Le/k/a/b/x/i;->Z:[B

    .line 56
    sget-object v8, Le/k/a/b/x/i;->q0:[I

    add-int/lit8 v9, v0, 0x1

    .line 57
    iput v9, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 58
    aget v10, v8, v0

    if-nez v10, :cond_43

    add-int/lit8 v1, v9, 0x1

    .line 59
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    .line 60
    aget v10, v8, v9

    if-nez v10, :cond_41

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v9

    add-int/lit8 v9, v1, 0x1

    .line 61
    iput v9, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 62
    aget v10, v8, v1

    const/4 v11, 0x2

    if-nez v10, :cond_3f

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v9, 0x1

    .line 63
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    .line 64
    aget v10, v8, v9

    const/4 v12, 0x3

    if-nez v10, :cond_3d

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v9, v0

    add-int/lit8 v0, v1, 0x1

    .line 65
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 66
    aget v10, v8, v1

    if-nez v10, :cond_3b

    .line 67
    iput v9, v6, Le/k/a/b/x/i;->U:I

    add-int/lit8 v10, v0, 0x1

    .line 68
    iput v10, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 69
    aget v13, v8, v0

    if-eqz v13, :cond_22

    if-ne v0, v5, :cond_21

    .line 70
    invoke-virtual {v6, v9, v1, v7}, Le/k/a/b/x/i;->m4(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 71
    :cond_21
    invoke-virtual {v6, v9, v1, v0, v7}, Le/k/a/b/x/i;->s4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_22
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v10, 0x1

    .line 72
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    .line 73
    aget v13, v8, v10

    if-eqz v13, :cond_24

    if-ne v10, v5, :cond_23

    .line 74
    invoke-virtual {v6, v9, v0, v11}, Le/k/a/b/x/i;->m4(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 75
    :cond_23
    invoke-virtual {v6, v9, v0, v10, v11}, Le/k/a/b/x/i;->s4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_24
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v10

    add-int/lit8 v10, v1, 0x1

    .line 76
    iput v10, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 77
    aget v13, v8, v1

    if-eqz v13, :cond_26

    if-ne v1, v5, :cond_25

    .line 78
    invoke-virtual {v6, v9, v0, v12}, Le/k/a/b/x/i;->m4(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 79
    :cond_25
    invoke-virtual {v6, v9, v0, v1, v12}, Le/k/a/b/x/i;->s4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_26
    shl-int/lit8 v0, v0, 0x8

    or-int v13, v1, v0

    add-int/lit8 v0, v10, 0x1

    .line 80
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v10

    and-int/lit16 v10, v1, 0xff

    .line 81
    aget v1, v8, v10

    if-eqz v1, :cond_28

    if-ne v10, v5, :cond_27

    .line 82
    invoke-virtual {v6, v9, v13, v3}, Le/k/a/b/x/i;->m4(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 83
    :cond_27
    invoke-virtual {v6, v9, v13, v10, v3}, Le/k/a/b/x/i;->s4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_28
    add-int/lit8 v1, v0, 0x1

    .line 84
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v14, v0, 0xff

    .line 85
    aget v0, v8, v14

    if-eqz v0, :cond_2a

    if-ne v14, v5, :cond_29

    .line 86
    invoke-virtual {v6, v9, v13, v10, v7}, Le/k/a/b/x/i;->n4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_29
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v10

    move v4, v14

    .line 87
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->t4(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2a
    shl-int/lit8 v0, v10, 0x8

    or-int v10, v0, v14

    add-int/lit8 v0, v1, 0x1

    .line 88
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v1

    and-int/lit16 v14, v1, 0xff

    .line 89
    aget v1, v8, v14

    if-eqz v1, :cond_2c

    if-ne v14, v5, :cond_2b

    .line 90
    invoke-virtual {v6, v9, v13, v10, v11}, Le/k/a/b/x/i;->n4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2b
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v10

    move v4, v14

    .line 91
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->t4(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2c
    shl-int/lit8 v1, v10, 0x8

    or-int v10, v1, v14

    add-int/lit8 v1, v0, 0x1

    .line 92
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v14, v0, 0xff

    .line 93
    aget v0, v8, v14

    if-eqz v0, :cond_2e

    if-ne v14, v5, :cond_2d

    .line 94
    invoke-virtual {v6, v9, v13, v10, v12}, Le/k/a/b/x/i;->n4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2d
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v10

    move v4, v14

    .line 95
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->t4(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2e
    shl-int/lit8 v0, v10, 0x8

    or-int v10, v0, v14

    add-int/lit8 v0, v1, 0x1

    .line 96
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v1

    and-int/lit16 v14, v0, 0xff

    .line 97
    aget v0, v8, v14

    if-eqz v0, :cond_30

    if-ne v14, v5, :cond_2f

    .line 98
    invoke-virtual {v6, v9, v13, v10, v3}, Le/k/a/b/x/i;->n4(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_2f
    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v10

    move v4, v14

    .line 99
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->t4(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 100
    :cond_30
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    aput v9, v0, v2

    .line 101
    aput v13, v0, v7

    .line 102
    aput v10, v0, v11

    move v2, v12

    .line 103
    :goto_d
    iget v0, v6, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v0, 0x4

    iget v9, v6, Le/k/a/b/u/b;->p:I

    if-gt v1, v9, :cond_3a

    add-int/lit8 v1, v0, 0x1

    .line 104
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v9, v0, 0xff

    .line 105
    aget v0, v8, v9

    if-eqz v0, :cond_32

    if-ne v9, v5, :cond_31

    .line 106
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    invoke-virtual {v6, v0, v2, v14, v7}, Le/k/a/b/x/i;->o4([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 107
    :cond_31
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v3, v14

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_32
    shl-int/lit8 v0, v14, 0x8

    or-int/2addr v9, v0

    add-int/lit8 v0, v1, 0x1

    .line 108
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v1, v4, v1

    and-int/lit16 v10, v1, 0xff

    .line 109
    aget v1, v8, v10

    if-eqz v1, :cond_34

    if-ne v10, v5, :cond_33

    .line 110
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    invoke-virtual {v6, v0, v2, v9, v11}, Le/k/a/b/x/i;->o4([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 111
    :cond_33
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_34
    shl-int/lit8 v1, v9, 0x8

    or-int v9, v1, v10

    add-int/lit8 v1, v0, 0x1

    .line 112
    iput v1, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v0

    and-int/lit16 v10, v0, 0xff

    .line 113
    aget v0, v8, v10

    if-eqz v0, :cond_36

    if-ne v10, v5, :cond_35

    .line 114
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    invoke-virtual {v6, v0, v2, v9, v12}, Le/k/a/b/x/i;->o4([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 115
    :cond_35
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_36
    shl-int/lit8 v0, v9, 0x8

    or-int v9, v0, v10

    add-int/lit8 v0, v1, 0x1

    .line 116
    iput v0, v6, Le/k/a/b/u/b;->o:I

    aget-byte v0, v4, v1

    and-int/lit16 v14, v0, 0xff

    .line 117
    aget v0, v8, v14

    if-eqz v0, :cond_38

    if-ne v14, v5, :cond_37

    .line 118
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    invoke-virtual {v6, v0, v2, v9, v3}, Le/k/a/b/x/i;->o4([IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 119
    :cond_37
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v3, v9

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 120
    :cond_38
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    array-length v1, v0

    if-lt v2, v1, :cond_39

    .line 121
    invoke-static {v0, v2}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object v0

    iput-object v0, v6, Le/k/a/b/x/i;->S:[I

    .line 122
    :cond_39
    iget-object v0, v6, Le/k/a/b/x/i;->S:[I

    add-int/lit8 v1, v2, 0x1

    aput v9, v0, v2

    move v2, v1

    goto/16 :goto_d

    .line 123
    :cond_3a
    iget-object v1, v6, Le/k/a/b/x/i;->S:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_3b
    if-ne v1, v5, :cond_3c

    .line 124
    invoke-virtual {v6, v9, v3}, Le/k/a/b/x/i;->l4(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_3c
    invoke-virtual {v6, v9, v1, v3}, Le/k/a/b/x/i;->r4(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    if-ne v9, v5, :cond_3e

    .line 126
    invoke-virtual {v6, v0, v12}, Le/k/a/b/x/i;->l4(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_3e
    invoke-virtual {v6, v0, v9, v12}, Le/k/a/b/x/i;->r4(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    if-ne v1, v5, :cond_40

    .line 128
    invoke-virtual {v6, v0, v11}, Le/k/a/b/x/i;->l4(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_40
    invoke-virtual {v6, v0, v1, v11}, Le/k/a/b/x/i;->r4(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    if-ne v9, v5, :cond_42

    .line 130
    invoke-virtual {v6, v0, v7}, Le/k/a/b/x/i;->l4(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_42
    invoke-virtual {v6, v0, v9, v7}, Le/k/a/b/x/i;->r4(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    if-ne v0, v5, :cond_44

    return-object v1

    .line 132
    :cond_44
    invoke-virtual {v6, v2, v0, v2}, Le/k/a/b/x/i;->r4(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J3()Le/k/a/b/m;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->i()[C

    move-result-object v2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 2
    aput-char v0, v2, v1

    .line 3
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x39

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-gt v0, v3, :cond_2

    if-eq v0, v3, :cond_1

    .line 6
    invoke-virtual {p0, v0, v4}, Le/k/a/b/x/i;->u3(IZ)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/i;->i4()I

    move-result v0

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    .line 8
    invoke-virtual {p0, v0, v4}, Le/k/a/b/x/i;->u3(IZ)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v5, 0x2

    int-to-char v0, v0

    .line 9
    aput-char v0, v2, v4

    .line 10
    iget v0, p0, Le/k/a/b/u/b;->p:I

    iget v6, p0, Le/k/a/b/u/b;->o:I

    array-length v7, v2

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v4

    .line 11
    :goto_1
    iget v7, p0, Le/k/a/b/u/b;->o:I

    if-lt v7, v0, :cond_4

    .line 12
    invoke-virtual {p0, v2, v5, v4, v6}, Le/k/a/b/x/i;->K3([CIZI)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    .line 13
    :cond_4
    iget-object v8, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Le/k/a/b/u/b;->o:I

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v3, :cond_6

    if-le v7, v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v5, 0x1

    int-to-char v7, v7

    .line 14
    aput-char v7, v2, v5

    move v5, v8

    goto :goto_1

    :cond_6
    :goto_2
    const/16 v0, 0x2e

    if-eq v7, v0, :cond_9

    const/16 v0, 0x65

    if-eq v7, v0, :cond_9

    const/16 v0, 0x45

    if-ne v7, v0, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v9, v4

    .line 15
    iput v9, p0, Le/k/a/b/u/b;->o:I

    .line 16
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 17
    iput v5, v0, Le/k/a/b/a0/n;->i:I

    .line 18
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p0, v7}, Le/k/a/b/x/i;->j4(I)V

    .line 20
    :cond_8
    invoke-virtual {p0, v4, v6}, Le/k/a/b/u/b;->h3(ZI)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    const/4 v0, 0x1

    move-object v1, p0

    move v3, v5

    move v4, v7

    move v5, v0

    .line 21
    invoke-virtual/range {v1 .. v6}, Le/k/a/b/x/i;->G3([CIIZI)Le/k/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public K()Le/k/a/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/x/i;->Q:Le/k/a/b/n;

    return-object v0
.end method

.method public final K3([CIZI)Le/k/a/b/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    move v2, p2

    move v5, p4

    .line 1
    :goto_0
    iget p1, p0, Le/k/a/b/u/b;->o:I

    iget p2, p0, Le/k/a/b/u/b;->p:I

    const/4 p4, 0x0

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 3
    iput v2, p1, Le/k/a/b/a0/n;->i:I

    .line 4
    iput-boolean p3, p0, Le/k/a/b/u/b;->N:Z

    .line 5
    iput v5, p0, Le/k/a/b/u/b;->O:I

    .line 6
    iput p4, p0, Le/k/a/b/u/b;->D:I

    .line 7
    sget-object p1, Le/k/a/b/m;->q:Le/k/a/b/m;

    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Le/k/a/b/x/i;->Z:[B

    iget p2, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte p1, p1, p2

    and-int/lit16 v3, p1, 0xff

    const/16 p1, 0x39

    if-gt v3, p1, :cond_3

    const/16 p1, 0x30

    if-ge v3, p1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    array-length p1, v1

    if-lt v2, p1, :cond_2

    .line 10
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move-object v1, p1

    move v2, p4

    :cond_2
    add-int/lit8 p1, v2, 0x1

    int-to-char p2, v3

    .line 11
    aput-char p2, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, p1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v3, p1, :cond_6

    const/16 p1, 0x65

    if-eq v3, p1, :cond_6

    const/16 p1, 0x45

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 13
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 14
    iput v2, p1, Le/k/a/b/a0/n;->i:I

    .line 15
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {p1}, Le/k/a/b/l;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Le/k/a/b/x/i;->Z:[B

    iget p2, p0, Le/k/a/b/u/b;->o:I

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->j4(I)V

    .line 17
    :cond_5
    iput-boolean p3, p0, Le/k/a/b/u/b;->N:Z

    .line 18
    iput v5, p0, Le/k/a/b/u/b;->O:I

    .line 19
    iput p4, p0, Le/k/a/b/u/b;->D:I

    .line 20
    sget-object p1, Le/k/a/b/m;->q:Le/k/a/b/m;

    return-object p1

    :cond_6
    :goto_2
    move-object v0, p0

    move v4, p3

    .line 21
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->G3([CIIZI)Le/k/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public L0()Le/k/a/b/a0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/q;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/u/b;->P:Le/k/a/b/a0/i;

    return-object v0
.end method

.method public L3(I)Le/k/a/b/m;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->i()[C

    move-result-object v2

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->i4()I

    move-result p1

    :cond_0
    int-to-char p1, p1

    const/4 v1, 0x0

    .line 3
    aput-char p1, v2, v1

    .line 4
    iget p1, p0, Le/k/a/b/u/b;->p:I

    iget v3, p0, Le/k/a/b/u/b;->o:I

    array-length v4, v2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v4

    move v6, v3

    .line 5
    :goto_0
    iget v5, p0, Le/k/a/b/u/b;->o:I

    if-lt v5, p1, :cond_1

    .line 6
    invoke-virtual {p0, v2, v3, v1, v6}, Le/k/a/b/x/i;->K3([CIZI)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v7, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Le/k/a/b/u/b;->o:I

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    if-lt v5, v0, :cond_3

    const/16 v7, 0x39

    if-le v5, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v3, 0x1

    int-to-char v5, v5

    .line 8
    aput-char v5, v2, v3

    move v3, v7

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v5, p1, :cond_6

    const/16 p1, 0x65

    if-eq v5, p1, :cond_6

    const/16 p1, 0x45

    if-ne v5, p1, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr v8, v4

    .line 9
    iput v8, p0, Le/k/a/b/u/b;->o:I

    .line 10
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 11
    iput v3, p1, Le/k/a/b/a0/n;->i:I

    .line 12
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {p1}, Le/k/a/b/l;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0, v5}, Le/k/a/b/x/i;->j4(I)V

    .line 14
    :cond_5
    invoke-virtual {p0, v1, v6}, Le/k/a/b/u/b;->h3(ZI)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    move-object v1, p0

    move v4, v5

    move v5, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Le/k/a/b/x/i;->G3([CIIZI)Le/k/a/b/m;

    move-result-object p1

    return-object p1
.end method

.method public M3(Le/k/a/b/a;Ljava/io/OutputStream;[B)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    array-length v4, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 2
    :cond_0
    :goto_0
    iget v9, v0, Le/k/a/b/u/b;->o:I

    iget v10, v0, Le/k/a/b/u/b;->p:I

    if-lt v9, v10, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->x3()V

    .line 4
    :cond_1
    iget-object v9, v0, Le/k/a/b/x/i;->Z:[B

    iget v10, v0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Le/k/a/b/u/b;->o:I

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x20

    if-le v9, v10, :cond_0

    .line 5
    invoke-virtual {v1, v9}, Le/k/a/b/a;->f(I)I

    move-result v10

    const/16 v11, 0x22

    if-gez v10, :cond_3

    if-ne v9, v11, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-virtual {v0, v1, v9, v6}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v10

    if-gez v10, :cond_3

    goto :goto_0

    :cond_3
    if-le v7, v4, :cond_4

    add-int/2addr v8, v7

    .line 7
    invoke-virtual {v2, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    move v6, v7

    .line 8
    :goto_1
    iget v7, v0, Le/k/a/b/u/b;->o:I

    iget v9, v0, Le/k/a/b/u/b;->p:I

    if-lt v7, v9, :cond_5

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->x3()V

    .line 10
    :cond_5
    iget-object v7, v0, Le/k/a/b/x/i;->Z:[B

    iget v9, v0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Le/k/a/b/u/b;->o:I

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    .line 11
    invoke-virtual {v1, v7}, Le/k/a/b/a;->f(I)I

    move-result v9

    const/4 v12, 0x1

    if-gez v9, :cond_6

    .line 12
    invoke-virtual {v0, v1, v7, v12}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v9

    :cond_6
    shl-int/lit8 v7, v10, 0x6

    or-int/2addr v7, v9

    .line 13
    iget v9, v0, Le/k/a/b/u/b;->o:I

    iget v10, v0, Le/k/a/b/u/b;->p:I

    if-lt v9, v10, :cond_7

    .line 14
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->x3()V

    .line 15
    :cond_7
    iget-object v9, v0, Le/k/a/b/x/i;->Z:[B

    iget v10, v0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v13, v10, 0x1

    iput v13, v0, Le/k/a/b/u/b;->o:I

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 16
    invoke-virtual {v1, v9}, Le/k/a/b/a;->f(I)I

    move-result v10

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-gez v10, :cond_e

    if-eq v10, v13, :cond_a

    if-ne v9, v11, :cond_9

    shr-int/lit8 v4, v7, 0x4

    add-int/lit8 v5, v6, 0x1

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v3, v6

    .line 18
    iget-boolean v4, v1, Le/k/a/b/a;->g:Z

    if-nez v4, :cond_8

    move v7, v5

    goto/16 :goto_3

    .line 19
    :cond_8
    iget v2, v0, Le/k/a/b/u/b;->o:I

    sub-int/2addr v2, v12

    iput v2, v0, Le/k/a/b/u/b;->o:I

    .line 20
    invoke-virtual/range {p0 .. p1}, Le/k/a/b/u/b;->V2(Le/k/a/b/a;)V

    throw v14

    .line 21
    :cond_9
    invoke-virtual {v0, v1, v9, v15}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v9

    move v10, v9

    :cond_a
    if-ne v10, v13, :cond_e

    .line 22
    iget v9, v0, Le/k/a/b/u/b;->o:I

    iget v10, v0, Le/k/a/b/u/b;->p:I

    if-lt v9, v10, :cond_b

    .line 23
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->x3()V

    .line 24
    :cond_b
    iget-object v9, v0, Le/k/a/b/x/i;->Z:[B

    iget v10, v0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Le/k/a/b/u/b;->o:I

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 25
    invoke-virtual {v1, v9}, Le/k/a/b/a;->n(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 26
    invoke-virtual {v0, v1, v9, v5}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v10

    if-ne v10, v13, :cond_c

    goto :goto_2

    :cond_c
    const-string v2, "expected padding character \'"

    .line 27
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    iget-char v3, v1, Le/k/a/b/a;->e:C

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v9, v5, v2}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :cond_d
    :goto_2
    shr-int/lit8 v7, v7, 0x4

    add-int/lit8 v9, v6, 0x1

    int-to-byte v7, v7

    .line 30
    aput-byte v7, v3, v6

    const/4 v6, 0x0

    move v7, v9

    goto/16 :goto_0

    :cond_e
    shl-int/lit8 v5, v7, 0x6

    or-int/2addr v5, v10

    .line 31
    iget v7, v0, Le/k/a/b/u/b;->o:I

    iget v9, v0, Le/k/a/b/u/b;->p:I

    if-lt v7, v9, :cond_f

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/k/a/b/x/i;->x3()V

    .line 33
    :cond_f
    iget-object v7, v0, Le/k/a/b/x/i;->Z:[B

    iget v9, v0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Le/k/a/b/u/b;->o:I

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    .line 34
    invoke-virtual {v1, v7}, Le/k/a/b/a;->f(I)I

    move-result v9

    if-gez v9, :cond_14

    if-eq v9, v13, :cond_13

    if-ne v7, v11, :cond_12

    shr-int/lit8 v4, v5, 0x2

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 35
    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x1

    int-to-byte v4, v4

    .line 36
    aput-byte v4, v3, v5

    .line 37
    iget-boolean v4, v1, Le/k/a/b/a;->g:Z

    if-nez v4, :cond_11

    move v7, v6

    :goto_3
    const/4 v6, 0x0

    .line 38
    :goto_4
    iput-boolean v6, v0, Le/k/a/b/x/i;->T:Z

    if-lez v7, :cond_10

    add-int/2addr v8, v7

    .line 39
    invoke-virtual {v2, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    :cond_10
    return v8

    .line 40
    :cond_11
    iget v2, v0, Le/k/a/b/u/b;->o:I

    sub-int/2addr v2, v12

    iput v2, v0, Le/k/a/b/u/b;->o:I

    .line 41
    invoke-virtual/range {p0 .. p1}, Le/k/a/b/u/b;->V2(Le/k/a/b/a;)V

    throw v14

    :cond_12
    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 42
    invoke-virtual {v0, v1, v7, v10}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v7

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_5

    :cond_13
    const/4 v7, 0x0

    const/4 v10, 0x3

    :goto_5
    if-ne v9, v13, :cond_15

    shr-int/lit8 v5, v5, 0x2

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v11, v5, 0x8

    int-to-byte v11, v11

    .line 43
    aput-byte v11, v3, v6

    add-int/lit8 v6, v9, 0x1

    int-to-byte v5, v5

    .line 44
    aput-byte v5, v3, v9

    move v5, v10

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_14
    const/4 v7, 0x0

    const/4 v10, 0x3

    :cond_15
    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v9

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v11, v5, 0x10

    int-to-byte v11, v11

    .line 45
    aput-byte v11, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v11, v5, 0x8

    int-to-byte v11, v11

    .line 46
    aput-byte v11, v3, v9

    add-int/lit8 v9, v6, 0x1

    int-to-byte v5, v5

    .line 47
    aput-byte v5, v3, v6

    move v6, v7

    move v7, v9

    move v5, v10

    goto/16 :goto_0
.end method

.method public N3(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/b/u/c;->I2(I)V

    throw v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->O3(I)V

    throw v0
.end method

.method public O3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const-string v0, "Invalid UTF-8 start byte 0x"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public P()Le/k/a/b/h;
    .locals 9

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->s:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2
    new-instance v0, Le/k/a/b/h;

    invoke-virtual {p0}, Le/k/a/b/u/b;->U2()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Le/k/a/b/u/b;->q:J

    iget v1, p0, Le/k/a/b/u/b;->o:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget v7, p0, Le/k/a/b/u/b;->r:I

    const-wide/16 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public P2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/i;->Y:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    .line 3
    iget-boolean v0, v0, Le/k/a/b/w/b;->c:Z

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Le/k/a/b/j$a;->c:Le/k/a/b/j$a;

    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/k/a/b/x/i;->Y:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method public P3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const-string v0, "Invalid UTF-8 middle byte 0x"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public Q3(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    iput p2, p0, Le/k/a/b/u/b;->o:I

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->P3(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public R3(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/u/b;->c3()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/i;->S3(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public S2()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    const/4 v2, 0x0

    const-string v3, " in character escape sequence"

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p0, v3, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x62

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->m3(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Le/k/a/b/u/b;->W2(C)C

    return v0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_6

    .line 6
    iget v4, p0, Le/k/a/b/u/b;->o:I

    iget v5, p0, Le/k/a/b/u/b;->p:I

    if-lt v4, v5, :cond_4

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p0, v3, v0}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    .line 9
    :cond_4
    :goto_2
    iget-object v4, p0, Le/k/a/b/x/i;->Z:[B

    iget v5, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/k/a/b/u/b;->o:I

    aget-byte v4, v4, v5

    .line 10
    sget-object v5, Le/k/a/b/w/a;->i:[I

    and-int/lit16 v4, v4, 0xff

    aget v5, v5, v4

    if-ltz v5, :cond_5

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "expected a hex-digit for character escape sequence"

    .line 11
    invoke-virtual {p0, v4, v0}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    :cond_6
    int-to-char v0, v1

    return v0

    :cond_7
    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xd

    return v0

    :cond_9
    const/16 v0, 0xa

    return v0

    :cond_a
    const/16 v0, 0xc

    return v0

    :cond_b
    const/16 v0, 0x8

    return v0

    :cond_c
    int-to-char v0, v0

    return v0
.end method

.method public S3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    :goto_0
    iget p1, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_0
    iget-object p1, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte p1, p1, v1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->m3(I)I

    move-result p1

    int-to-char p1, p1

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "Unrecognized token \'%s\': was expecting %s"

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Le/k/a/b/u/c;->D2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final T3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iput v1, p0, Le/k/a/b/u/b;->o:I

    .line 4
    :cond_1
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 5
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iput v0, p0, Le/k/a/b/u/b;->s:I

    return-void
.end method

.method public U0()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->r3()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_2
    iget v1, v0, Le/k/a/b/m;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 7
    iget-object v0, v0, Le/k/a/b/m;->a:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 10
    iget-object v0, v0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final U3()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Le/k/a/b/u/b;->p:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 2
    invoke-virtual {p0, v3}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    aget-byte v2, v1, v0

    const/16 v4, 0x3a

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v2, v4, :cond_8

    add-int/2addr v0, v9

    .line 4
    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v1, v0

    if-le v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v9

    .line 5
    iput v0, p0, Le/k/a/b/u/b;->o:I

    return v2

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v2, v5, :cond_7

    :cond_4
    add-int/2addr v0, v9

    .line 7
    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v0

    if-le v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v9

    .line 8
    iput v0, p0, Le/k/a/b/u/b;->o:I

    return v1

    .line 9
    :cond_6
    :goto_1
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    .line 10
    :cond_7
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    :cond_8
    if-eq v2, v8, :cond_9

    if-ne v2, v5, :cond_a

    :cond_9
    add-int/2addr v0, v9

    .line 11
    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v1, v0

    :cond_a
    if-ne v2, v4, :cond_12

    .line 12
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/2addr v0, v9

    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v1, v0

    if-le v2, v8, :cond_d

    if-eq v2, v7, :cond_c

    if-ne v2, v6, :cond_b

    goto :goto_2

    :cond_b
    add-int/2addr v0, v9

    .line 13
    iput v0, p0, Le/k/a/b/u/b;->o:I

    return v2

    .line 14
    :cond_c
    :goto_2
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    :cond_d
    if-eq v2, v8, :cond_e

    if-ne v2, v5, :cond_11

    :cond_e
    add-int/2addr v0, v9

    .line 15
    iput v0, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v0

    if-le v1, v8, :cond_11

    if-eq v1, v7, :cond_10

    if-ne v1, v6, :cond_f

    goto :goto_3

    :cond_f
    add-int/2addr v0, v9

    .line 16
    iput v0, p0, Le/k/a/b/u/b;->o:I

    return v1

    .line 17
    :cond_10
    :goto_3
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    .line 18
    :cond_11
    invoke-virtual {p0, v9}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0

    .line 19
    :cond_12
    invoke-virtual {p0, v3}, Le/k/a/b/x/i;->V3(Z)I

    move-result v0

    return v0
.end method

.method public final V3(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, " within/between "

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    const/4 v4, 0x1

    if-le v0, v1, :cond_7

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->W3()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->g4()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_6

    move p1, v4

    goto :goto_0

    :cond_6
    const-string p1, "was expecting a colon to separate field name and value"

    .line 6
    invoke-virtual {p0, v0, p1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    :cond_7
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 7
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/2addr v0, v4

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 8
    iput v3, p0, Le/k/a/b/u/b;->s:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    goto :goto_0

    .line 10
    :cond_a
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    throw v2
.end method

.method public W0()[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-eqz v0, :cond_6

    .line 2
    iget v1, v0, Le/k/a/b/m;->d:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 3
    iget-object v0, v0, Le/k/a/b/m;->b:[C

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v3, p0, Le/k/a/b/x/i;->T:Z

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/i;->s3()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->n()[C

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-boolean v0, p0, Le/k/a/b/u/b;->A:Z

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 10
    iget-object v0, v0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 12
    iget-object v2, p0, Le/k/a/b/u/b;->z:[C

    if-nez v2, :cond_3

    .line 13
    iget-object v2, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    .line 14
    iget-object v4, v2, Le/k/a/b/w/b;->j:[C

    invoke-virtual {v2, v4}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v2, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Le/k/a/b/a0/a;->b(II)[C

    move-result-object v4

    iput-object v4, v2, Le/k/a/b/w/b;->j:[C

    .line 16
    iput-object v4, p0, Le/k/a/b/u/b;->z:[C

    goto :goto_0

    .line 17
    :cond_3
    array-length v2, v2

    if-ge v2, v1, :cond_4

    .line 18
    new-array v2, v1, [C

    iput-object v2, p0, Le/k/a/b/u/b;->z:[C

    .line 19
    :cond_4
    :goto_0
    iget-object v2, p0, Le/k/a/b/u/b;->z:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Le/k/a/b/u/b;->A:Z

    .line 21
    :cond_5
    iget-object v0, p0, Le/k/a/b/u/b;->z:[C

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public final W3()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v1, Le/k/a/b/x/i;->n0:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v3, p0, Le/k/a/b/u/b;->p:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v4, v2}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v3, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->X3()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_d

    .line 6
    sget-object v5, Le/k/a/b/w/a;->g:[I

    .line 7
    :cond_3
    :goto_1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v6, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v6, :cond_4

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    :cond_4
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v6, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 9
    aget v6, v5, v0

    if-eqz v6, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_c

    const/4 v8, 0x3

    if-eq v6, v8, :cond_b

    const/4 v8, 0x4

    if-eq v6, v8, :cond_a

    const/16 v8, 0xa

    if-eq v6, v8, :cond_9

    const/16 v8, 0xd

    if-eq v6, v8, :cond_8

    if-ne v6, v3, :cond_7

    .line 10
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v7, v0, :cond_6

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, v4, v2}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    .line 12
    :cond_6
    :goto_2
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v6, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v6

    if-ne v0, v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 13
    iput v6, p0, Le/k/a/b/u/b;->o:I

    :goto_3
    return-void

    .line 14
    :cond_7
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->N3(I)V

    throw v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_1

    .line 16
    :cond_9
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 17
    iput v7, p0, Le/k/a/b/u/b;->s:I

    goto :goto_1

    .line 18
    :cond_a
    invoke-virtual {p0}, Le/k/a/b/x/i;->b4()V

    goto :goto_1

    .line 19
    :cond_b
    invoke-virtual {p0}, Le/k/a/b/x/i;->a4()V

    goto :goto_1

    .line 20
    :cond_c
    invoke-virtual {p0}, Le/k/a/b/x/i;->Z3()V

    goto :goto_1

    :cond_d
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 21
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    :cond_e
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 22
    invoke-virtual {p0, v1, v0}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2
.end method

.method public final X3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/w/a;->g:[I

    .line 2
    :cond_0
    :goto_0
    iget v1, p0, Le/k/a/b/u/b;->o:I

    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_1
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    iget v2, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 4
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, v1}, Le/k/a/b/x/i;->N3(I)V

    const/4 v0, 0x0

    throw v0

    .line 6
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    return-void

    .line 7
    :cond_5
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 8
    iput v3, p0, Le/k/a/b/u/b;->s:I

    return-void

    .line 9
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/i;->b4()V

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0}, Le/k/a/b/x/i;->a4()V

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {p0}, Le/k/a/b/x/i;->Z3()V

    goto :goto_0
.end method

.method public Y3()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    .line 2
    sget-object v0, Le/k/a/b/x/i;->p0:[I

    .line 3
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    .line 4
    :goto_0
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 5
    iget v3, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v3, :cond_0

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 7
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 8
    iget v3, p0, Le/k/a/b/u/b;->p:I

    :cond_0
    :goto_1
    if-ge v2, v3, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 9
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 10
    aget v5, v0, v2

    if-eqz v5, :cond_7

    .line 11
    iput v4, p0, Le/k/a/b/u/b;->o:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    return-void

    .line 12
    :cond_1
    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    const-string v3, "string value"

    .line 13
    invoke-virtual {p0, v2, v3}, Le/k/a/b/u/b;->b3(ILjava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->N3(I)V

    const/4 v0, 0x0

    throw v0

    .line 15
    :cond_3
    invoke-virtual {p0}, Le/k/a/b/x/i;->b4()V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/x/i;->a4()V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0}, Le/k/a/b/x/i;->Z3()V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/i;->S2()C

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    .line 19
    :cond_8
    iput v2, p0, Le/k/a/b/u/b;->o:I

    goto :goto_0
.end method

.method public Z2()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/k/a/b/u/b;->Z2()V

    .line 2
    iget-object v0, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    .line 3
    iget-object v1, v0, Le/k/a/b/y/a;->a:Le/k/a/b/y/a;

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v2, v0, Le/k/a/b/y/a;->o:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Le/k/a/b/y/a$a;

    invoke-direct {v2, v0}, Le/k/a/b/y/a$a;-><init>(Le/k/a/b/y/a;)V

    .line 6
    iget v4, v2, Le/k/a/b/y/a$a;->b:I

    .line 7
    iget-object v5, v1, Le/k/a/b/y/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/b/y/a$a;

    .line 8
    iget v6, v5, Le/k/a/b/y/a$a;->b:I

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0x1770

    if-le v4, v6, :cond_1

    const/16 v2, 0x40

    .line 9
    invoke-static {v2}, Le/k/a/b/y/a$a;->a(I)Le/k/a/b/y/a$a;

    move-result-object v2

    .line 10
    :cond_1
    iget-object v1, v1, Le/k/a/b/y/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iput-boolean v3, v0, Le/k/a/b/y/a;->o:Z

    .line 12
    :cond_2
    iget-boolean v0, p0, Le/k/a/b/x/i;->g0:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    if-eqz v0, :cond_3

    .line 14
    sget-object v1, Le/k/a/b/u/c;->d:[B

    if-eq v0, v1, :cond_3

    .line 15
    iput-object v1, p0, Le/k/a/b/x/i;->Z:[B

    .line 16
    iget-object v1, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    invoke-virtual {v1, v0}, Le/k/a/b/w/b;->f([B)V

    :cond_3
    return-void
.end method

.method public final Z3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a4()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    return-void

    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_3
    and-int/lit16 v0, v0, 0xff

    .line 8
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3
.end method

.method public b2()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/k/a/b/u/b;->D:I

    .line 2
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/i;->D3()Le/k/a/b/m;

    return-object v2

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->Y3()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/i;->e4()I

    move-result v0

    if-gez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/u/b;->close()V

    .line 8
    iput-object v2, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v2

    .line 9
    :cond_2
    iput-object v2, p0, Le/k/a/b/u/b;->C:[B

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_3

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/i;->j3()V

    .line 11
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v2

    :cond_3
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_4

    .line 12
    invoke-virtual {p0}, Le/k/a/b/x/i;->k3()V

    .line 13
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v2

    .line 14
    :cond_4
    iget-object v5, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v5}, Le/k/a/b/x/d;->l()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_7

    .line 15
    invoke-virtual {p0}, Le/k/a/b/x/i;->c4()I

    move-result v0

    .line 16
    iget v5, p0, Le/k/a/b/j;->a:I

    sget v6, Le/k/a/b/x/i;->h0:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_8

    :cond_5
    if-ne v0, v4, :cond_6

    .line 17
    invoke-virtual {p0}, Le/k/a/b/x/i;->k3()V

    .line 18
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/i;->j3()V

    .line 20
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    :goto_0
    return-object v2

    :cond_7
    const-string v1, "was expecting comma to separate "

    .line 21
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v3}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    .line 22
    :cond_8
    iget-object v3, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v3}, Le/k/a/b/l;->e()Z

    move-result v3

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    .line 24
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->E3(I)Le/k/a/b/m;

    return-object v2

    .line 25
    :cond_9
    iget v2, p0, Le/k/a/b/u/b;->r:I

    iput v2, p0, Le/k/a/b/x/i;->W:I

    .line 26
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 27
    iput v2, p0, Le/k/a/b/x/i;->V:I

    .line 28
    iget v3, p0, Le/k/a/b/u/b;->s:I

    sub-int/2addr v2, v3

    iput v2, p0, Le/k/a/b/x/i;->X:I

    .line 29
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->I3(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v2, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v2, v0}, Le/k/a/b/x/d;->n(Ljava/lang/String;)V

    .line 31
    iput-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 32
    invoke-virtual {p0}, Le/k/a/b/x/i;->U3()I

    move-result v1

    .line 33
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    const/16 v2, 0x22

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Le/k/a/b/x/i;->T:Z

    .line 35
    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    iput-object v1, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    return-object v0

    :cond_a
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_11

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_10

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_f

    const/16 v2, 0x66

    if-eq v1, v2, :cond_e

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_d

    const/16 v2, 0x74

    if-eq v1, v2, :cond_c

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_b

    packed-switch v1, :pswitch_data_0

    .line 36
    invoke-virtual {p0, v1}, Le/k/a/b/x/i;->v3(I)Le/k/a/b/m;

    move-result-object v1

    goto :goto_1

    .line 37
    :pswitch_0
    invoke-virtual {p0, v1}, Le/k/a/b/x/i;->L3(I)Le/k/a/b/m;

    move-result-object v1

    goto :goto_1

    .line 38
    :cond_b
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    goto :goto_1

    .line 39
    :cond_c
    invoke-virtual {p0}, Le/k/a/b/x/i;->C3()V

    .line 40
    sget-object v1, Le/k/a/b/m;->s:Le/k/a/b/m;

    goto :goto_1

    .line 41
    :cond_d
    invoke-virtual {p0}, Le/k/a/b/x/i;->z3()V

    .line 42
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    goto :goto_1

    .line 43
    :cond_e
    invoke-virtual {p0}, Le/k/a/b/x/i;->y3()V

    .line 44
    sget-object v1, Le/k/a/b/m;->t:Le/k/a/b/m;

    goto :goto_1

    .line 45
    :cond_f
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    goto :goto_1

    .line 46
    :cond_10
    invoke-virtual {p0}, Le/k/a/b/x/i;->H3()Le/k/a/b/m;

    move-result-object v1

    goto :goto_1

    .line 47
    :cond_11
    invoke-virtual {p0}, Le/k/a/b/x/i;->J3()Le/k/a/b/m;

    move-result-object v1

    .line 48
    :goto_1
    iput-object v1, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b4()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    .line 7
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 9
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    return-void

    :cond_3
    and-int/lit16 v0, v0, 0xff

    .line 10
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_4
    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_5
    and-int/lit16 v0, v0, 0xff

    .line 12
    invoke-virtual {p0, v0, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3
.end method

.method public final c4()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-ge v0, v1, :cond_7

    .line 2
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 3
    iput v2, p0, Le/k/a/b/u/b;->o:I

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->d4()I

    move-result v0

    return v0

    :cond_3
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 5
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 6
    iput v2, p0, Le/k/a/b/u/b;->s:I

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 8
    :cond_6
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    const/4 v0, 0x0

    throw v0

    .line 9
    :cond_7
    invoke-virtual {p0}, Le/k/a/b/x/i;->d4()I

    move-result v0

    return v0
.end method

.method public final d4()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Unexpected end-of-input within/between "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v1}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Le/k/a/b/i;

    invoke-direct {v1, p0, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw v1

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/i;->W3()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/i;->g4()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 8
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 9
    iput v2, p0, Le/k/a/b/u/b;->s:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e4()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/u/b;->z2()V

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x23

    const/16 v3, 0x2f

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Le/k/a/b/u/b;->o:I

    .line 6
    invoke-virtual {p0}, Le/k/a/b/x/i;->f4()I

    move-result v0

    return v0

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x9

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_4

    .line 7
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 8
    iput v2, p0, Le/k/a/b/u/b;->s:I

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_5

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_1

    :cond_5
    if-ne v0, v6, :cond_6

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    throw v5

    .line 11
    :cond_7
    :goto_1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-ge v0, v2, :cond_e

    .line 12
    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-le v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_2

    :cond_8
    return v0

    :cond_9
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 13
    iput v9, p0, Le/k/a/b/u/b;->o:I

    .line 14
    invoke-virtual {p0}, Le/k/a/b/x/i;->f4()I

    move-result v0

    return v0

    :cond_a
    if-eq v0, v4, :cond_7

    if-ne v0, v8, :cond_b

    .line 15
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 16
    iput v9, p0, Le/k/a/b/u/b;->s:I

    goto :goto_1

    :cond_b
    if-ne v0, v7, :cond_c

    .line 17
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_1

    :cond_c
    if-ne v0, v6, :cond_d

    goto :goto_1

    .line 18
    :cond_d
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    throw v5

    .line 19
    :cond_e
    invoke-virtual {p0}, Le/k/a/b/x/i;->f4()I

    move-result v0

    return v0
.end method

.method public final f4()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/u/b;->z2()V

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Le/k/a/b/x/i;->W3()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->g4()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 6
    iget v0, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 7
    iput v2, p0, Le/k/a/b/u/b;->s:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 8
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 9
    :cond_8
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I2(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g4()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v1, Le/k/a/b/x/i;->o0:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/k/a/b/x/i;->X3()V

    const/4 v0, 0x1

    return v0
.end method

.method public h2()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/b/u/b;->A:Z

    .line 3
    iget-object v1, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    .line 4
    iput-object v2, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    .line 5
    iput-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 6
    sget-object v3, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v1, v3, :cond_1

    .line 7
    iget-boolean v1, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v1, :cond_0

    .line 8
    iput-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/i;->r3()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v1, p0, Le/k/a/b/u/b;->u:I

    iget v3, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {v0, v1, v3}, Le/k/a/b/x/d;->j(II)Le/k/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v1, v0, :cond_3

    .line 14
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    iget v1, p0, Le/k/a/b/u/b;->u:I

    iget v3, p0, Le/k/a/b/u/b;->v:I

    invoke-virtual {v0, v1, v3}, Le/k/a/b/x/d;->k(II)Le/k/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    :cond_3
    :goto_0
    return-object v2

    .line 15
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/x/i;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Le/k/a/b/x/i;->U0()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public final h4()V
    .locals 5

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->r:I

    iput v0, p0, Le/k/a/b/u/b;->u:I

    .line 2
    iget v0, p0, Le/k/a/b/u/b;->o:I

    .line 3
    iget-wide v1, p0, Le/k/a/b/u/b;->q:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Le/k/a/b/u/b;->t:J

    .line 4
    iget v1, p0, Le/k/a/b/u/b;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/u/b;->v:I

    return-void
.end method

.method public i2()Le/k/a/b/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->D3()Le/k/a/b/m;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/k/a/b/u/b;->D:I

    .line 4
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->Y3()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/i;->e4()I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Le/k/a/b/u/b;->close()V

    .line 8
    iput-object v2, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v2

    .line 9
    :cond_2
    iput-object v2, p0, Le/k/a/b/u/b;->C:[B

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_3

    .line 10
    invoke-virtual {p0}, Le/k/a/b/x/i;->j3()V

    .line 11
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0

    :cond_3
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_4

    .line 12
    invoke-virtual {p0}, Le/k/a/b/x/i;->k3()V

    .line 13
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0

    .line 14
    :cond_4
    iget-object v5, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v5}, Le/k/a/b/x/d;->l()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_7

    .line 15
    invoke-virtual {p0}, Le/k/a/b/x/i;->c4()I

    move-result v0

    .line 16
    iget v2, p0, Le/k/a/b/j;->a:I

    sget v5, Le/k/a/b/x/i;->h0:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_8

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_8

    :cond_5
    if-ne v0, v4, :cond_6

    .line 17
    invoke-virtual {p0}, Le/k/a/b/x/i;->k3()V

    .line 18
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/x/i;->j3()V

    .line 20
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    :goto_0
    return-object v0

    :cond_7
    const-string v1, "was expecting comma to separate "

    .line 21
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v3}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    .line 22
    :cond_8
    iget-object v2, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v2}, Le/k/a/b/l;->e()Z

    move-result v2

    if-nez v2, :cond_9

    .line 23
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    .line 24
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->E3(I)Le/k/a/b/m;

    move-result-object v0

    return-object v0

    .line 25
    :cond_9
    iget v2, p0, Le/k/a/b/u/b;->r:I

    iput v2, p0, Le/k/a/b/x/i;->W:I

    .line 26
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 27
    iput v2, p0, Le/k/a/b/x/i;->V:I

    .line 28
    iget v3, p0, Le/k/a/b/u/b;->s:I

    sub-int/2addr v2, v3

    iput v2, p0, Le/k/a/b/x/i;->X:I

    .line 29
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->I3(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v2, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v2, v0}, Le/k/a/b/x/d;->n(Ljava/lang/String;)V

    .line 31
    iput-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 32
    invoke-virtual {p0}, Le/k/a/b/x/i;->U3()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    .line 35
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    iput-object v0, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    .line 36
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0

    :cond_a
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_10

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x66

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_d

    const/16 v1, 0x74

    if-eq v0, v1, :cond_c

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->v3(I)Le/k/a/b/m;

    move-result-object v0

    goto :goto_1

    .line 38
    :pswitch_0
    invoke-virtual {p0, v0}, Le/k/a/b/x/i;->L3(I)Le/k/a/b/m;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_b
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    goto :goto_1

    .line 40
    :cond_c
    invoke-virtual {p0}, Le/k/a/b/x/i;->C3()V

    .line 41
    sget-object v0, Le/k/a/b/m;->s:Le/k/a/b/m;

    goto :goto_1

    .line 42
    :cond_d
    invoke-virtual {p0}, Le/k/a/b/x/i;->z3()V

    .line 43
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    goto :goto_1

    .line 44
    :cond_e
    invoke-virtual {p0}, Le/k/a/b/x/i;->y3()V

    .line 45
    sget-object v0, Le/k/a/b/m;->t:Le/k/a/b/m;

    goto :goto_1

    .line 46
    :cond_f
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    goto :goto_1

    .line 47
    :cond_10
    invoke-virtual {p0}, Le/k/a/b/x/i;->H3()Le/k/a/b/m;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_11
    invoke-virtual {p0}, Le/k/a/b/x/i;->J3()Le/k/a/b/m;

    move-result-object v0

    .line 49
    :goto_1
    iput-object v0, p0, Le/k/a/b/u/b;->x:Le/k/a/b/m;

    .line 50
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i3(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Le/k/a/b/x/i;->m3(I)I

    move-result p3

    int-to-char p3, p3

    .line 2
    invoke-static {p3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->R3(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final i4()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_8

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget v4, p0, Le/k/a/b/j;->a:I

    sget v5, Le/k/a/b/x/i;->i0:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Le/k/a/b/u/b;->o:I

    if-ne v0, v2, :cond_6

    .line 5
    :cond_2
    iget v1, p0, Le/k/a/b/u/b;->o:I

    iget v4, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v4, :cond_3

    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    :cond_3
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_5

    if-le v0, v3, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Le/k/a/b/u/b;->o:I

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v0

    :cond_7
    const-string v0, "Invalid numeric value: "

    const-string v1, "Leading zeroes not allowed"

    .line 8
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Le/k/a/b/i;

    invoke-direct {v1, p0, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 10
    throw v1

    :cond_8
    :goto_2
    return v2
.end method

.method public j1()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget v2, v0, Le/k/a/b/m;->d:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v1, 0x7

    if-eq v2, v1, :cond_1

    const/16 v1, 0x8

    if-eq v2, v1, :cond_1

    .line 3
    iget-object v0, v0, Le/k/a/b/m;->b:[C

    .line 4
    array-length v0, v0

    return v0

    .line 5
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v1, p0, Le/k/a/b/x/i;->T:Z

    .line 7
    invoke-virtual {p0}, Le/k/a/b/x/i;->s3()V

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->r()I

    move-result v0

    return v0

    .line 9
    :cond_2
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 10
    iget-object v0, v0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public final j3()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/x/d;->i()Le/k/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    return-void

    :cond_0
    const/16 v0, 0x5d

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/b;->a3(IC)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j4(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->o:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    .line 2
    invoke-virtual {p0, p1, v0}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/i;->T3()V

    return-void

    .line 4
    :cond_2
    iget p1, p0, Le/k/a/b/u/b;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/k/a/b/u/b;->r:I

    .line 5
    iput v0, p0, Le/k/a/b/u/b;->s:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final k3()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/x/i;->h4()V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/x/d;->i()Le/k/a/b/x/d;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    return-void

    :cond_0
    const/16 v0, 0x7d

    const/16 v1, 0x5d

    .line 4
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/b;->a3(IC)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k4([III)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v7, 0x3

    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v2, -0x1

    .line 1
    aget v9, v1, v8

    rsub-int/lit8 v10, v3, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    .line 2
    aput v10, v1, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 3
    :goto_0
    iget-object v8, v0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v8}, Le/k/a/b/a0/n;->i()[C

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v4, :cond_d

    shr-int/lit8 v12, v10, 0x2

    .line 4
    aget v12, v1, v12

    and-int/lit8 v13, v10, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v7

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x7f

    if-le v12, v13, :cond_b

    and-int/lit16 v13, v12, 0xe0

    const/16 v14, 0xc0

    const/4 v6, 0x1

    if-ne v13, v14, :cond_1

    and-int/lit8 v12, v12, 0x1f

    move v13, v6

    goto :goto_2

    :cond_1
    and-int/lit16 v13, v12, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_2

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x2

    goto :goto_2

    :cond_2
    and-int/lit16 v13, v12, 0xf8

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_a

    and-int/lit8 v12, v12, 0x7

    move v13, v7

    :goto_2
    add-int v14, v10, v13

    if-gt v14, v4, :cond_9

    shr-int/lit8 v14, v10, 0x2

    .line 5
    aget v14, v1, v14

    and-int/lit8 v16, v10, 0x3

    rsub-int/lit8 v16, v16, 0x3

    shl-int/lit8 v16, v16, 0x3

    shr-int v14, v14, v16

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v15, v14, 0xc0

    const/16 v5, 0x80

    if-ne v15, v5, :cond_8

    shl-int/lit8 v12, v12, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v12, v14

    if-le v13, v6, :cond_6

    shr-int/lit8 v6, v10, 0x2

    .line 6
    aget v6, v1, v6

    and-int/lit8 v14, v10, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v6, v14

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v14, v6, 0xc0

    if-ne v14, v5, :cond_5

    shl-int/lit8 v12, v12, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v12

    const/4 v12, 0x2

    if-le v13, v12, :cond_4

    shr-int/lit8 v12, v10, 0x2

    .line 7
    aget v12, v1, v12

    and-int/lit8 v14, v10, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v14, v12, 0xc0

    if-ne v14, v5, :cond_3

    shl-int/lit8 v5, v6, 0x6

    and-int/lit8 v6, v12, 0x3f

    or-int/2addr v5, v6

    move v12, v5

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v12, 0xff

    .line 8
    invoke-virtual {v0, v1}, Le/k/a/b/x/i;->P3(I)V

    const/4 v5, 0x0

    throw v5

    :cond_4
    move v5, v12

    move v12, v6

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 9
    invoke-virtual {v0, v6}, Le/k/a/b/x/i;->P3(I)V

    throw v5

    :cond_6
    :goto_3
    const/4 v5, 0x2

    :goto_4
    if-le v13, v5, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v12, v5

    .line 10
    array-length v5, v8

    if-lt v11, v5, :cond_7

    .line 11
    iget-object v5, v0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v5}, Le/k/a/b/a0/n;->k()[C

    move-result-object v5

    move-object v8, v5

    :cond_7
    add-int/lit8 v5, v11, 0x1

    const v6, 0xd800

    shr-int/lit8 v13, v12, 0xa

    add-int/2addr v13, v6

    int-to-char v6, v13

    .line 12
    aput-char v6, v8, v11

    const v6, 0xdc00

    and-int/lit16 v11, v12, 0x3ff

    or-int v12, v11, v6

    move v11, v5

    goto :goto_5

    .line 13
    :cond_8
    invoke-virtual {v0, v14}, Le/k/a/b/x/i;->P3(I)V

    const/4 v1, 0x0

    throw v1

    :cond_9
    const/4 v1, 0x0

    .line 14
    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    const-string v3, " in field name"

    invoke-virtual {v0, v3, v2}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v1

    :cond_a
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v12}, Le/k/a/b/x/i;->O3(I)V

    throw v1

    .line 16
    :cond_b
    :goto_5
    array-length v5, v8

    if-lt v11, v5, :cond_c

    .line 17
    iget-object v5, v0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v5}, Le/k/a/b/a0/n;->k()[C

    move-result-object v5

    move-object v8, v5

    :cond_c
    add-int/lit8 v5, v11, 0x1

    int-to-char v6, v12

    .line 18
    aput-char v6, v8, v11

    move v11, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 19
    :cond_d
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v3, v5, :cond_e

    add-int/lit8 v3, v2, -0x1

    .line 20
    aput v9, v1, v3

    .line 21
    :cond_e
    iget-object v3, v0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v3, v4, v1, v2}, Le/k/a/b/y/a;->g(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public l1()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v0, v0, Le/k/a/b/m;->d:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Le/k/a/b/x/i;->T:Z

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->s3()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->o()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final l3(Le/k/a/b/a;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/u/b;->T2()Le/k/a/b/a0/c;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    iget v1, p0, Le/k/a/b/u/b;->o:I

    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 4
    :cond_1
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    iget v2, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Le/k/a/b/a;->f(I)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 6
    invoke-virtual {v0}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v2}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v1, p0, Le/k/a/b/u/b;->o:I

    iget v4, p0, Le/k/a/b/u/b;->p:I

    if-lt v1, v4, :cond_4

    .line 9
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 10
    :cond_4
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    iget v4, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 11
    invoke-virtual {p1, v1}, Le/k/a/b/a;->f(I)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    .line 12
    invoke-virtual {p0, p1, v1, v5}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 13
    iget v2, p0, Le/k/a/b/u/b;->o:I

    iget v4, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v4, :cond_6

    .line 14
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 15
    :cond_6
    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    iget v4, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 16
    invoke-virtual {p1, v2}, Le/k/a/b/a;->f(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x2

    if-gez v4, :cond_d

    if-eq v4, v9, :cond_9

    if-ne v2, v3, :cond_8

    shr-int/lit8 v1, v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Le/k/a/b/a0/c;->d(I)V

    .line 18
    iget-boolean v1, p1, Le/k/a/b/a;->g:Z

    if-nez v1, :cond_7

    .line 19
    invoke-virtual {v0}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1

    .line 20
    :cond_7
    iget v0, p0, Le/k/a/b/u/b;->o:I

    sub-int/2addr v0, v5

    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 21
    invoke-virtual {p0, p1}, Le/k/a/b/u/b;->V2(Le/k/a/b/a;)V

    throw v6

    .line 22
    :cond_8
    invoke-virtual {p0, p1, v2, v8}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v2

    move v4, v2

    :cond_9
    if-ne v4, v9, :cond_d

    .line 23
    iget v2, p0, Le/k/a/b/u/b;->o:I

    iget v3, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v3, :cond_a

    .line 24
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 25
    :cond_a
    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    iget v3, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 26
    invoke-virtual {p1, v2}, Le/k/a/b/a;->n(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 27
    invoke-virtual {p0, p1, v2, v7}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v3

    if-ne v3, v9, :cond_b

    goto :goto_1

    :cond_b
    const-string v0, "expected padding character \'"

    .line 28
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    iget-char v1, p1, Le/k/a/b/a;->e:C

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v7, v0}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_c
    :goto_1
    shr-int/lit8 v1, v1, 0x4

    .line 31
    invoke-virtual {v0, v1}, Le/k/a/b/a0/c;->d(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 32
    iget v2, p0, Le/k/a/b/u/b;->o:I

    iget v4, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v4, :cond_e

    .line 33
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 34
    :cond_e
    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    iget v4, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v10, v4, 0x1

    iput v10, p0, Le/k/a/b/u/b;->o:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 35
    invoke-virtual {p1, v2}, Le/k/a/b/a;->f(I)I

    move-result v4

    if-gez v4, :cond_12

    if-eq v4, v9, :cond_11

    if-ne v2, v3, :cond_10

    shr-int/2addr v1, v8

    .line 36
    invoke-virtual {v0, v1}, Le/k/a/b/a0/c;->k(I)V

    .line 37
    iget-boolean v1, p1, Le/k/a/b/a;->g:Z

    if-nez v1, :cond_f

    .line 38
    invoke-virtual {v0}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1

    .line 39
    :cond_f
    iget v0, p0, Le/k/a/b/u/b;->o:I

    sub-int/2addr v0, v5

    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 40
    invoke-virtual {p0, p1}, Le/k/a/b/u/b;->V2(Le/k/a/b/a;)V

    throw v6

    .line 41
    :cond_10
    invoke-virtual {p0, p1, v2, v7}, Le/k/a/b/u/b;->R2(Le/k/a/b/a;II)I

    move-result v2

    move v4, v2

    :cond_11
    if-ne v4, v9, :cond_12

    shr-int/lit8 v1, v1, 0x2

    .line 42
    invoke-virtual {v0, v1}, Le/k/a/b/a0/c;->k(I)V

    goto/16 :goto_0

    :cond_12
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 43
    invoke-virtual {v0, v1}, Le/k/a/b/a0/c;->j(I)V

    goto/16 :goto_0
.end method

.method public final l4(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Le/k/a/b/x/i;->F3(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v0, p1}, Le/k/a/b/y/a;->l(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->S:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m1()Le/k/a/b/h;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v2, :cond_0

    .line 2
    iget-wide v1, v0, Le/k/a/b/u/b;->q:J

    iget v3, v0, Le/k/a/b/x/i;->V:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    add-long v7, v1, v3

    .line 3
    new-instance v1, Le/k/a/b/h;

    invoke-virtual/range {p0 .. p0}, Le/k/a/b/u/b;->U2()Ljava/lang/Object;

    move-result-object v6

    const-wide/16 v9, -0x1

    iget v11, v0, Le/k/a/b/x/i;->W:I

    iget v12, v0, Le/k/a/b/x/i;->X:I

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JJII)V

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Le/k/a/b/h;

    invoke-virtual/range {p0 .. p0}, Le/k/a/b/u/b;->U2()Ljava/lang/Object;

    move-result-object v14

    iget-wide v2, v0, Le/k/a/b/u/b;->t:J

    const-wide/16 v4, 0x1

    sub-long v15, v2, v4

    const-wide/16 v17, -0x1

    iget v2, v0, Le/k/a/b/u/b;->u:I

    iget v3, v0, Le/k/a/b/u/b;->v:I

    move-object v13, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JJII)V

    return-object v1
.end method

.method public m3(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_6

    and-int/lit16 v0, p1, 0xe0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_0

    and-int/lit8 p1, p1, 0x1f

    move v0, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_1

    and-int/lit8 p1, p1, 0xf

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0xf8

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    .line 1
    :goto_0
    invoke-virtual {p0}, Le/k/a/b/x/i;->p4()I

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    if-le v0, v2, :cond_6

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->p4()I

    move-result v2

    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v6, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    if-le v0, v1, :cond_6

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/i;->p4()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v6, :cond_2

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    goto :goto_1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->P3(I)V

    throw v3

    :cond_3
    and-int/lit16 p1, v2, 0xff

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->P3(I)V

    throw v3

    :cond_4
    and-int/lit16 p1, v4, 0xff

    .line 6
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->P3(I)V

    throw v3

    :cond_5
    and-int/lit16 p1, p1, 0xff

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->O3(I)V

    throw v3

    :cond_6
    :goto_1
    return p1
.end method

.method public final m4(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Le/k/a/b/x/i;->F3(II)I

    move-result p2

    .line 2
    iget-object v0, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v0, p1, p2}, Le/k/a/b/y/a;->m(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->S:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 4
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, v0, p1, p3}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n3(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_1
    and-int/lit16 p1, v0, 0xff

    .line 4
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final n4(IIII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Le/k/a/b/x/i;->F3(II)I

    move-result p3

    .line 2
    iget-object v0, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/b/y/a;->n(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->S:[I

    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 5
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 6
    invoke-static {p3, p4}, Le/k/a/b/x/i;->F3(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, v0, p1, p4}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final o3(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 3
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    .line 7
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_3
    and-int/lit16 p1, v0, 0xff

    .line 8
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3
.end method

.method public final o4([IIII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 3
    invoke-static {p3, p4}, Le/k/a/b/x/i;->F3(II)I

    move-result p3

    aput p3, p1, p2

    .line 4
    iget-object p2, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {p2, p1, v0}, Le/k/a/b/y/a;->o([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0, p4}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final p3(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0xf

    .line 1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v1, v0, v1

    and-int/lit16 v3, v1, 0xc0

    const/4 v4, 0x0

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 2
    iput v1, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v5, :cond_0

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_0
    and-int/lit16 p1, v0, 0xff

    .line 3
    invoke-virtual {p0, p1, v1}, Le/k/a/b/x/i;->Q3(II)V

    throw v4

    :cond_1
    and-int/lit16 p1, v1, 0xff

    .line 4
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v4
.end method

.method public final p4()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final q3(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 7
    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 9
    :cond_2
    iget-object v0, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1

    :cond_3
    and-int/lit16 p1, v0, 0xff

    .line 10
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_4
    and-int/lit16 p1, v0, 0xff

    .line 11
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3

    :cond_5
    and-int/lit16 p1, v0, 0xff

    .line 12
    invoke-virtual {p0, p1, v2}, Le/k/a/b/x/i;->Q3(II)V

    throw v3
.end method

.method public final q4([IIIII)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/x/i;->q0:[I

    .line 2
    :goto_0
    aget v1, v0, p4

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const/16 v1, 0x22

    if-ne p4, v1, :cond_3

    if-lez p5, :cond_1

    .line 3
    array-length p4, p1

    if-lt p2, p4, :cond_0

    .line 4
    array-length p4, p1

    invoke-static {p1, p4}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    :cond_0
    add-int/lit8 p4, p2, 0x1

    .line 5
    invoke-static {p3, p5}, Le/k/a/b/x/i;->F3(II)I

    move-result p3

    aput p3, p1, p2

    move p2, p4

    .line 6
    :cond_1
    iget-object p3, p0, Le/k/a/b/x/i;->R:Le/k/a/b/y/a;

    invoke-virtual {p3, p1, p2}, Le/k/a/b/y/a;->o([II)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2, p5}, Le/k/a/b/x/i;->k4([III)Ljava/lang/String;

    move-result-object p3

    :cond_2
    return-object p3

    :cond_3
    const/16 v1, 0x5c

    if-eq p4, v1, :cond_4

    const-string v1, "name"

    .line 8
    invoke-virtual {p0, p4, v1}, Le/k/a/b/u/b;->b3(ILjava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/x/i;->S2()C

    move-result p4

    :goto_1
    const/16 v1, 0x7f

    if-le p4, v1, :cond_a

    const/4 v1, 0x0

    if-lt p5, v2, :cond_6

    .line 10
    array-length p5, p1

    if-lt p2, p5, :cond_5

    .line 11
    array-length p5, p1

    invoke-static {p1, p5}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    :cond_5
    add-int/lit8 p5, p2, 0x1

    .line 12
    aput p3, p1, p2

    move p2, p5

    move p3, v1

    move p5, p3

    :cond_6
    const/16 v4, 0x800

    if-ge p4, v4, :cond_7

    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v1, p4, 0x6

    or-int/lit16 v1, v1, 0xc0

    or-int/2addr p3, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_7
    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int/2addr p3, v4

    add-int/lit8 p5, p5, 0x1

    if-lt p5, v2, :cond_9

    .line 13
    array-length p5, p1

    if-lt p2, p5, :cond_8

    .line 14
    array-length p5, p1

    invoke-static {p1, p5}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    :cond_8
    add-int/lit8 p5, p2, 0x1

    .line 15
    aput p3, p1, p2

    move p2, p5

    move p5, v1

    goto :goto_2

    :cond_9
    move v1, p3

    :goto_2
    shl-int/lit8 p3, v1, 0x8

    shr-int/lit8 v1, p4, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    or-int/2addr p3, v1

    add-int/2addr p5, v3

    :goto_3
    and-int/lit8 p4, p4, 0x3f

    or-int/lit16 p4, p4, 0x80

    :cond_a
    if-ge p5, v2, :cond_b

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p3, p4

    goto :goto_4

    .line 16
    :cond_b
    array-length p5, p1

    if-lt p2, p5, :cond_c

    .line 17
    array-length p5, p1

    invoke-static {p1, p5}, Le/k/a/b/u/b;->e3([II)[I

    move-result-object p1

    iput-object p1, p0, Le/k/a/b/x/i;->S:[I

    :cond_c
    add-int/lit8 p5, p2, 0x1

    .line 18
    aput p3, p1, p2

    move p3, p4

    move p2, p5

    move p5, v3

    .line 19
    :goto_4
    iget p4, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt p4, v1, :cond_e

    .line 20
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result p4

    if-eqz p4, :cond_d

    goto :goto_5

    .line 21
    :cond_d
    sget-object p1, Le/k/a/b/m;->n:Le/k/a/b/m;

    const-string p2, " in field name"

    invoke-virtual {p0, p2, p1}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    const/4 p1, 0x0

    throw p1

    .line 22
    :cond_e
    :goto_5
    iget-object p4, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte p4, p4, v1

    and-int/lit16 p4, p4, 0xff

    goto/16 :goto_0
.end method

.method public r2(Le/k/a/b/a;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/x/i;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    invoke-virtual {v0}, Le/k/a/b/w/b;->d()[B

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/b/x/i;->M3(Le/k/a/b/a;Ljava/io/OutputStream;[B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    invoke-virtual {p2, v0}, Le/k/a/b/w/b;->e([B)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    invoke-virtual {p2, v0}, Le/k/a/b/w/b;->e([B)V

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Le/k/a/b/x/i;->I(Le/k/a/b/a;)[B

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    array-length p1, p1

    return p1
.end method

.method public r3()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    .line 2
    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->o:I

    .line 5
    :cond_0
    iget-object v1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v1}, Le/k/a/b/a0/n;->i()[C

    move-result-object v1

    .line 6
    sget-object v2, Le/k/a/b/x/i;->p0:[I

    .line 7
    iget v3, p0, Le/k/a/b/u/b;->p:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    iget-object v4, p0, Le/k/a/b/x/i;->Z:[B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v0, v3, :cond_4

    .line 9
    aget-byte v7, v4, v0

    and-int/lit16 v7, v7, 0xff

    .line 10
    aget v8, v2, v7

    if-eqz v8, :cond_3

    const/16 v2, 0x22

    if-ne v7, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 12
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 13
    iput v6, v0, Le/k/a/b/a0/n;->i:I

    .line 14
    iget v1, v0, Le/k/a/b/a0/n;->g:I

    if-lez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Le/k/a/b/a0/n;->h:[C

    invoke-direct {v1, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 17
    :goto_1
    iput-object v1, v0, Le/k/a/b/a0/n;->j:Ljava/lang/String;

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    .line 18
    aput-char v7, v1, v6

    move v6, v8

    goto :goto_0

    .line 19
    :cond_4
    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 20
    invoke-virtual {p0, v1, v6}, Le/k/a/b/x/i;->t3([CI)V

    .line 21
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r4(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Le/k/a/b/x/i;->S:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s1()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Le/k/a/b/u/c;->z1(I)I

    move-result v0

    return v0

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Le/k/a/b/u/b;->X2()I

    move-result v0

    return v0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Le/k/a/b/u/b;->d3()V

    .line 7
    :cond_3
    iget v0, p0, Le/k/a/b/u/b;->E:I

    return v0
.end method

.method public s3()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    .line 2
    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->o:I

    :cond_0
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v2}, Le/k/a/b/a0/n;->i()[C

    move-result-object v2

    .line 6
    sget-object v3, Le/k/a/b/x/i;->p0:[I

    .line 7
    iget v4, p0, Le/k/a/b/u/b;->p:I

    array-length v5, v2

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8
    iget-object v5, p0, Le/k/a/b/x/i;->Z:[B

    :goto_0
    if-ge v0, v4, :cond_2

    .line 9
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    .line 10
    aget v7, v3, v6

    if-eqz v7, :cond_1

    const/16 v3, 0x22

    if-ne v6, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 12
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 13
    iput v1, v0, Le/k/a/b/a0/n;->i:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v1, 0x1

    int-to-char v6, v6

    .line 14
    aput-char v6, v2, v1

    move v1, v7

    goto :goto_0

    .line 15
    :cond_2
    iput v0, p0, Le/k/a/b/u/b;->o:I

    .line 16
    invoke-virtual {p0, v2, v1}, Le/k/a/b/x/i;->t3([CI)V

    return-void
.end method

.method public final s4(IIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Le/k/a/b/x/i;->S:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t3([CI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/x/i;->p0:[I

    .line 2
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    .line 3
    :goto_0
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 4
    iget v3, p0, Le/k/a/b/u/b;->p:I

    if-lt v2, v3, :cond_0

    .line 5
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 6
    iget v2, p0, Le/k/a/b/u/b;->o:I

    .line 7
    :cond_0
    array-length v3, p1

    const/4 v4, 0x0

    if-lt p2, v3, :cond_1

    .line 8
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move p2, v4

    .line 9
    :cond_1
    iget v3, p0, Le/k/a/b/u/b;->p:I

    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_c

    add-int/lit8 v5, v2, 0x1

    .line 10
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 11
    aget v6, v0, v2

    if-eqz v6, :cond_b

    .line 12
    iput v5, p0, Le/k/a/b/u/b;->o:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    .line 13
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 14
    iput p2, p1, Le/k/a/b/a0/n;->i:I

    return-void

    .line 15
    :cond_2
    aget v3, v0, v2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    const/4 v7, 0x3

    if-eq v3, v7, :cond_6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string v3, "string value"

    .line 16
    invoke-virtual {p0, v2, v3}, Le/k/a/b/u/b;->b3(ILjava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->N3(I)V

    const/4 p1, 0x0

    throw p1

    .line 18
    :cond_4
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->q3(I)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    const v5, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v5, v6

    int-to-char v5, v5

    .line 19
    aput-char v5, p1, p2

    .line 20
    array-length p2, p1

    if-lt v3, p2, :cond_5

    .line 21
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_2
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    goto :goto_3

    .line 22
    :cond_6
    iget v3, p0, Le/k/a/b/u/b;->p:I

    sub-int/2addr v3, v5

    if-lt v3, v6, :cond_7

    .line 23
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->p3(I)I

    move-result v2

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->o3(I)I

    move-result v2

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p0, v2}, Le/k/a/b/x/i;->n3(I)I

    move-result v2

    goto :goto_3

    .line 26
    :cond_9
    invoke-virtual {p0}, Le/k/a/b/x/i;->S2()C

    move-result v2

    .line 27
    :goto_3
    array-length v3, p1

    if-lt p2, v3, :cond_a

    .line 28
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    goto :goto_4

    :cond_a
    move v4, p2

    :goto_4
    add-int/lit8 p2, v4, 0x1

    int-to-char v2, v2

    .line 29
    aput-char v2, p1, v4

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, p2, 0x1

    int-to-char v2, v2

    .line 30
    aput-char v2, p1, p2

    move v2, v5

    move p2, v6

    goto/16 :goto_1

    .line 31
    :cond_c
    iput v2, p0, Le/k/a/b/u/b;->o:I

    goto/16 :goto_0
.end method

.method public final t4(IIIII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Le/k/a/b/x/i;->S:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 p1, 0x1

    .line 2
    aput p2, v1, p1

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/i;->q4([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u3(IZ)Le/k/a/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x49

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 1
    iget p1, p0, Le/k/a/b/u/b;->o:I

    iget v0, p0, Le/k/a/b/u/b;->p:I

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/b/u/c;->G2(Le/k/a/b/m;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Le/k/a/b/x/i;->Z:[B

    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte p1, p1, v0

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    goto :goto_1

    :cond_3
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_4

    const-string p1, "-Infinity"

    goto :goto_1

    :cond_4
    const-string p1, "+Infinity"

    :goto_1
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/i;->A3(Ljava/lang/String;I)V

    .line 6
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v2, Le/k/a/b/x/i;->j0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 7
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Le/k/a/b/u/b;->g3(Ljava/lang/String;D)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p2, "Non-standard token \'%s\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 8
    invoke-virtual {p0, p2, p1}, Le/k/a/b/u/c;->C2(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1

    :cond_7
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 9
    invoke-virtual {p0, p1, p2}, Le/k/a/b/u/c;->N2(ILjava/lang/String;)V

    throw v1
.end method

.method public v3(I)Le/k/a/b/m;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0x49

    if-eq p1, v1, :cond_8

    const/16 v1, 0x4e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4

    goto/16 :goto_6

    .line 1
    :cond_0
    iget p1, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    if-lt p1, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/b/u/c;->G2(Le/k/a/b/m;)V

    throw v2

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Le/k/a/b/x/i;->Z:[B

    iget v1, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/k/a/b/u/b;->o:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/i;->u3(IZ)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->d()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 6
    :cond_4
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v1, Le/k/a/b/x/i;->k0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 8
    iget p1, p0, Le/k/a/b/u/b;->o:I

    sub-int/2addr p1, v3

    iput p1, p0, Le/k/a/b/u/b;->o:I

    .line 9
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    return-object p1

    :cond_5
    const-string v0, "expected a value"

    .line 10
    invoke-virtual {p0, p1, v0}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "NaN"

    .line 11
    invoke-virtual {p0, p1, v3}, Le/k/a/b/x/i;->A3(Ljava/lang/String;I)V

    .line 12
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v1, Le/k/a/b/x/i;->j0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Le/k/a/b/u/b;->g3(Ljava/lang/String;D)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    .line 14
    :cond_7
    new-instance p1, Le/k/a/b/i;

    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-direct {p1, p0, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 15
    throw p1

    :cond_8
    const-string p1, "Infinity"

    .line 16
    invoke-virtual {p0, p1, v3}, Le/k/a/b/x/i;->A3(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Le/k/a/b/j;->a:I

    sget v1, Le/k/a/b/x/i;->j0:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 18
    invoke-virtual {p0, p1, v0, v1}, Le/k/a/b/u/b;->g3(Ljava/lang/String;D)Le/k/a/b/m;

    move-result-object p1

    return-object p1

    .line 19
    :cond_9
    new-instance p1, Le/k/a/b/i;

    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-direct {p1, p0, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_a
    iget v4, p0, Le/k/a/b/j;->a:I

    sget v5, Le/k/a/b/x/i;->l0:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    .line 22
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->i()[C

    move-result-object p1

    .line 23
    sget-object v4, Le/k/a/b/x/i;->p0:[I

    .line 24
    iget-object v5, p0, Le/k/a/b/x/i;->Z:[B

    move v6, v0

    .line 25
    :cond_b
    :goto_1
    iget v7, p0, Le/k/a/b/u/b;->o:I

    iget v8, p0, Le/k/a/b/u/b;->p:I

    if-lt v7, v8, :cond_c

    .line 26
    invoke-virtual {p0}, Le/k/a/b/x/i;->x3()V

    .line 27
    :cond_c
    array-length v7, p1

    if-lt v6, v7, :cond_d

    .line 28
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move v6, v0

    .line 29
    :cond_d
    iget v7, p0, Le/k/a/b/u/b;->p:I

    .line 30
    iget v8, p0, Le/k/a/b/u/b;->o:I

    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/2addr v9, v8

    if-ge v9, v7, :cond_e

    move v7, v9

    .line 31
    :cond_e
    :goto_2
    iget v8, p0, Le/k/a/b/u/b;->o:I

    if-ge v8, v7, :cond_b

    add-int/lit8 v9, v8, 0x1

    .line 32
    iput v9, p0, Le/k/a/b/u/b;->o:I

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    if-eq v8, v1, :cond_10

    .line 33
    aget v10, v4, v8

    if-eqz v10, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 v9, v6, 0x1

    int-to-char v8, v8

    .line 34
    aput-char v8, p1, v6

    move v6, v9

    goto :goto_2

    :cond_10
    :goto_3
    if-ne v8, v1, :cond_11

    .line 35
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 36
    iput v6, p1, Le/k/a/b/a0/n;->i:I

    .line 37
    sget-object p1, Le/k/a/b/m;->p:Le/k/a/b/m;

    return-object p1

    .line 38
    :cond_11
    aget v7, v4, v8

    if-eq v7, v3, :cond_18

    const/4 v10, 0x2

    if-eq v7, v10, :cond_17

    const/4 v11, 0x3

    if-eq v7, v11, :cond_15

    const/4 v9, 0x4

    if-eq v7, v9, :cond_13

    const/16 p1, 0x20

    if-ge v8, p1, :cond_12

    const-string p1, "string value"

    .line 39
    invoke-virtual {p0, v8, p1}, Le/k/a/b/u/b;->b3(ILjava/lang/String;)V

    .line 40
    :cond_12
    invoke-virtual {p0, v8}, Le/k/a/b/x/i;->N3(I)V

    throw v2

    .line 41
    :cond_13
    invoke-virtual {p0, v8}, Le/k/a/b/x/i;->q3(I)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    const v9, 0xd800

    shr-int/lit8 v10, v7, 0xa

    or-int/2addr v9, v10

    int-to-char v9, v9

    .line 42
    aput-char v9, p1, v6

    .line 43
    array-length v6, p1

    if-lt v8, v6, :cond_14

    .line 44
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move v6, v0

    goto :goto_4

    :cond_14
    move v6, v8

    :goto_4
    const v8, 0xdc00

    and-int/lit16 v7, v7, 0x3ff

    or-int/2addr v7, v8

    goto :goto_5

    .line 45
    :cond_15
    iget v7, p0, Le/k/a/b/u/b;->p:I

    sub-int/2addr v7, v9

    if-lt v7, v10, :cond_16

    .line 46
    invoke-virtual {p0, v8}, Le/k/a/b/x/i;->p3(I)I

    move-result v7

    goto :goto_5

    .line 47
    :cond_16
    invoke-virtual {p0, v8}, Le/k/a/b/x/i;->o3(I)I

    move-result v7

    goto :goto_5

    .line 48
    :cond_17
    invoke-virtual {p0, v8}, Le/k/a/b/x/i;->n3(I)I

    move-result v7

    goto :goto_5

    .line 49
    :cond_18
    invoke-virtual {p0}, Le/k/a/b/x/i;->S2()C

    move-result v7

    .line 50
    :goto_5
    array-length v8, p1

    if-lt v6, v8, :cond_19

    .line 51
    iget-object p1, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {p1}, Le/k/a/b/a0/n;->l()[C

    move-result-object p1

    move v6, v0

    :cond_19
    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    .line 52
    aput-char v7, p1, v6

    move v6, v8

    goto/16 :goto_1

    .line 53
    :cond_1a
    :goto_6
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    .line 54
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Le/k/a/b/u/b;->c3()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0, p1, v0}, Le/k/a/b/x/i;->S3(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1b
    const-string v0, "expected a valid value "

    .line 57
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/k/a/b/u/b;->c3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/b/u/c;->H2(ILjava/lang/String;)V

    throw v2
.end method

.method public final w3()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/i;->Y:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    array-length v3, v2

    if-nez v3, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget v2, p0, Le/k/a/b/u/b;->p:I

    .line 5
    iget-wide v3, p0, Le/k/a/b/u/b;->q:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Le/k/a/b/u/b;->q:J

    .line 6
    iget v3, p0, Le/k/a/b/u/b;->s:I

    sub-int/2addr v3, v2

    iput v3, p0, Le/k/a/b/u/b;->s:I

    .line 7
    iget v3, p0, Le/k/a/b/x/i;->V:I

    sub-int/2addr v3, v2

    iput v3, p0, Le/k/a/b/x/i;->V:I

    .line 8
    iput v1, p0, Le/k/a/b/u/b;->o:I

    .line 9
    iput v0, p0, Le/k/a/b/u/b;->p:I

    const/4 v0, 0x1

    return v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/x/i;->P2()V

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InputStream.read() returned 0 characters when trying to read "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/k/a/b/x/i;->Z:[B

    array-length v2, v2

    const-string v3, " bytes"

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method public x3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/x/i;->w3()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/k/a/b/u/c;->E2()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final y3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v0, 0x4

    .line 2
    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 5
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Le/k/a/b/u/b;->o:I

    return-void

    :cond_1
    const-string v0, "false"

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Le/k/a/b/x/i;->B3(Ljava/lang/String;I)V

    return-void
.end method

.method public z1(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Le/k/a/b/u/c;->z1(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    :goto_0
    iget p1, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Le/k/a/b/u/b;->X2()I

    move-result p1

    return p1

    :cond_2
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p0}, Le/k/a/b/u/b;->d3()V

    .line 7
    :cond_3
    iget p1, p0, Le/k/a/b/u/b;->E:I

    return p1
.end method

.method public final z3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->o:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Le/k/a/b/u/b;->p:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/k/a/b/x/i;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_1

    .line 5
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iput v2, p0, Le/k/a/b/u/b;->o:I

    return-void

    :cond_1
    const-string v0, "null"

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Le/k/a/b/x/i;->B3(Ljava/lang/String;I)V

    return-void
.end method
