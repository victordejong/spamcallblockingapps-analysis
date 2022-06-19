.class public Lw3/b/a/d$a;
.super Lw3/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final transient A:Lw3/b/a/k;

.field public final y:B

.field public final transient z:Lw3/b/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;BLw3/b/a/k;Lw3/b/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/d;-><init>(Ljava/lang/String;)V

    .line 2
    iput-byte p2, p0, Lw3/b/a/d$a;->y:B

    .line 3
    iput-object p3, p0, Lw3/b/a/d$a;->z:Lw3/b/a/k;

    .line 4
    iput-object p4, p0, Lw3/b/a/d$a;->A:Lw3/b/a/k;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-byte v0, p0, Lw3/b/a/d$a;->y:B

    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 2
    :pswitch_0
    sget-object v0, Lw3/b/a/d;->x:Lw3/b/a/d;

    return-object v0

    .line 3
    :pswitch_1
    sget-object v0, Lw3/b/a/d;->w:Lw3/b/a/d;

    return-object v0

    .line 4
    :pswitch_2
    sget-object v0, Lw3/b/a/d;->v:Lw3/b/a/d;

    return-object v0

    .line 5
    :pswitch_3
    sget-object v0, Lw3/b/a/d;->u:Lw3/b/a/d;

    return-object v0

    .line 6
    :pswitch_4
    sget-object v0, Lw3/b/a/d;->t:Lw3/b/a/d;

    return-object v0

    .line 7
    :pswitch_5
    sget-object v0, Lw3/b/a/d;->s:Lw3/b/a/d;

    return-object v0

    .line 8
    :pswitch_6
    sget-object v0, Lw3/b/a/d;->r:Lw3/b/a/d;

    return-object v0

    .line 9
    :pswitch_7
    sget-object v0, Lw3/b/a/d;->q:Lw3/b/a/d;

    return-object v0

    .line 10
    :pswitch_8
    sget-object v0, Lw3/b/a/d;->p:Lw3/b/a/d;

    return-object v0

    .line 11
    :pswitch_9
    sget-object v0, Lw3/b/a/d;->o:Lw3/b/a/d;

    return-object v0

    .line 12
    :pswitch_a
    sget-object v0, Lw3/b/a/d;->n:Lw3/b/a/d;

    return-object v0

    .line 13
    :pswitch_b
    sget-object v0, Lw3/b/a/d;->m:Lw3/b/a/d;

    return-object v0

    .line 14
    :pswitch_c
    sget-object v0, Lw3/b/a/d;->l:Lw3/b/a/d;

    return-object v0

    .line 15
    :pswitch_d
    sget-object v0, Lw3/b/a/d;->k:Lw3/b/a/d;

    return-object v0

    .line 16
    :pswitch_e
    sget-object v0, Lw3/b/a/d;->j:Lw3/b/a/d;

    return-object v0

    .line 17
    :pswitch_f
    sget-object v0, Lw3/b/a/d;->i:Lw3/b/a/d;

    return-object v0

    .line 18
    :pswitch_10
    sget-object v0, Lw3/b/a/d;->h:Lw3/b/a/d;

    return-object v0

    .line 19
    :pswitch_11
    sget-object v0, Lw3/b/a/d;->g:Lw3/b/a/d;

    return-object v0

    .line 20
    :pswitch_12
    sget-object v0, Lw3/b/a/d;->f:Lw3/b/a/d;

    return-object v0

    .line 21
    :pswitch_13
    sget-object v0, Lw3/b/a/d;->e:Lw3/b/a/d;

    return-object v0

    .line 22
    :pswitch_14
    sget-object v0, Lw3/b/a/d;->d:Lw3/b/a/d;

    return-object v0

    .line 23
    :pswitch_15
    sget-object v0, Lw3/b/a/d;->c:Lw3/b/a/d;

    return-object v0

    .line 24
    :pswitch_16
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lw3/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/d$a;->z:Lw3/b/a/k;

    return-object v0
.end method

.method public b(Lw3/b/a/a;)Lw3/b/a/c;
    .locals 1

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    .line 2
    iget-byte v0, p0, Lw3/b/a/d$a;->y:B

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lw3/b/a/a;->A()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lw3/b/a/a;->z()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Lw3/b/a/a;->G()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Lw3/b/a/a;->C()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    invoke-virtual {p1}, Lw3/b/a/a;->B()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    invoke-virtual {p1}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_7
    invoke-virtual {p1}, Lw3/b/a/a;->e()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lw3/b/a/a;->f()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_9
    invoke-virtual {p1}, Lw3/b/a/a;->w()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_a
    invoke-virtual {p1}, Lw3/b/a/a;->t()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_b
    invoke-virtual {p1}, Lw3/b/a/a;->h()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_c
    invoke-virtual {p1}, Lw3/b/a/a;->L()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_d
    invoke-virtual {p1}, Lw3/b/a/a;->N()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_e
    invoke-virtual {p1}, Lw3/b/a/a;->O()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_f
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_10
    invoke-virtual {p1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_11
    invoke-virtual {p1}, Lw3/b/a/a;->i()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_12
    invoke-virtual {p1}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_13
    invoke-virtual {p1}, Lw3/b/a/a;->T()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_14
    invoke-virtual {p1}, Lw3/b/a/a;->d()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_15
    invoke-virtual {p1}, Lw3/b/a/a;->U()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_16
    invoke-virtual {p1}, Lw3/b/a/a;->k()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lw3/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/d$a;->A:Lw3/b/a/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget-byte v1, p0, Lw3/b/a/d$a;->y:B

    check-cast p1, Lw3/b/a/d$a;

    iget-byte p1, p1, Lw3/b/a/d$a;->y:B

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lw3/b/a/d$a;->y:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
