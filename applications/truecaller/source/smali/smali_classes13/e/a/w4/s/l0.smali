.class public final Le/a/w4/s/l0;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/s/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/t<",
        "Le/a/e/c2/t$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/f/a/i;

.field public final c:Le/a/w4/s/e0;

.field public final d:Le/a/l4/c;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/o2/l;


# direct methods
.method public constructor <init>(Le/f/a/i;Le/a/w4/s/e0;Le/a/l4/c;Le/a/p5/c;Le/a/o2/l;)V
    .locals 1

    const-string v0, "requestManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    iput-object p1, p0, Le/a/w4/s/l0;->b:Le/f/a/i;

    iput-object p2, p0, Le/a/w4/s/l0;->c:Le/a/w4/s/e0;

    iput-object p3, p0, Le/a/w4/s/l0;->d:Le/a/l4/c;

    iput-object p4, p0, Le/a/w4/s/l0;->e:Le/a/p5/c;

    iput-object p5, p0, Le/a/w4/s/l0;->f:Le/a/o2/l;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/l0;->c:Le/a/w4/s/e0;

    check-cast p1, Le/a/w4/s/r0;

    invoke-interface {v0, p1, p2}, Le/a/v0;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create viewholder for view type "

    invoke-static {v0, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :pswitch_0
    new-instance p2, Le/a/w4/s/l0$a;

    const v2, 0x7f0d04fa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026show_more, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/w4/s/l0$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :pswitch_1
    new-instance p2, Le/a/w4/s/r;

    const v2, 0x7f0d038f

    .line 4
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Le/a/w4/s/r;-><init>(Landroid/view/View;)V

    return-object p2

    .line 6
    :pswitch_2
    new-instance p2, Le/a/w4/s/l0$a;

    const v2, 0x7f0d04e9

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ult_label, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/w4/s/l0$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 7
    :pswitch_3
    new-instance p2, Le/a/w4/s/l0$a;

    const v2, 0x7f0d04e2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ing_state, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/w4/s/l0$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 8
    :pswitch_4
    new-instance p2, Le/a/w4/s/l0$a;

    const v2, 0x7f0d04e1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026me_search, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/w4/s/l0$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 9
    :pswitch_5
    new-instance p2, Le/a/w4/s/l0$a;

    const v2, 0x7f0d0395

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026indicator, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/w4/s/l0$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 10
    :pswitch_6
    new-instance v2, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "parent.context"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v3, p0, Le/a/w4/s/l0;->d:Le/a/l4/c;

    .line 12
    iget-object v4, p0, Le/a/w4/s/l0;->e:Le/a/p5/c;

    .line 13
    iget-object v5, p0, Le/a/w4/s/l0;->b:Le/f/a/i;

    .line 14
    iget-object v6, p0, Le/a/w4/s/l0;->f:Le/a/o2/l;

    .line 15
    new-instance p1, Le/a/w4/s/k0;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Le/a/w4/s/k0;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/l4/c;Le/a/p5/c;Le/f/a/i;Le/a/o2/l;)V

    return-object p1

    .line 16
    :pswitch_7
    new-instance p2, Le/a/w4/s/u;

    const v2, 0x7f0d0070

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/w4/s/u;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a08a1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/l0;->c:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/v0;->Kb()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/l0;->c:Le/a/w4/s/e0;

    invoke-interface {v0, p1}, Le/a/v0;->Za(I)I

    move-result p1

    return p1
.end method
