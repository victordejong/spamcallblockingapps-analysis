.class Lorg/joda/time/d$a;
.super Lorg/joda/time/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final D:B

.field private final transient E:Lorg/joda/time/i;


# direct methods
.method constructor <init>(Ljava/lang/String;BLorg/joda/time/i;Lorg/joda/time/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/d;-><init>(Ljava/lang/String;)V

    .line 2
    iput-byte p2, p0, Lorg/joda/time/d$a;->D:B

    .line 3
    iput-object p3, p0, Lorg/joda/time/d$a;->E:Lorg/joda/time/i;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-byte v0, p0, Lorg/joda/time/d$a;->D:B

    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 2
    :pswitch_0
    invoke-static {}, Lorg/joda/time/d;->p()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 3
    :pswitch_1
    invoke-static {}, Lorg/joda/time/d;->o()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_2
    invoke-static {}, Lorg/joda/time/d;->n()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_3
    invoke-static {}, Lorg/joda/time/d;->l()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_4
    invoke-static {}, Lorg/joda/time/d;->k()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_5
    invoke-static {}, Lorg/joda/time/d;->j()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_6
    invoke-static {}, Lorg/joda/time/d;->i()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_7
    invoke-static {}, Lorg/joda/time/d;->h()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_8
    invoke-static {}, Lorg/joda/time/d;->g()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_9
    invoke-static {}, Lorg/joda/time/d;->f()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_a
    invoke-static {}, Lorg/joda/time/d;->e()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_b
    invoke-static {}, Lorg/joda/time/d;->d()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_c
    invoke-static {}, Lorg/joda/time/d;->c()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 15
    :pswitch_d
    invoke-static {}, Lorg/joda/time/d;->w()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_e
    invoke-static {}, Lorg/joda/time/d;->v()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_f
    invoke-static {}, Lorg/joda/time/d;->u()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_10
    invoke-static {}, Lorg/joda/time/d;->t()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_11
    invoke-static {}, Lorg/joda/time/d;->s()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 20
    :pswitch_12
    invoke-static {}, Lorg/joda/time/d;->r()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_13
    invoke-static {}, Lorg/joda/time/d;->q()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 22
    :pswitch_14
    invoke-static {}, Lorg/joda/time/d;->m()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_15
    invoke-static {}, Lorg/joda/time/d;->b()Lorg/joda/time/d;

    move-result-object v0

    return-object v0

    .line 24
    :pswitch_16
    invoke-static {}, Lorg/joda/time/d;->a()Lorg/joda/time/d;

    move-result-object v0

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
.method public E()Lorg/joda/time/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/d$a;->E:Lorg/joda/time/i;

    return-object v0
.end method

.method public F(Lorg/joda/time/a;)Lorg/joda/time/c;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p1

    .line 2
    iget-byte v0, p0, Lorg/joda/time/d$a;->D:B

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lorg/joda/time/a;->w()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lorg/joda/time/a;->D()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Lorg/joda/time/a;->C()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Lorg/joda/time/a;->y()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    invoke-virtual {p1}, Lorg/joda/time/a;->x()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    invoke-virtual {p1}, Lorg/joda/time/a;->r()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_7
    invoke-virtual {p1}, Lorg/joda/time/a;->c()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lorg/joda/time/a;->d()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_9
    invoke-virtual {p1}, Lorg/joda/time/a;->s()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_a
    invoke-virtual {p1}, Lorg/joda/time/a;->p()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_b
    invoke-virtual {p1}, Lorg/joda/time/a;->f()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_c
    invoke-virtual {p1}, Lorg/joda/time/a;->H()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_d
    invoke-virtual {p1}, Lorg/joda/time/a;->J()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_e
    invoke-virtual {p1}, Lorg/joda/time/a;->K()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_f
    invoke-virtual {p1}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_10
    invoke-virtual {p1}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_11
    invoke-virtual {p1}, Lorg/joda/time/a;->g()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_12
    invoke-virtual {p1}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_13
    invoke-virtual {p1}, Lorg/joda/time/a;->P()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_14
    invoke-virtual {p1}, Lorg/joda/time/a;->b()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_15
    invoke-virtual {p1}, Lorg/joda/time/a;->Q()Lorg/joda/time/c;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_16
    invoke-virtual {p1}, Lorg/joda/time/a;->i()Lorg/joda/time/c;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/d$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget-byte v1, p0, Lorg/joda/time/d$a;->D:B

    check-cast p1, Lorg/joda/time/d$a;

    iget-byte p1, p1, Lorg/joda/time/d$a;->D:B

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lorg/joda/time/d$a;->D:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
