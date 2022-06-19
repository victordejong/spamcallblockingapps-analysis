.class final Lcom/hiya/client/callerid/ui/incallui/e$f;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$f;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 8

    const-string v0, "showAudioDeviceSelector"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/hiya/client/callerid/ui/r;->b:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/incallui/l;->n()Landroidx/lifecycle/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/client/callerid/ui/a0/c$a;

    .line 8
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 9
    sget v5, Lcom/hiya/client/callerid/ui/r;->c:I

    .line 10
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const-string v5, "itemView"

    .line 11
    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/hiya/client/callerid/ui/p;->S:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/hiya/client/callerid/ui/incallui/e$f$a;

    invoke-direct {v6, v3, p0, p1, v0}, Lcom/hiya/client/callerid/ui/incallui/e$f$a;-><init>(Lcom/hiya/client/callerid/ui/a0/c$a;Lcom/hiya/client/callerid/ui/incallui/e$f;Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget v5, Lcom/hiya/client/callerid/ui/p;->Y:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "itemView.name"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/c$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget v5, Lcom/hiya/client/callerid/ui/p;->d:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/c$a;->d()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 15
    sget v6, Lcom/hiya/client/callerid/ui/o;->n:I

    goto :goto_1

    .line 16
    :cond_0
    sget v6, Lcom/hiya/client/callerid/ui/o;->o:I

    goto :goto_1

    .line 17
    :cond_1
    sget v6, Lcom/hiya/client/callerid/ui/o;->m:I

    .line 18
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    sget v5, Lcom/hiya/client/callerid/ui/p;->n0:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-string v6, "itemView.selected"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/c$a;->a()Z

    move-result v3

    invoke-static {v5, v3}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    const-string v3, "dialogView"

    .line 20
    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/hiya/client/callerid/ui/p;->D:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 23
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$f;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/incallui/e;->b1(Lcom/hiya/client/callerid/ui/incallui/e;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/l;->G()V

    :cond_4
    return-void
.end method
