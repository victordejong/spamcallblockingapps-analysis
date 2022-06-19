.class public Le/a/i/h0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/y;
.implements Le/m/e/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/e/y<",
        "Le/a/i/c/a/u;",
        ">;",
        "Le/m/e/p<",
        "Le/a/i/c/a/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/q;Ljava/lang/reflect/Type;Le/m/e/o;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Le/a/i/c/a/u$a;->b:Le/a/i/c/a/u$a;

    const-string v1, "json"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeOfT"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "network"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    goto :goto_0

    :sswitch_1
    const-string p2, "house"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    const-string p2, "network_cache"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Le/a/i/c/a/u$c;->b:Le/a/i/c/a/u$c;

    goto :goto_0

    :sswitch_3
    const-string p2, "offline"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    :cond_1
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c4df21d -> :sswitch_3
        -0x24ee6dcf -> :sswitch_2
        0x5edc720 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/x;)Le/m/e/q;
    .locals 1

    .line 1
    check-cast p1, Le/a/i/c/a/u;

    const-string v0, "src"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfSrc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Le/m/e/w;

    .line 4
    iget-object p1, p1, Le/a/i/c/a/u;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p2, p1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
