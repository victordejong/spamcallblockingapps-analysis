.class public final Le/a/f5/h/b/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Le/a/k3/h;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le/a/p5/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;",
            "Le/a/p5/c0;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Le/a/f5/h/b/b;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/f5/h/b/b;->c:Ljava/util/List;

    iput-object p3, p0, Le/a/f5/h/b/b;->d:Le/a/p5/c0;

    .line 2
    new-instance p1, Le/a/k3/a;

    invoke-direct {p1}, Le/a/k3/a;-><init>()V

    iput-object p1, p0, Le/a/f5/h/b/b;->a:Le/a/k3/h;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f5/h/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f5/h/b/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/f5/h/b/b;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/swish/R$layout;->item_swish_number_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "inflater.inflate(R.layou\u2026er_dialog, parent, false)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Le/a/f5/h/b/a;

    invoke-direct {p3, p2}, Le/a/f5/h/b/a;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.truecaller.swish.ui.numberpicker.NumberViewHolder"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Le/a/f5/h/b/a;

    .line 6
    :goto_0
    iget-object v0, p3, Le/a/f5/h/b/a;->a:Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Le/a/f5/h/b/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p3, p3, Le/a/f5/h/b/a;->b:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Le/a/f5/h/b/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Number;

    .line 11
    iget-object v0, p0, Le/a/f5/h/b/b;->d:Le/a/p5/c0;

    iget-object v1, p0, Le/a/f5/h/b/b;->a:Le/a/k3/h;

    invoke-static {p1, v0, v1}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
