.class public final Le/a/a/b/a$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/ViewGroup;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/b/a$b;->b:I

    iput-object p2, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Le/a/a/b/a$b;->b:I

    const v1, 0x7f0d02aa

    const v2, 0x7f0d02ca

    const v3, 0x7f0d02b5

    const v4, 0x7f0d02c2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "parent"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/m/t;

    const v1, 0x7f0d02a6

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/t;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 4
    :pswitch_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/a/a/m/a;

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->SPAM_TAB_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-direct {v0, p1, v1, v2}, Le/a/a/m/a;-><init>(Landroid/view/View;Le/a/o2/m;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-object v0

    .line 8
    :pswitch_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Le/a/a/m/s2;

    .line 11
    invoke-static {p1, v2, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 12
    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    .line 13
    invoke-direct {v0, p1, v1}, Le/a/a/m/s2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 14
    :pswitch_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Le/a/a/m/l2;

    invoke-static {p1, v3, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/l2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 17
    :pswitch_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Le/a/a/m/l;

    invoke-static {p1, v4, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/l;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 20
    :pswitch_5
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Le/a/a/m/l;

    const v1, 0x7f0d02ae

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/l;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 23
    :pswitch_6
    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Le/a/a/m/x2;

    const v1, 0x7f0d02d9

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/x2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 26
    :pswitch_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Le/a/a/m/z2;

    const v1, 0x7f0d02da

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/z2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 29
    :pswitch_8
    check-cast p1, Landroid/view/ViewGroup;

    .line 30
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Le/a/a/m/t2;

    const v1, 0x7f0d02cb

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/t2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 32
    :pswitch_9
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Le/a/a/m/m2;

    const v1, 0x7f0d02b7

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/m2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 35
    :pswitch_a
    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Le/a/a/m/h;

    const v1, 0x7f0d027e

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/h;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 38
    :pswitch_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 39
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Le/a/a/m/r;

    const v1, 0x7f0d02a3

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/r;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 41
    :pswitch_c
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Le/a/a/m/q;

    const v1, 0x7f0d0293

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/q;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 44
    :pswitch_d
    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Le/a/a/m/n2;

    const v1, 0x7f0d02b9

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/n2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 47
    :pswitch_e
    check-cast p1, Landroid/view/ViewGroup;

    .line 48
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Le/a/a/m/x;

    const v1, 0x7f0d02ac

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/x;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 50
    :pswitch_f
    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Le/a/a/m/j;

    const v1, 0x7f0d028c

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/j;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 53
    :pswitch_10
    check-cast p1, Landroid/view/ViewGroup;

    .line 54
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Le/a/a/m/b;

    const v1, 0x7f0d026c

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/b;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 56
    :pswitch_11
    check-cast p1, Landroid/view/ViewGroup;

    .line 57
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Le/a/a/m/y2;

    const v1, 0x7f0d02db

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/y2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 59
    :pswitch_12
    check-cast p1, Landroid/view/ViewGroup;

    .line 60
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Le/a/a/m/i;

    const v1, 0x7f0d0287

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 62
    :pswitch_13
    check-cast p1, Landroid/view/ViewGroup;

    .line 63
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Le/a/a/m/w;

    const v1, 0x7f0d02ab

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/w;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 65
    :pswitch_14
    check-cast p1, Landroid/view/ViewGroup;

    .line 66
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Le/a/a/m/v;

    const v1, 0x7f0d02a9

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/v;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 68
    :pswitch_15
    check-cast p1, Landroid/view/ViewGroup;

    .line 69
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Le/a/a/m/u2;

    const v1, 0x7f0d02cd

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/u2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 71
    :pswitch_16
    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Le/a/a/m/f;

    const v1, 0x7f0d0274

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/f;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 74
    :pswitch_17
    check-cast p1, Landroid/view/ViewGroup;

    .line 75
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Le/a/a/m/w2;

    const v1, 0x7f0d02d1

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/w2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 77
    :pswitch_18
    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Le/a/a/m/v2;

    const v1, 0x7f0d02cf

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/v2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 80
    :pswitch_19
    check-cast p1, Landroid/view/ViewGroup;

    .line 81
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Le/a/a/m/g;

    const v1, 0x7f0d027a

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 83
    :pswitch_1a
    check-cast p1, Landroid/view/ViewGroup;

    .line 84
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Le/a/a/m/a;

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->SPAM_TAB_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-direct {v0, p1, v1, v2}, Le/a/a/m/a;-><init>(Landroid/view/View;Le/a/o2/m;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-object v0

    .line 87
    :pswitch_1b
    check-cast p1, Landroid/view/ViewGroup;

    .line 88
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Le/a/a/m/a3;

    const v1, 0x7f0d02dc

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/a3;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 90
    :pswitch_1c
    check-cast p1, Landroid/view/ViewGroup;

    .line 91
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Le/a/a/m/k;

    const v1, 0x7f0d0290

    invoke-static {p1, v1, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/k;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 93
    :pswitch_1d
    check-cast p1, Landroid/view/ViewGroup;

    .line 94
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Le/a/a/m/s2;

    .line 96
    invoke-static {p1, v2, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 97
    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    .line 98
    invoke-direct {v0, p1, v1}, Le/a/a/m/s2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 99
    :pswitch_1e
    check-cast p1, Landroid/view/ViewGroup;

    .line 100
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Le/a/a/m/l2;

    invoke-static {p1, v3, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/l2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 102
    :pswitch_1f
    check-cast p1, Landroid/view/ViewGroup;

    .line 103
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Le/a/a/m/l;

    invoke-static {p1, v4, v6, v5}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/b/a$b;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/b/a;

    invoke-static {v1}, Le/a/a/b/a;->PA(Le/a/a/b/a;)Le/a/o2/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/a/m/l;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
