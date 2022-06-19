.class public final Le/i/b/u2/c/k$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/c/q;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/net/URL;",
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

.field public final d:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    move-object v1, v2

    move-object v3, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "optoutClickUrl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "longLegalText"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "optoutImageUrl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 9
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v2, p0, Le/i/b/u2/c/k$a;->a:Le/m/e/b0;

    if-nez v2, :cond_5

    .line 11
    iget-object v2, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v4, Ljava/net/URI;

    invoke-virtual {v2, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/k$a;->a:Le/m/e/b0;

    .line 12
    :cond_5
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    goto :goto_0

    .line 13
    :pswitch_1
    iget-object v3, p0, Le/i/b/u2/c/k$a;->c:Le/m/e/b0;

    if-nez v3, :cond_6

    .line 14
    iget-object v3, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/c/k$a;->c:Le/m/e/b0;

    .line 15
    :cond_6
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 16
    :pswitch_2
    iget-object v1, p0, Le/i/b/u2/c/k$a;->b:Le/m/e/b0;

    if-nez v1, :cond_7

    .line 17
    iget-object v1, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v4, Ljava/net/URL;

    invoke-virtual {v1, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/k$a;->b:Le/m/e/b0;

    .line 18
    :cond_7
    invoke-virtual {v1, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    goto/16 :goto_0

    .line 19
    :cond_8
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 20
    new-instance p1, Le/i/b/u2/c/k;

    invoke-direct {p1, v2, v1, v3}, Le/i/b/u2/c/k;-><init>(Ljava/net/URI;Ljava/net/URL;Ljava/lang/String;)V

    move-object v2, p1

    :goto_2
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x6a98511 -> :sswitch_2
        0x2d87fc6a -> :sswitch_1
        0x629a53a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(NativePrivacy)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/c/q;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v0, "optoutClickUrl"

    .line 4
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 5
    invoke-virtual {p2}, Le/i/b/u2/c/q;->a()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/i/b/u2/c/k$a;->a:Le/m/e/b0;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v1, Ljava/net/URI;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/k$a;->a:Le/m/e/b0;

    .line 9
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/c/q;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "optoutImageUrl"

    .line 10
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 11
    invoke-virtual {p2}, Le/i/b/u2/c/q;->b()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Le/i/b/u2/c/k$a;->b:Le/m/e/b0;

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v1, Ljava/net/URL;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/k$a;->b:Le/m/e/b0;

    .line 15
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/c/q;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "longLegalText"

    .line 16
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 17
    invoke-virtual {p2}, Le/i/b/u2/c/q;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Le/i/b/u2/c/k$a;->c:Le/m/e/b0;

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Le/i/b/u2/c/k$a;->d:Le/m/e/k;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/k$a;->c:Le/m/e/b0;

    .line 21
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/c/q;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 22
    :goto_2
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_3
    return-void
.end method
