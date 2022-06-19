.class public final Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/util/background/qa/WorkActionStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/util/background/qa/WorkActionStatusActivity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y2/g;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8
    invoke-static {v0, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->a:Ljava/util/List;

    return-void

    :cond_1
    const-string p1, "groupedActions"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p1, p1, Le/a/y2/g;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;

    const-string v1, "data"

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;

    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;->a:Landroid/widget/TextView;

    new-instance v1, Le/a/o5/a2/k/a;

    invoke-direct {v1, p1, p2}, Le/a/o5/a2/k/a;-><init>(Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.background_work.PeriodicActionBucket"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/y2/g;

    .line 7
    check-cast p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;

    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;->b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

    .line 8
    iget-object v0, v0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->d:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/m0/x;

    .line 10
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->a:Landroid/widget/TextView;

    .line 12
    iget-object v2, p2, Le/a/y2/g;->b:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->b:Landroid/widget/TextView;

    const-string v2, "Internet required: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-boolean p2, p2, Le/a/y2/g;->c:Z

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\nStatus: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 17
    iget-object p2, v0, Ln3/m0/x;->b:Ln3/m0/x$a;

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Unknown"

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, v0, Ln3/m0/x;->b:Ln3/m0/x$a;

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 20
    :goto_1
    sget-object v1, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    if-ne v0, v1, :cond_3

    .line 21
    iget-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object v0, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;

    const v2, 0x1090003

    invoke-static {p1, v2, v1, v0}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;-><init>(Landroid/widget/TextView;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;

    const v2, 0x1090004

    invoke-static {p1, v2, v1, v0}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$b;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
