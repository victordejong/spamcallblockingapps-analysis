.class public final Le/a/h/b/a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V
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

    iput p1, p0, Le/a/h/b/a$c;->b:I

    iput-object p2, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/h/b/a$c;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "parent"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/m/b;

    const v3, 0x7f0d026c

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 4
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/a/m/b;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 6
    :pswitch_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Le/a/a/m/y2;

    const v3, 0x7f0d02db

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 9
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 10
    invoke-direct {v0, p1, v1}, Le/a/a/m/y2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 11
    :pswitch_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Le/a/a/m/i;

    const v3, 0x7f0d0287

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 14
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 15
    invoke-direct {v0, p1, v1}, Le/a/a/m/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 16
    :pswitch_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Le/a/a/m/j;

    const v3, 0x7f0d028c

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 19
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 20
    invoke-direct {v0, p1, v1}, Le/a/a/m/j;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 21
    :pswitch_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 22
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Le/a/a/m/f;

    const v3, 0x7f0d0274

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 24
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 25
    invoke-direct {v0, p1, v1}, Le/a/a/m/f;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 26
    :pswitch_5
    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Le/a/a/m/k;

    const v3, 0x7f0d0290

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 29
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 30
    invoke-direct {v0, p1, v1}, Le/a/a/m/k;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 31
    :pswitch_6
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Le/a/a/m/a;

    const v3, 0x7f0d02aa

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 34
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 35
    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->CALL_TAB_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-direct {v0, p1, v1, v2}, Le/a/a/m/a;-><init>(Landroid/view/View;Le/a/o2/m;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-object v0

    .line 36
    :pswitch_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Le/a/a/m/d;

    const v3, 0x7f0d0271

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 39
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 40
    invoke-direct {v0, p1, v1}, Le/a/a/m/d;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 41
    :pswitch_8
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Le/a/a/m/e;

    const v3, 0x7f0d0272

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 44
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 45
    invoke-direct {v0, p1, v1}, Le/a/a/m/e;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 46
    :pswitch_9
    check-cast p1, Landroid/view/ViewGroup;

    .line 47
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Le/a/a/m/w2;

    const v3, 0x7f0d02d1

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 49
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 50
    invoke-direct {v0, p1, v1}, Le/a/a/m/w2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 51
    :pswitch_a
    check-cast p1, Landroid/view/ViewGroup;

    .line 52
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Le/a/a/m/v2;

    const v3, 0x7f0d02cf

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 54
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 55
    invoke-direct {v0, p1, v1}, Le/a/a/m/v2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 56
    :pswitch_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 57
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Le/a/a/m/g;

    const v3, 0x7f0d027a

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 59
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 60
    invoke-direct {v0, p1, v1}, Le/a/a/m/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 61
    :pswitch_c
    check-cast p1, Landroid/view/ViewGroup;

    .line 62
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Le/a/a/m/n2;

    const v3, 0x7f0d02b9

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 64
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 65
    invoke-direct {v0, p1, v1}, Le/a/a/m/n2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 66
    :pswitch_d
    check-cast p1, Landroid/view/ViewGroup;

    .line 67
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Le/a/a/m/w;

    const v3, 0x7f0d02ab

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 69
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 70
    invoke-direct {v0, p1, v1}, Le/a/a/m/w;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 71
    :pswitch_e
    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Le/a/a/m/v;

    const v3, 0x7f0d02a9

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 74
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 75
    invoke-direct {v0, p1, v1}, Le/a/a/m/v;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 76
    :pswitch_f
    check-cast p1, Landroid/view/ViewGroup;

    .line 77
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Le/a/a/m/d;

    const v3, 0x7f0d0270

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 79
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 80
    invoke-direct {v0, p1, v1}, Le/a/a/m/d;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 81
    :pswitch_10
    check-cast p1, Landroid/view/ViewGroup;

    .line 82
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Le/a/a/m/u2;

    const v3, 0x7f0d02cd

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 84
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 85
    invoke-direct {v0, p1, v1}, Le/a/a/m/u2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 86
    :pswitch_11
    check-cast p1, Landroid/view/ViewGroup;

    .line 87
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Le/a/a/m/x;

    const v3, 0x7f0d02ac

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 89
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 90
    invoke-direct {v0, p1, v1}, Le/a/a/m/x;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 91
    :pswitch_12
    check-cast p1, Landroid/view/ViewGroup;

    .line 92
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Le/a/a/m/a3;

    const v3, 0x7f0d02dc

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 94
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 95
    invoke-direct {v0, p1, v1}, Le/a/a/m/a3;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 96
    :pswitch_13
    check-cast p1, Landroid/view/ViewGroup;

    .line 97
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Le/a/a/m/x2;

    const v3, 0x7f0d02d9

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 99
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 100
    invoke-direct {v0, p1, v1}, Le/a/a/m/x2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 101
    :pswitch_14
    check-cast p1, Landroid/view/ViewGroup;

    .line 102
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Le/a/a/m/z2;

    const v3, 0x7f0d02da

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 104
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 105
    invoke-direct {v0, p1, v1}, Le/a/a/m/z2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 106
    :pswitch_15
    check-cast p1, Landroid/view/ViewGroup;

    .line 107
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Le/a/a/m/t2;

    const v3, 0x7f0d02cb

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 109
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 110
    invoke-direct {v0, p1, v1}, Le/a/a/m/t2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 111
    :pswitch_16
    check-cast p1, Landroid/view/ViewGroup;

    .line 112
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Le/a/a/m/m2;

    const v3, 0x7f0d02b7

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 114
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 115
    invoke-direct {v0, p1, v1}, Le/a/a/m/m2;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 116
    :pswitch_17
    check-cast p1, Landroid/view/ViewGroup;

    .line 117
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Le/a/a/m/h;

    const v3, 0x7f0d027e

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 119
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 120
    invoke-direct {v0, p1, v1}, Le/a/a/m/h;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 121
    :pswitch_18
    check-cast p1, Landroid/view/ViewGroup;

    .line 122
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Le/a/a/m/r;

    const v3, 0x7f0d02a3

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 124
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 125
    invoke-direct {v0, p1, v1}, Le/a/a/m/r;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 126
    :pswitch_19
    check-cast p1, Landroid/view/ViewGroup;

    .line 127
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Le/a/a/m/q;

    const v3, 0x7f0d0293

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 129
    iget-object v1, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 130
    invoke-direct {v0, p1, v1}, Le/a/a/m/q;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    .line 131
    :pswitch_1a
    check-cast p1, Landroid/view/ViewGroup;

    .line 132
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/a;

    .line 136
    iget-object v1, p1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 137
    iget-object v2, p1, Le/a/h/b/a;->K:Le/a/l4/c;

    .line 138
    iget-object p1, p1, Le/a/h/b/a;->R:Le/a/p5/c;

    .line 139
    new-instance v3, Le/a/h/b/d/a/b/f;

    invoke-direct {v3, v0, v1, v2, p1}, Le/a/h/b/d/a/b/f;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V

    return-object v3

    .line 140
    :pswitch_1b
    check-cast p1, Landroid/view/ViewGroup;

    .line 141
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Le/a/h/b/d/a/b/r;

    const v3, 0x7f0d034f

    .line 143
    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 144
    iget-object v1, p0, Le/a/h/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/a;

    .line 145
    iget-object v2, v1, Le/a/h/b/a;->x:Le/a/o2/f;

    .line 146
    iget-object v3, v1, Le/a/h/b/a;->K:Le/a/l4/c;

    .line 147
    iget-object v1, v1, Le/a/h/b/a;->R:Le/a/p5/c;

    .line 148
    invoke-direct {v0, p1, v2, v3, v1}, Le/a/h/b/d/a/b/r;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
