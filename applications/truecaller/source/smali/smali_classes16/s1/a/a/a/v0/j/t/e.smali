.class public final Ls1/a/a/a/v0/j/t/e;
.super Ls1/a/a/a/v0/j/t/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/q<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/q;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/a/i;->f:Ls1/a/a/a/v0/a/i;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/a/g;->s(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "module.builtIns.charType"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/16 p1, 0x3d

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 2
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 4
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v2, "\\r"

    goto :goto_1

    :pswitch_2
    const-string v2, "\\f"

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    goto :goto_1

    .line 5
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v5

    int-to-byte v5, v5

    if-eqz v5, :cond_0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    const/16 v6, 0xe

    if-eq v5, v6, :cond_0

    const/16 v6, 0xf

    if-eq v5, v6, :cond_0

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    const/16 v6, 0x12

    if-eq v5, v6, :cond_0

    const/16 v6, 0x13

    if-eq v5, v6, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "?"

    :goto_1
    aput-object v2, v1, v4

    const-string v2, "\\u%04X (\'%s\')"

    const-string v3, "java.lang.String.format(this, *args)"

    .line 7
    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
