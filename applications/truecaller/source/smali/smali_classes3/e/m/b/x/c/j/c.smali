.class public Le/m/b/x/c/j/c;
.super Le/m/b/x/c/f;
.source "SourceFile"


# instance fields
.field public final c:Le/m/e/g0/a;

.field public final d:Le/m/b/x/c/j/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le/m/b/x/c/i;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/m/b/x/c/j/a;Le/m/e/g0/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Le/m/b/x/c/j/c;->d:Le/m/b/x/c/j/a;

    .line 4
    iput-object p2, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p2, Le/m/e/g0/a;->b:Z

    return-void
.end method


# virtual methods
.method public E()Le/m/b/x/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->L0()V

    const-string v0, "}"

    .line 4
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 5
    sget-object v0, Le/m/b/x/c/i;->d:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->L0()V

    const-string v0, "]"

    .line 7
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 8
    sget-object v0, Le/m/b/x/c/i;->b:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final P()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    sget-object v1, Le/m/b/x/c/i;->g:Le/m/b/x/c/i;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/m/b/x/c/i;->h:Le/m/b/x/c/i;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {v0}, Ln3/g0/y;->checkArgument2(Z)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    return-void
.end method

.method public d()Le/m/b/x/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->d()V

    .line 4
    iget-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->b()V

    .line 6
    iget-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    sget-object v0, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 10
    iput-object v1, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto/16 :goto_3

    .line 12
    :pswitch_0
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 13
    sget-object v0, Le/m/b/x/c/i;->e:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 14
    iget-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 15
    :pswitch_1
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Le/m/b/x/c/i;->g:Le/m/b/x/c/i;

    goto :goto_2

    :cond_3
    sget-object v0, Le/m/b/x/c/i;->h:Le/m/b/x/c/i;

    :goto_2
    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto/16 :goto_3

    .line 17
    :pswitch_2
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 18
    sget-object v0, Le/m/b/x/c/i;->f:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto :goto_3

    :pswitch_3
    const-string v0, "null"

    .line 19
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 20
    sget-object v0, Le/m/b/x/c/i;->k:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 21
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->p0()V

    goto :goto_3

    .line 22
    :pswitch_4
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->P()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    .line 23
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 24
    sget-object v0, Le/m/b/x/c/i;->i:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto :goto_3

    :cond_4
    const-string v0, "false"

    .line 25
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 26
    sget-object v0, Le/m/b/x/c/i;->j:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto :goto_3

    :pswitch_5
    const-string v0, "}"

    .line 27
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 28
    sget-object v0, Le/m/b/x/c/i;->d:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 29
    iget-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->q()V

    goto :goto_3

    :pswitch_6
    const-string v0, "{"

    .line 31
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 32
    sget-object v0, Le/m/b/x/c/i;->c:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    goto :goto_3

    :pswitch_7
    const-string v0, "]"

    .line 33
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 34
    sget-object v0, Le/m/b/x/c/i;->b:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 35
    iget-object v0, p0, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->l()V

    goto :goto_3

    :pswitch_8
    const-string v0, "["

    .line 37
    iput-object v0, p0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 38
    sget-object v0, Le/m/b/x/c/i;->a:Le/m/b/x/c/i;

    iput-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 39
    :goto_3
    iget-object v0, p0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
