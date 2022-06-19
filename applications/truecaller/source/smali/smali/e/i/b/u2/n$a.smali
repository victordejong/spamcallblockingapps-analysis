.class public final Le/i/b/u2/n$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/d0;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->d()V

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->I()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 5
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "AndroidDisplayUrlMacro"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "AndroidAdTagDataMacro"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "AndroidAdTagUrlMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "AndroidAdTagDataMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v6, "killSwitch"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 10
    iget-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v5, :cond_6

    .line 11
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 12
    :cond_6
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    const-string v6, "csmEnabled"

    .line 13
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 14
    iget-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v5, :cond_8

    .line 15
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 16
    :cond_8
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_9
    const-string v6, "liveBiddingEnabled"

    .line 17
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 18
    iget-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v5, :cond_a

    .line 19
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 20
    :cond_a
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_b
    const-string v6, "liveBiddingTimeBudgetInMillis"

    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 22
    iget-object v5, v0, Le/i/b/u2/n$a;->c:Le/m/e/b0;

    if-nez v5, :cond_c

    .line 23
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->c:Le/m/e/b0;

    .line 24
    :cond_c
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_d
    const-string v6, "prefetchOnInitEnabled"

    .line 25
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 26
    iget-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v5, :cond_e

    .line 27
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 28
    :cond_e
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_f
    const-string v6, "remoteLogLevel"

    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 30
    iget-object v5, v0, Le/i/b/u2/n$a;->d:Le/m/e/b0;

    if-nez v5, :cond_10

    .line 31
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    const-class v6, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v5, v6}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->d:Le/m/e/b0;

    .line 32
    :cond_10
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto/16 :goto_0

    .line 33
    :cond_11
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 34
    :pswitch_0
    iget-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v5, :cond_12

    .line 35
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 36
    :cond_12
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 37
    :pswitch_1
    iget-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v5, :cond_13

    .line 38
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 39
    :cond_13
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_0

    .line 40
    :pswitch_2
    iget-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v5, :cond_14

    .line 41
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 42
    :cond_14
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_0

    .line 43
    :pswitch_3
    iget-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v5, :cond_15

    .line 44
    iget-object v5, v0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v5, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, v0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 45
    :cond_15
    invoke-virtual {v5, v1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    goto/16 :goto_0

    .line 46
    :cond_16
    invoke-virtual/range {p1 .. p1}, Le/m/e/g0/a;->q()V

    .line 47
    new-instance v6, Le/i/b/u2/n;

    move-object v7, v6

    invoke-direct/range {v7 .. v17}, Le/i/b/u2/n;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V

    :goto_2
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x26a64c0b -> :sswitch_3
        0x1ac972a -> :sswitch_2
        0x51d66bba -> :sswitch_1
        0x53293030 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(RemoteConfigResponse)"

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
    check-cast p2, Le/i/b/u2/d0;

    .line 2
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_a

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v2, "killSwitch"

    .line 5
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v2, :cond_2

    .line 9
    iget-object v2, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v2, "AndroidDisplayUrlMacro"

    .line 11
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v2, "AndroidAdTagUrlMode"

    .line 17
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v2, :cond_6

    .line 21
    iget-object v2, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v2, "AndroidAdTagDataMacro"

    .line 23
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v2, :cond_8

    .line 27
    iget-object v2, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v2, "AndroidAdTagDataMode"

    .line 29
    invoke-virtual {p1, v2}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 30
    invoke-virtual {p2}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 31
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 32
    :cond_9
    iget-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    if-nez v2, :cond_a

    .line 33
    iget-object v2, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/n$a;->b:Le/m/e/b0;

    .line 34
    :cond_a
    invoke-virtual {p2}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "csmEnabled"

    .line 35
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 36
    invoke-virtual {p2}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    .line 37
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_5

    .line 38
    :cond_b
    iget-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v0, :cond_c

    .line 39
    iget-object v0, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 40
    :cond_c
    invoke-virtual {p2}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_5
    const-string v0, "liveBiddingEnabled"

    .line 41
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 42
    invoke-virtual {p2}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    .line 43
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_6

    .line 44
    :cond_d
    iget-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v0, :cond_e

    .line 45
    iget-object v0, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 46
    :cond_e
    invoke-virtual {p2}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_6
    const-string v0, "liveBiddingTimeBudgetInMillis"

    .line 47
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 48
    invoke-virtual {p2}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 49
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_7

    .line 50
    :cond_f
    iget-object v0, p0, Le/i/b/u2/n$a;->c:Le/m/e/b0;

    if-nez v0, :cond_10

    .line 51
    iget-object v0, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/n$a;->c:Le/m/e/b0;

    .line 52
    :cond_10
    invoke-virtual {p2}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_7
    const-string v0, "prefetchOnInitEnabled"

    .line 53
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 54
    invoke-virtual {p2}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    .line 55
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_8

    .line 56
    :cond_11
    iget-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    if-nez v0, :cond_12

    .line 57
    iget-object v0, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/n$a;->a:Le/m/e/b0;

    .line 58
    :cond_12
    invoke-virtual {p2}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_8
    const-string v0, "remoteLogLevel"

    .line 59
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 60
    invoke-virtual {p2}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v0

    if-nez v0, :cond_13

    .line 61
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_9

    .line 62
    :cond_13
    iget-object v0, p0, Le/i/b/u2/n$a;->d:Le/m/e/b0;

    if-nez v0, :cond_14

    .line 63
    iget-object v0, p0, Le/i/b/u2/n$a;->e:Le/m/e/k;

    const-class v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/n$a;->d:Le/m/e/b0;

    .line 64
    :cond_14
    invoke-virtual {p2}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 65
    :goto_9
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_a
    return-void
.end method
