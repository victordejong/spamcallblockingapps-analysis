.class public final Le/i/b/z1/n$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/z1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/z1/x;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Long;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Integer;",
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
    iput-object p1, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/String;

    sget-object v2, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Long;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v5

    if-ne v5, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    .line 4
    new-instance v5, Le/i/b/z1/g$b;

    invoke-direct {v5}, Le/i/b/z1/g$b;-><init>()V

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->d(Z)Le/i/b/z1/x$a;

    .line 6
    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->c(Z)Le/i/b/z1/x$a;

    .line 7
    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->a(Z)Le/i/b/z1/x$a;

    .line 8
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 9
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "cdbCallStartTimestamp"

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 14
    iget-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v6, :cond_2

    .line 15
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 16
    :cond_2
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 17
    iput-object v6, v5, Le/i/b/z1/g$b;->a:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    const-string v7, "cdbCallEndTimestamp"

    .line 18
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    iget-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v6, :cond_4

    .line 20
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 21
    :cond_4
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 22
    iput-object v6, v5, Le/i/b/z1/g$b;->b:Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const-string v7, "cdbCallTimeout"

    .line 23
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 24
    iget-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v6, :cond_6

    .line 25
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 26
    :cond_6
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->c(Z)Le/i/b/z1/x$a;

    goto :goto_0

    :cond_7
    const-string v7, "cachedBidUsed"

    .line 27
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 28
    iget-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v6, :cond_8

    .line 29
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 30
    :cond_8
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->a(Z)Le/i/b/z1/x$a;

    goto/16 :goto_0

    :cond_9
    const-string v7, "elapsedTimestamp"

    .line 31
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 32
    iget-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v6, :cond_a

    .line 33
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 34
    :cond_a
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 35
    iput-object v6, v5, Le/i/b/z1/g$b;->e:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_b
    const-string v7, "impressionId"

    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 37
    iget-object v6, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    if-nez v6, :cond_c

    .line 38
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    .line 39
    :cond_c
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Null impressionId"

    .line 40
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object v6, v5, Le/i/b/z1/g$b;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v7, "requestGroupId"

    .line 42
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 43
    iget-object v6, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    if-nez v6, :cond_e

    .line 44
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    .line 45
    :cond_e
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 46
    iput-object v6, v5, Le/i/b/z1/g$b;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v7, "zoneId"

    .line 47
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 48
    iget-object v6, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    if-nez v6, :cond_10

    .line 49
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    .line 50
    :cond_10
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 51
    iput-object v6, v5, Le/i/b/z1/g$b;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_11
    const-string v7, "profileId"

    .line 52
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 53
    iget-object v6, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    if-nez v6, :cond_12

    .line 54
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    .line 55
    :cond_12
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 56
    iput-object v6, v5, Le/i/b/z1/g$b;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_13
    const-string v7, "readyToSend"

    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 58
    iget-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v6, :cond_14

    .line 59
    iget-object v6, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v6, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v6

    iput-object v6, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 60
    :cond_14
    invoke-virtual {v6, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Le/i/b/z1/g$b;->d(Z)Le/i/b/z1/x$a;

    goto/16 :goto_0

    .line 61
    :cond_15
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 62
    :cond_16
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 63
    invoke-virtual {v5}, Le/i/b/z1/g$b;->b()Le/i/b/z1/x;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(Metric)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/z1/x;

    .line 2
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Long;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v4, "cdbCallStartTimestamp"

    .line 5
    invoke-virtual {p1, v4}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/z1/x;->b()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v4, :cond_2

    .line 9
    iget-object v4, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v4, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/z1/x;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v4, "cdbCallEndTimestamp"

    .line 11
    invoke-virtual {p1, v4}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/z1/x;->a()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v4, :cond_4

    .line 15
    iget-object v4, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v4, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/z1/x;->a()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v4, "cdbCallTimeout"

    .line 17
    invoke-virtual {p1, v4}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    iget-object v4, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v4, :cond_5

    .line 19
    iget-object v4, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v4, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 20
    :cond_5
    invoke-virtual {p2}, Le/i/b/z1/x;->i()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    const-string v4, "cachedBidUsed"

    .line 21
    invoke-virtual {p1, v4}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 22
    iget-object v4, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v4, :cond_6

    .line 23
    iget-object v4, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v4, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 24
    :cond_6
    invoke-virtual {p2}, Le/i/b/z1/x;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    const-string v4, "elapsedTimestamp"

    .line 25
    invoke-virtual {p1, v4}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 26
    invoke-virtual {p2}, Le/i/b/z1/x;->c()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_7

    .line 27
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 28
    :cond_7
    iget-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    if-nez v4, :cond_8

    .line 29
    iget-object v4, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v4, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/z1/n$a;->a:Le/m/e/b0;

    .line 30
    :cond_8
    invoke-virtual {p2}, Le/i/b/z1/x;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v3, "impressionId"

    .line 31
    invoke-virtual {p1, v3}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 32
    invoke-virtual {p2}, Le/i/b/z1/x;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 33
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 34
    :cond_9
    iget-object v3, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    if-nez v3, :cond_a

    .line 35
    iget-object v3, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    .line 36
    :cond_a
    invoke-virtual {p2}, Le/i/b/z1/x;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v3, "requestGroupId"

    .line 37
    invoke-virtual {p1, v3}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 38
    invoke-virtual {p2}, Le/i/b/z1/x;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 39
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 40
    :cond_b
    iget-object v3, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    if-nez v3, :cond_c

    .line 41
    iget-object v3, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/n$a;->c:Le/m/e/b0;

    .line 42
    :cond_c
    invoke-virtual {p2}, Le/i/b/z1/x;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_4
    const-string v1, "zoneId"

    .line 43
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 44
    invoke-virtual {p2}, Le/i/b/z1/x;->g()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    .line 45
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_5

    .line 46
    :cond_d
    iget-object v1, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    if-nez v1, :cond_e

    .line 47
    iget-object v1, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    .line 48
    :cond_e
    invoke-virtual {p2}, Le/i/b/z1/x;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_5
    const-string v1, "profileId"

    .line 49
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 50
    invoke-virtual {p2}, Le/i/b/z1/x;->e()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    .line 51
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_6

    .line 52
    :cond_f
    iget-object v1, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    if-nez v1, :cond_10

    .line 53
    iget-object v1, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/n$a;->d:Le/m/e/b0;

    .line 54
    :cond_10
    invoke-virtual {p2}, Le/i/b/z1/x;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_6
    const-string v0, "readyToSend"

    .line 55
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 56
    iget-object v0, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    if-nez v0, :cond_11

    .line 57
    iget-object v0, p0, Le/i/b/z1/n$a;->e:Le/m/e/k;

    invoke-virtual {v0, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/n$a;->b:Le/m/e/b0;

    .line 58
    :cond_11
    invoke-virtual {p2}, Le/i/b/z1/x;->j()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_7
    return-void
.end method
