.class public abstract Le/a/l/c/a/i;
.super Le/a/l/c/a/g;
.source "SourceFile"


# instance fields
.field public final d:Le/a/p5/i0;

.field public final e:Ls1/g;

.field public final f:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    .line 2
    iput-object p2, p0, Le/a/l/c/a/i;->f:Le/a/o2/m;

    .line 3
    new-instance p2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le/a/l/c/a/i;->d:Le/a/p5/i0;

    .line 4
    new-instance p2, Le/a/l/c/a/i$a;

    invoke-direct {p2, p0, p1}, Le/a/l/c/a/i$a;-><init>(Le/a/l/c/a/i;Landroid/view/View;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/c/a/i;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public final O4(Landroid/widget/TextView;Le/a/l/c/a/a0;)V
    .locals 7

    const-string v0, "$this$setCtaSpec"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-eqz p2, :cond_2

    .line 2
    iget-object v0, p2, Le/a/l/c/a/a0;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Le/a/l/c/a/i;->f:Le/a/o2/m;

    const/4 v4, 0x0

    .line 5
    iget-object v5, p2, Le/a/l/c/a/a0;->d:Le/a/l/c/a/z;

    const/4 v6, 0x4

    move-object v1, p1

    move-object v3, p0

    .line 6
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p0, Le/a/l/c/a/i;->d:Le/a/p5/i0;

    .line 8
    iget v1, p2, Le/a/l/c/a/a0;->b:I

    .line 9
    invoke-virtual {v0, v1}, Le/a/p5/i0;->l(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget p2, p2, Le/a/l/c/a/a0;->c:I

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0404d3

    invoke-static {p2, v0}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V
    .locals 1

    const-string v0, "$this$setTextSpec"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p2, Le/a/l/c/a/x2;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p2, Le/a/l/c/a/x2;->b:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-boolean v0, p2, Le/a/l/c/a/x2;->d:Z

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 8
    iget v0, p2, Le/a/l/c/a/x2;->e:F

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x2

    .line 10
    iget p2, p2, Le/a/l/c/a/x2;->c:F

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
