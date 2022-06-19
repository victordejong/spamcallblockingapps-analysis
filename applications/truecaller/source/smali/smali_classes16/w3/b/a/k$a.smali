.class public Lw3/b/a/k$a;
.super Lw3/b/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final n:B


# direct methods
.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw3/b/a/k;-><init>(Ljava/lang/String;)V

    .line 2
    iput-byte p2, p0, Lw3/b/a/k$a;->n:B

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-byte v0, p0, Lw3/b/a/k$a;->n:B

    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 2
    :pswitch_0
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    return-object v0

    .line 3
    :pswitch_1
    sget-object v0, Lw3/b/a/k;->l:Lw3/b/a/k;

    return-object v0

    .line 4
    :pswitch_2
    sget-object v0, Lw3/b/a/k;->k:Lw3/b/a/k;

    return-object v0

    .line 5
    :pswitch_3
    sget-object v0, Lw3/b/a/k;->j:Lw3/b/a/k;

    return-object v0

    .line 6
    :pswitch_4
    sget-object v0, Lw3/b/a/k;->i:Lw3/b/a/k;

    return-object v0

    .line 7
    :pswitch_5
    sget-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    return-object v0

    .line 8
    :pswitch_6
    sget-object v0, Lw3/b/a/k;->g:Lw3/b/a/k;

    return-object v0

    .line 9
    :pswitch_7
    sget-object v0, Lw3/b/a/k;->f:Lw3/b/a/k;

    return-object v0

    .line 10
    :pswitch_8
    sget-object v0, Lw3/b/a/k;->e:Lw3/b/a/k;

    return-object v0

    .line 11
    :pswitch_9
    sget-object v0, Lw3/b/a/k;->d:Lw3/b/a/k;

    return-object v0

    .line 12
    :pswitch_a
    sget-object v0, Lw3/b/a/k;->c:Lw3/b/a/k;

    return-object v0

    .line 13
    :pswitch_b
    sget-object v0, Lw3/b/a/k;->b:Lw3/b/a/k;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
.method public a(Lw3/b/a/a;)Lw3/b/a/j;
    .locals 1

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p1

    .line 2
    iget-byte v0, p0, Lw3/b/a/k$a;->n:B

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lw3/b/a/a;->y()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lw3/b/a/a;->I()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lw3/b/a/a;->D()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Lw3/b/a/a;->x()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Lw3/b/a/a;->u()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    invoke-virtual {p1}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    invoke-virtual {p1}, Lw3/b/a/a;->M()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_7
    invoke-virtual {p1}, Lw3/b/a/a;->F()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lw3/b/a/a;->V()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_9
    invoke-virtual {p1}, Lw3/b/a/a;->P()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_a
    invoke-virtual {p1}, Lw3/b/a/a;->c()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_b
    invoke-virtual {p1}, Lw3/b/a/a;->l()Lw3/b/a/j;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    instance-of v1, p1, Lw3/b/a/k$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget-byte v1, p0, Lw3/b/a/k$a;->n:B

    check-cast p1, Lw3/b/a/k$a;

    iget-byte p1, p1, Lw3/b/a/k$a;->n:B

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
    iget-byte v0, p0, Lw3/b/a/k$a;->n:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
