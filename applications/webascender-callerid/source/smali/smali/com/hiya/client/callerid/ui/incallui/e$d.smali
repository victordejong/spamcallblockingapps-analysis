.class final Lcom/hiya/client/callerid/ui/incallui/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/client/callerid/ui/a0/c$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$d;->b(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audioDevices"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hiya/client/callerid/ui/a0/c$a;

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/c$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/hiya/client/callerid/ui/a0/c$a;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_6

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/hiya/client/callerid/ui/a0/c$a;

    .line 5
    invoke-virtual {v8}, Lcom/hiya/client/callerid/ui/a0/c$a;->d()I

    move-result v9

    if-eq v9, v6, :cond_4

    invoke-virtual {v8}, Lcom/hiya/client/callerid/ui/a0/c$a;->d()I

    move-result v8

    if-ne v8, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_2

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/a0/c$a;->d()I

    move-result v0

    if-ne v0, v3, :cond_7

    const/4 v5, 0x1

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->I:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v5, :cond_8

    sget v1, Lcom/hiya/client/callerid/ui/o;->l:I

    goto :goto_5

    :cond_8
    sget v1, Lcom/hiya/client/callerid/ui/o;->k:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->p0:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 10
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v5, :cond_9

    .line 11
    sget v4, Lcom/hiya/client/callerid/ui/o;->l:I

    goto :goto_6

    :cond_9
    sget v4, Lcom/hiya/client/callerid/ui/o;->k:I

    .line 12
    :goto_6
    invoke-static {v3, v4}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v5, :cond_a

    .line 16
    sget v3, Lcom/hiya/client/callerid/ui/m;->c:I

    goto :goto_7

    :cond_a
    sget v3, Lcom/hiya/client/callerid/ui/m;->b:I

    .line 17
    :goto_7
    invoke-static {v2, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 19
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "speaker"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/s;->y:I

    goto :goto_8

    :cond_b
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$d;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/s;->p:I

    :goto_8
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
