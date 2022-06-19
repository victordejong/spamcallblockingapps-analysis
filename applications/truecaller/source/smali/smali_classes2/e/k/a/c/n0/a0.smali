.class public Le/k/a/c/n0/a0;
.super Le/k/a/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/n0/a0$b;,
        Le/k/a/c/n0/a0$a;
    }
.end annotation


# static fields
.field public static final r:I


# instance fields
.field public d:Le/k/a/b/n;

.field public e:Le/k/a/b/l;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Le/k/a/c/n0/a0$b;

.field public l:Le/k/a/c/n0/a0$b;

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Z

.field public q:Le/k/a/b/x/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/k/a/b/g$a;->a()I

    move-result v0

    sput v0, Le/k/a/c/n0/a0;->r:I

    return-void
.end method

.method public constructor <init>(Le/k/a/b/j;Le/k/a/c/g;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Le/k/a/b/g;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->K()Le/k/a/b/n;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->K0()Le/k/a/b/l;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/n0/a0;->e:Le/k/a/b/l;

    .line 15
    sget v1, Le/k/a/c/n0/a0;->r:I

    iput v1, p0, Le/k/a/c/n0/a0;->f:I

    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Le/k/a/b/x/f;->n(Le/k/a/b/x/b;)Le/k/a/b/x/f;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    .line 17
    new-instance v1, Le/k/a/c/n0/a0$b;

    invoke-direct {v1}, Le/k/a/c/n0/a0$b;-><init>()V

    iput-object v1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iput-object v1, p0, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    .line 18
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    .line 19
    invoke-virtual {p1}, Le/k/a/b/j;->d()Z

    move-result v1

    iput-boolean v1, p0, Le/k/a/c/n0/a0;->g:Z

    .line 20
    invoke-virtual {p1}, Le/k/a/b/j;->b()Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/n0/a0;->h:Z

    .line 21
    iget-boolean v1, p0, Le/k/a/c/n0/a0;->g:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Le/k/a/c/n0/a0;->i:Z

    if-nez p2, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    sget-object p1, Le/k/a/c/h;->c:Le/k/a/c/h;

    .line 23
    invoke-virtual {p2, p1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->j:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/b/n;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/k/a/b/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    .line 3
    iput-object p1, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    .line 4
    sget p1, Le/k/a/c/n0/a0;->r:I

    iput p1, p0, Le/k/a/c/n0/a0;->f:I

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Le/k/a/b/x/f;->n(Le/k/a/b/x/b;)Le/k/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    .line 6
    new-instance p1, Le/k/a/c/n0/a0$b;

    invoke-direct {p1}, Le/k/a/c/n0/a0$b;-><init>()V

    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iput-object p1, p0, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    .line 7
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    .line 8
    iput-boolean p2, p0, Le/k/a/c/n0/a0;->g:Z

    .line 9
    iput-boolean p2, p0, Le/k/a/c/n0/a0;->h:Z

    if-nez p2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10
    :cond_1
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    return-void
.end method

.method public static w2(Le/k/a/b/j;)Le/k/a/c/n0/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/n0/a0;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Le/k/a/c/n0/a0;-><init>(Le/k/a/b/j;Le/k/a/c/g;)V

    .line 3
    invoke-virtual {v0, p0}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    return-object v0
.end method


# virtual methods
.method public A2(Le/k/a/b/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->B0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 8
    invoke-virtual {p0, p1, v0}, Le/k/a/c/n0/a0;->t2(Le/k/a/b/j;Le/k/a/b/m;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->p0()V

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->F1()V

    .line 13
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->s2(Le/k/a/b/j;)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->t0()V

    goto :goto_1

    .line 15
    :cond_6
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 17
    :cond_7
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->M1()V

    .line 18
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->s2(Le/k/a/b/j;)V

    :goto_1
    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No token available from argument `JsonParser`"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->h2(Ljava/lang/Object;)V

    return-void
.end method

.method public D0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    return-void
.end method

.method public E(Le/k/a/b/g$a;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/n0/a0;->f:I

    .line 2
    iget p1, p1, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E1(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    new-instance v1, Le/k/a/c/n0/w;

    invoke-direct {v1, p1}, Le/k/a/c/n0/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public F0(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public final F1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->j()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public G0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public I(II)Le/k/a/b/g;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/n0/a0;->f:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Le/k/a/c/n0/a0;->f:I

    return-object p0
.end method

.method public I1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->k(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public J0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public K(I)Le/k/a/b/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Le/k/a/c/n0/a0;->f:I

    return-object p0
.end method

.method public K0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public L1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {p2}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object p2, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p0, p2}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object p2, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {p2, p1}, Le/k/a/b/x/f;->k(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public final M1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->l()Le/k/a/b/x/f;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public O1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0, p1}, Le/k/a/b/x/f;->m(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public Q(Le/k/a/b/a;Ljava/io/InputStream;I)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q0(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public R1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {p2}, Le/k/a/b/x/f;->r()I

    .line 2
    sget-object p2, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p0, p2}, Le/k/a/c/n0/a0;->o2(Le/k/a/b/m;)V

    .line 3
    iget-object p2, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {p2, p1}, Le/k/a/b/x/f;->m(Ljava/lang/Object;)Le/k/a/b/x/f;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-void
.end method

.method public S(Le/k/a/b/a;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array p1, p4, [B

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->j1(Ljava/lang/Object;)V

    return-void
.end method

.method public S1(Le/k/a/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public T1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public U0(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public V1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    return-void
.end method

.method public W0(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public Y1(Le/k/a/b/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, p0, p1}, Le/k/a/b/n;->a(Le/k/a/b/g;Le/k/a/b/t;)V

    :goto_0
    return-void
.end method

.method public Z1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/k/a/c/n0/a0;->p:Z

    return-void
.end method

.method public final b2(Le/k/a/b/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    invoke-virtual {v0, v1, p1}, Le/k/a/c/n0/a0$b;->a(ILe/k/a/b/m;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/c/n0/a0;->m:I

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    .line 4
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final h2(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v2, p0, Le/k/a/c/n0/a0;->m:I

    sget-object v3, Le/k/a/b/m;->n:Le/k/a/b/m;

    iget-object v5, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Le/k/a/c/n0/a0$b;->d(ILe/k/a/b/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    invoke-virtual {v0, v1, v2, p1}, Le/k/a/c/n0/a0$b;->b(ILe/k/a/b/m;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/c/n0/a0;->m:I

    goto :goto_1

    .line 5
    :cond_1
    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    .line 6
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    :goto_1
    return-void
.end method

.method public final i2(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Le/k/a/c/n0/a0$b;->f(I)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    if-eqz v0, :cond_0

    const-string v2, "[objectId="

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v2, p0, Le/k/a/c/n0/a0;->m:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Le/k/a/c/n0/a0$b;->g(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "[typeId="

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->h:Z

    return v0
.end method

.method public j1(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, [B

    if-eq v0, v1, :cond_3

    instance-of v0, p1, Le/k/a/c/n0/w;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0, p0, p1}, Le/k/a/b/n;->b(Le/k/a/b/g;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->g:Z

    return v0
.end method

.method public k0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/m;->s:Le/k/a/b/m;

    goto :goto_0

    :cond_0
    sget-object p1, Le/k/a/b/m;->t:Le/k/a/b/m;

    :goto_0
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    return-void
.end method

.method public l(Le/k/a/b/g$a;)Le/k/a/b/g;
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/n0/a0;->f:I

    .line 2
    iget p1, p1, Le/k/a/b/g$a;->b:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 3
    iput p1, p0, Le/k/a/c/n0/a0;->f:I

    return-object p0
.end method

.method public l1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/k/a/c/n0/a0;->p:Z

    return-void
.end method

.method public m1(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->u2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public n0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p0, v0, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    return-void
.end method

.method public n1(Le/k/a/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->u2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final o2(Le/k/a/b/m;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    iget-object v2, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    iget-object v3, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Le/k/a/c/n0/a0$b;->c(ILe/k/a/b/m;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    invoke-virtual {v0, v1, p1}, Le/k/a/c/n0/a0$b;->a(ILe/k/a/b/m;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/c/n0/a0;->m:I

    goto :goto_1

    .line 5
    :cond_1
    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    .line 6
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    :goto_1
    return-void
.end method

.method public final p0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->b2(Le/k/a/b/m;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    .line 3
    iget-object v0, v0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    :cond_0
    return-void
.end method

.method public final p2(Le/k/a/b/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    iget-object v2, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    iget-object v3, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Le/k/a/c/n0/a0$b;->c(ILe/k/a/b/m;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    invoke-virtual {v0, v1, p1}, Le/k/a/c/n0/a0$b;->a(ILe/k/a/b/m;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/2addr p1, v0

    iput p1, p0, Le/k/a/c/n0/a0;->m:I

    goto :goto_1

    .line 6
    :cond_1
    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    .line 7
    iput v0, p0, Le/k/a/c/n0/a0;->m:I

    :goto_1
    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/n0/a0;->f:I

    return v0
.end method

.method public final q2(Le/k/a/b/m;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-virtual {v0}, Le/k/a/b/x/f;->r()I

    .line 2
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->p:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v2, p0, Le/k/a/c/n0/a0;->m:I

    iget-object v5, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    iget-object v6, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Le/k/a/c/n0/a0$b;->d(ILe/k/a/b/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0;->m:I

    invoke-virtual {v0, v1, p1, p2}, Le/k/a/c/n0/a0$b;->b(ILe/k/a/b/m;Ljava/lang/Object;)Le/k/a/c/n0/a0$b;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Le/k/a/c/n0/a0;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Le/k/a/c/n0/a0;->m:I

    goto :goto_1

    .line 6
    :cond_1
    iput-object p1, p0, Le/k/a/c/n0/a0;->l:Le/k/a/c/n0/a0$b;

    .line 7
    iput p2, p0, Le/k/a/c/n0/a0;->m:I

    :goto_1
    return-void
.end method

.method public final r2(Le/k/a/b/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->n1()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/n0/a0;->n:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/k/a/c/n0/a0;->p:Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->J0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/n0/a0;->o:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v1, p0, Le/k/a/c/n0/a0;->p:Z

    :cond_1
    return-void
.end method

.method public s()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    return-object v0
.end method

.method public s1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->u2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public s2(Le/k/a/b/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v0, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 3
    invoke-virtual {p0, p1, v2}, Le/k/a/c/n0/a0;->t2(Le/k/a/b/j;Le/k/a/b/m;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v2, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/k/a/c/n0/a0;->B0(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->p0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_4
    iget-boolean v2, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 10
    :cond_5
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->F1()V

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->t0()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void

    .line 12
    :cond_7
    iget-boolean v2, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v2, :cond_8

    .line 13
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 14
    :cond_8
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->M1()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final t0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->k:Le/k/a/b/m;

    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->b2(Le/k/a/b/m;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    .line 3
    iget-object v0, v0, Le/k/a/b/x/f;->c:Le/k/a/b/x/f;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    :cond_0
    return-void
.end method

.method public final t2(Le/k/a/b/j;Le/k/a/b/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->r2(Le/k/a/b/j;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error: unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    sget-object p1, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->p2(Le/k/a/b/m;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->k0(Z)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->k0(Z)V

    goto :goto_0

    .line 8
    :pswitch_3
    iget-boolean p2, p0, Le/k/a/c/n0/a0;->j:Z

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->Q0(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->G0()Ljava/lang/Number;

    move-result-object p1

    .line 11
    sget-object p2, Le/k/a/b/m;->r:Le/k/a/b/m;

    invoke-virtual {p0, p2, p1}, Le/k/a/c/n0/a0;->q2(Le/k/a/b/m;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1}, Le/k/a/b/j;->D0()Le/k/a/b/j$b;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Le/k/a/c/n0/a0;->K0(J)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->E()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->U0(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->J0(I)V

    goto :goto_0

    .line 16
    :pswitch_5
    invoke-virtual {p1}, Le/k/a/b/j;->M1()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->W0()[C

    move-result-object p2

    invoke-virtual {p1}, Le/k/a/b/j;->l1()I

    move-result v0

    invoke-virtual {p1}, Le/k/a/b/j;->j1()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Le/k/a/c/n0/a0;->V1([CII)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->T1(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->j1(Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "[TokenBuffer: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Le/k/a/c/n0/a0;->g:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Le/k/a/c/n0/a0;->h:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    .line 4
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x64

    if-nez v4, :cond_3

    if-lt v2, v5, :cond_2

    const-string v1, " ... (truncated "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x5d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v3, :cond_4

    .line 8
    :try_start_1
    invoke-virtual {p0, v0}, Le/k/a/c/n0/a0;->i2(Ljava/lang/StringBuilder;)V

    :cond_4
    if-ge v2, v5, :cond_6

    if-lez v2, :cond_5

    const-string v5, ", "

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v5, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v4, v5, :cond_6

    const/16 v4, 0x28

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public u2()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v2(Le/k/a/c/n0/a0;)Le/k/a/c/n0/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Le/k/a/c/n0/a0;->g:Z

    .line 3
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->g:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->h:Z

    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p1, Le/k/a/c/n0/a0;->h:Z

    .line 6
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->h:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Le/k/a/c/n0/a0;->g:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Le/k/a/c/n0/a0;->h:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Le/k/a/c/n0/a0;->i:Z

    .line 8
    invoke-virtual {p1}, Le/k/a/c/n0/a0;->x2()Le/k/a/b/j;

    move-result-object p1

    .line 9
    :goto_2
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->A2(Le/k/a/b/j;)V

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public x2()Le/k/a/b/j;
    .locals 7

    .line 1
    iget-object v2, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    .line 2
    new-instance v6, Le/k/a/c/n0/a0$a;

    iget-object v1, p0, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    iget-boolean v3, p0, Le/k/a/c/n0/a0;->g:Z

    iget-boolean v4, p0, Le/k/a/c/n0/a0;->h:Z

    iget-object v5, p0, Le/k/a/c/n0/a0;->e:Le/k/a/b/l;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/k/a/c/n0/a0$a;-><init>(Le/k/a/c/n0/a0$b;Le/k/a/b/n;ZZLe/k/a/b/l;)V

    return-object v6
.end method

.method public y2(Le/k/a/b/j;)Le/k/a/b/j;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/n0/a0$a;

    iget-object v1, p0, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    invoke-virtual {p1}, Le/k/a/b/j;->K()Le/k/a/b/n;

    move-result-object v2

    iget-boolean v3, p0, Le/k/a/c/n0/a0;->g:Z

    iget-boolean v4, p0, Le/k/a/c/n0/a0;->h:Z

    iget-object v5, p0, Le/k/a/c/n0/a0;->e:Le/k/a/b/l;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/k/a/c/n0/a0$a;-><init>(Le/k/a/c/n0/a0$b;Le/k/a/b/n;ZZLe/k/a/b/l;)V

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->m1()Le/k/a/b/h;

    move-result-object p1

    .line 3
    iput-object p1, v6, Le/k/a/c/n0/a0$a;->u:Le/k/a/b/h;

    return-object v6
.end method

.method public z0(Le/k/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0;->q:Le/k/a/b/x/f;

    invoke-interface {p1}, Le/k/a/b/p;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/k/a/b/x/f;->q(Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0;->h2(Ljava/lang/Object;)V

    return-void
.end method

.method public z1([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0;->u2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public z2()Le/k/a/b/j;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v2, p0, Le/k/a/c/n0/a0;->d:Le/k/a/b/n;

    .line 2
    new-instance v6, Le/k/a/c/n0/a0$a;

    iget-object v1, p0, Le/k/a/c/n0/a0;->k:Le/k/a/c/n0/a0$b;

    iget-boolean v3, p0, Le/k/a/c/n0/a0;->g:Z

    iget-boolean v4, p0, Le/k/a/c/n0/a0;->h:Z

    iget-object v5, p0, Le/k/a/c/n0/a0;->e:Le/k/a/b/l;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/k/a/c/n0/a0$a;-><init>(Le/k/a/c/n0/a0$b;Le/k/a/b/n;ZZLe/k/a/b/l;)V

    .line 3
    invoke-virtual {v6}, Le/k/a/c/n0/a0$a;->i2()Le/k/a/b/m;

    return-object v6
.end method
