.class public final Le/i/b/u2/k$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/s;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "placementId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    const-string v5, "interstitial"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "sizes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "impId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v12

    goto :goto_1

    :sswitch_4
    const-string v5, "isNative"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v4, v11

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 9
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v3, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    if-nez v3, :cond_7

    .line 11
    iget-object v3, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v3, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    .line 12
    :cond_7
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 13
    :pswitch_1
    iget-object v3, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    if-nez v3, :cond_8

    .line 14
    iget-object v3, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v3, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    .line 15
    :cond_8
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 16
    :pswitch_2
    iget-object v3, p0, Le/i/b/u2/k$a;->c:Le/m/e/b0;

    if-nez v3, :cond_9

    .line 17
    iget-object v3, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    new-array v4, v12, [Ljava/lang/reflect/Type;

    aput-object v2, v4, v11

    const-class v5, Ljava/util/Collection;

    invoke-static {v5, v4}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/k$a;->c:Le/m/e/b0;

    .line 18
    :cond_9
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    iget-object v3, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    if-nez v3, :cond_a

    .line 20
    iget-object v3, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v3, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    .line 21
    :cond_a
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 22
    :pswitch_4
    iget-object v3, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    if-nez v3, :cond_b

    .line 23
    iget-object v3, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v3, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    .line 24
    :cond_b
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 25
    :cond_c
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 26
    new-instance v4, Le/i/b/u2/k;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Le/i/b/u2/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Collection;)V

    :goto_2
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1690be1f -> :sswitch_4
        0x5fade07 -> :sswitch_3
        0x6862092 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x2ba4f6e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(CdbRequestSlot)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/s;

    .line 2
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v2, "impId"

    .line 5
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/s;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    if-nez v2, :cond_2

    .line 9
    iget-object v2, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v2, "placementId"

    .line 11
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/s;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/k$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v2, "isNative"

    .line 17
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/s;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v2, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    if-nez v2, :cond_6

    .line 21
    iget-object v2, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/s;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v2, "interstitial"

    .line 23
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/s;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v2, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    if-nez v2, :cond_8

    .line 27
    iget-object v2, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/k$a;->b:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/s;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "sizes"

    .line 29
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 30
    invoke-virtual {p2}, Le/i/b/u2/s;->c()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_9

    .line 31
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 32
    :cond_9
    iget-object v0, p0, Le/i/b/u2/k$a;->c:Le/m/e/b0;

    if-nez v0, :cond_a

    .line 33
    iget-object v0, p0, Le/i/b/u2/k$a;->d:Le/m/e/k;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-class v1, Ljava/util/Collection;

    invoke-static {v1, v2}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/k$a;->c:Le/m/e/b0;

    .line 34
    :cond_a
    invoke-virtual {p2}, Le/i/b/u2/s;->c()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 35
    :goto_4
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_5
    return-void
.end method
