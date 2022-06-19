.class public final Le/a/a/n/j/y;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public final o:Lcom/truecaller/messaging/mediamanager/SortOption;

.field public final p:Z

.field public final q:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/messaging/mediamanager/SortOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/mediamanager/SortOption;ZLs1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/messaging/mediamanager/SortOption;",
            "Z",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/mediamanager/SortOption;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedOption"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f13021c

    .line 1
    invoke-direct {p0, p1, v0}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Le/a/a/n/j/y;->o:Lcom/truecaller/messaging/mediamanager/SortOption;

    iput-boolean p3, p0, Le/a/a/n/j/y;->p:Z

    iput-object p4, p0, Le/a/a/n/j/y;->q:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Le/m/a/g/e/d;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ls1/k;

    .line 2
    sget-object v0, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    const v1, 0x7f120d20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    const/4 v1, 0x1

    .line 4
    sget-object v2, Lcom/truecaller/messaging/mediamanager/SortOption;->DATE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

    const v3, 0x7f120d1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p1, v1

    .line 6
    invoke-static {p1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-boolean v1, p0, Le/a/a/n/j/y;->p:Z

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->SIZE_DESC:Lcom/truecaller/messaging/mediamanager/SortOption;

    const v2, 0x7f120d22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcom/truecaller/messaging/mediamanager/SortOption;->SIZE_ASC:Lcom/truecaller/messaging/mediamanager/SortOption;

    const v2, 0x7f120d21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d011f

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a046c

    .line 17
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.findViewById(R.id.container)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/k;

    .line 19
    iget-object v6, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 20
    check-cast v6, Lcom/truecaller/messaging/mediamanager/SortOption;

    .line 21
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const v7, 0x7f0d0297

    .line 23
    invoke-virtual {v1, v7, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Landroid/widget/TextView;

    .line 24
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 25
    new-instance v5, Le/a/a/n/j/y$a;

    invoke-direct {v5, v6, p0, v1, v4}, Le/a/a/n/j/y$a;-><init>(Lcom/truecaller/messaging/mediamanager/SortOption;Le/a/a/n/j/y;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v5, p0, Le/a/a/n/j/y;->o:Lcom/truecaller/messaging/mediamanager/SortOption;

    if-ne v6, v5, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080696

    const v8, 0x7f0405a1

    invoke-static {v5, v6, v8}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 28
    invoke-virtual {v7, v3, v3, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_1
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0, v2}, Le/m/a/g/e/d;->setContentView(Landroid/view/View;)V

    return-void
.end method
