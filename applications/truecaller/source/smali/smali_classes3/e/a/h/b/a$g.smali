.class public final Le/a/h/b/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    .line 2
    iget-boolean v1, v0, Le/a/h/b/a;->o:Z

    if-eqz v1, :cond_c

    .line 3
    iget-boolean v1, v0, Le/a/h/b/a;->n:Z

    if-nez v1, :cond_c

    .line 4
    iget-object v1, v0, Le/a/h/b/a;->m:Le/a/y/a/c;

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    iget-object v0, v0, Le/a/h/b/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recycler"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_a

    .line 7
    iget-object v5, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    .line 8
    iget-object v5, v5, Le/a/h/b/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz v5, :cond_2

    const v6, 0x7f0a07b3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 9
    :goto_2
    instance-of v6, v5, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_8

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 11
    iget-object v6, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    invoke-static {v6}, Le/a/h/b/a;->b(Le/a/h/b/a;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "view.context"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f07014d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 12
    iget-object v9, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    invoke-static {v9}, Le/a/h/b/a;->b(Le/a/h/b/a;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070162

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 13
    invoke-virtual {v5, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    aget v10, v9, v7

    add-int/2addr v10, v8

    .line 15
    aget v8, v9, v7

    if-le v8, v6, :cond_8

    int-to-float v6, v10

    iget-object v8, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    .line 16
    iget-object v8, v8, Le/a/h/b/a;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_7

    .line 17
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    .line 18
    new-instance v0, Le/a/y/a/c;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "flashButton.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Le/a/y/a/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    iget-object v1, v0, Le/a/y/a/c;->b:Landroid/widget/PopupWindow;

    if-nez v1, :cond_4

    .line 20
    new-instance v1, Landroid/widget/PopupWindow;

    .line 21
    iget-object v2, v0, Le/a/y/a/c;->a:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 22
    invoke-direct {v1, v2, v4, v5, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, v0, Le/a/y/a/c;->b:Landroid/widget/PopupWindow;

    .line 23
    iget-object v1, v0, Le/a/y/a/c;->a:Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "contentView.findViewById(R.id.text)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    .line 24
    iget-object v2, v0, Le/a/y/a/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "contentView.context"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/truecaller/flashsdk/R$string;->flash_tooltip_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, v0, Le/a/y/a/c;->b:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_4
    iget-object v1, v0, Le/a/y/a/c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    iget-object v1, v0, Le/a/y/a/c;->b:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_5

    new-instance v2, Le/a/y/a/b;

    invoke-direct {v2, v0}, Le/a/y/a/b;-><init>(Le/a/y/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 28
    :cond_5
    iget-object v1, v0, Le/a/y/a/c;->b:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_6

    iget-object v2, v0, Le/a/y/a/c;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 29
    :cond_6
    iget-object v1, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    .line 30
    iput-object v0, v1, Le/a/h/b/a;->m:Le/a/y/a/c;

    .line 31
    invoke-static {v1}, Le/a/h/b/a;->a(Le/a/h/b/a;)Le/a/h/b/v$a;

    move-result-object v0

    invoke-interface {v0}, Le/a/h/b/v$a;->j6()V

    .line 32
    iget-object v0, p0, Le/a/h/b/a$g;->a:Le/a/h/b/a;

    .line 33
    iput-boolean v3, v0, Le/a/h/b/a;->o:Z

    .line 34
    invoke-virtual {v0}, Le/a/h/b/a;->c()V

    return-void

    :cond_7
    const-string v0, "dialpadView"

    .line 35
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 36
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_a
    return-void

    .line 37
    :cond_b
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    :goto_4
    return-void
.end method
