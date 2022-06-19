.class public final Le/i/b/u2/c/g$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/c/m;",
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
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/u2/c/o;",
            ">;"
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
    iput-object p1, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

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
    const-class v0, Ljava/lang/String;

    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v7

    if-ne v7, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "domain"

    .line 9
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    iget-object v3, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    if-nez v3, :cond_2

    .line 11
    iget-object v3, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    invoke-virtual {v3, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v7, "description"

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 14
    iget-object v2, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    invoke-virtual {v2, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v7, "logoClickUrl"

    .line 17
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 18
    iget-object v4, p0, Le/i/b/u2/c/g$a;->b:Le/m/e/b0;

    if-nez v4, :cond_6

    .line 19
    iget-object v4, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    const-class v6, Ljava/net/URI;

    invoke-virtual {v4, v6}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/u2/c/g$a;->b:Le/m/e/b0;

    .line 20
    :cond_6
    invoke-virtual {v4, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URI;

    goto :goto_0

    :cond_7
    const-string v7, "logo"

    .line 21
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 22
    iget-object v5, p0, Le/i/b/u2/c/g$a;->c:Le/m/e/b0;

    if-nez v5, :cond_8

    .line 23
    iget-object v5, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    const-class v6, Le/i/b/u2/c/o;

    invoke-virtual {v5, v6}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v5

    iput-object v5, p0, Le/i/b/u2/c/g$a;->c:Le/m/e/b0;

    .line 24
    :cond_8
    invoke-virtual {v5, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/i/b/u2/c/o;

    goto/16 :goto_0

    .line 25
    :cond_9
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 26
    :cond_a
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 27
    new-instance p1, Le/i/b/u2/c/g;

    invoke-direct {p1, v3, v2, v4, v5}, Le/i/b/u2/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Le/i/b/u2/c/o;)V

    move-object v3, p1

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(NativeAdvertiser)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/c/m;

    .line 2
    const-class v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "domain"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/c/m;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/c/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "description"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/c/m;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/g$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "logoClickUrl"

    .line 17
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/c/m;->d()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v0, p0, Le/i/b/u2/c/g$a;->b:Le/m/e/b0;

    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    const-class v1, Ljava/net/URI;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/g$a;->b:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/c/m;->d()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "logo"

    .line 23
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/c/m;->c()Le/i/b/u2/c/o;

    move-result-object v0

    if-nez v0, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Le/i/b/u2/c/g$a;->c:Le/m/e/b0;

    if-nez v0, :cond_8

    .line 27
    iget-object v0, p0, Le/i/b/u2/c/g$a;->d:Le/m/e/k;

    const-class v1, Le/i/b/u2/c/o;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/g$a;->c:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/c/m;->c()Le/i/b/u2/c/o;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 29
    :goto_3
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_4
    return-void
.end method
