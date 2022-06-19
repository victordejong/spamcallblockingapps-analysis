.class public final Le/a/k/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k/a/j/a$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/u/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/u/g<",
            "Le/a/k/a/j/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/View;

.field public final c:Ljava/lang/Integer;

.field public final d:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    .line 1
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/j/a;->b:Landroid/view/View;

    iput-object p2, p0, Le/a/k/a/j/a;->c:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/k/a/j/a;->d:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    .line 2
    new-instance p1, Ls1/u/g;

    invoke-direct {p1}, Ls1/u/g;-><init>()V

    iput-object p1, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    return-void
.end method


# virtual methods
.method public final a(Le/a/k/a/j/a$a;)V
    .locals 1

    const-string v0, "toastMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    invoke-virtual {v0, p1}, Ls1/u/g;->addLast(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 3
    iget p1, p1, Ls1/u/g;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/k/a/j/a;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 2
    invoke-virtual {v0}, Ls1/u/g;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k/a/j/a;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    invoke-virtual {v0}, Ls1/u/g;->clear()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 6
    invoke-virtual {v0}, Ls1/u/g;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v0, Ls1/u/g;->a:I

    .line 7
    iget-object v0, v0, Ls1/u/g;->b:[Ljava/lang/Object;

    .line 8
    aget-object v0, v0, v1

    .line 9
    move-object v6, v0

    check-cast v6, Le/a/k/a/j/a$a;

    .line 10
    new-instance v5, Le/a/k/a/j/a$b;

    invoke-direct {v5, p0}, Le/a/k/a/j/a$b;-><init>(Le/a/k/a/j/a;)V

    .line 11
    iget-object v0, p0, Le/a/k/a/j/a;->d:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    const-string v1, "dismissListener"

    const-string v2, "toastMessage"

    if-eqz v0, :cond_3

    .line 12
    sget-object v3, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->i:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$a;

    .line 13
    iget-object v3, p0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 14
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queue"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 15
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 16
    iget-object v1, v6, Le/a/k/a/j/a$a;->a:Ljava/lang/String;

    .line 17
    iget-boolean v2, v6, Le/a/k/a/j/a$a;->b:Z

    .line 18
    iget-object v4, v6, Le/a/k/a/j/a$a;->d:Le/a/k/a/k/a;

    .line 19
    invoke-virtual {v0, v1, v2, v4}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->j(Ljava/lang/String;ZLe/a/k/a/k/a;)V

    .line 20
    iget-wide v1, v6, Le/a/k/a/j/a$a;->c:J

    const-wide/16 v7, 0x0

    cmp-long v4, v1, v7

    if-ltz v4, :cond_2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->h(JLs1/u/g;)V

    .line 22
    :cond_2
    new-instance v1, Le/a/k/a/j/g;

    invoke-direct {v1, v6, v3, v0, v5}, Le/a/k/a/j/g;-><init>(Le/a/k/a/j/a$a;Ls1/u/g;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Ls1/z/b/a;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->setDismissListener(Ls1/z/b/a;)V

    goto/16 :goto_0

    .line 23
    :cond_3
    sget-object v0, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->i:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$a;

    .line 24
    iget-object v0, p0, Le/a/k/a/j/a;->b:Landroid/view/View;

    .line 25
    iget-object v3, p0, Le/a/k/a/j/a;->c:Ljava/lang/Integer;

    .line 26
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v4, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anchorView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-direct {v4, v1, v2, v9, v8}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/videocallerid/R$dimen;->toast_with_action_view_horizontal_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v10, -0x1

    invoke-direct {v2, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x50

    .line 32
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 36
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, v6, Le/a/k/a/j/a$a;->a:Ljava/lang/String;

    .line 38
    iget-boolean v2, v6, Le/a/k/a/j/a$a;->b:Z

    .line 39
    iget-object v3, v6, Le/a/k/a/j/a$a;->d:Le/a/k/a/k/a;

    .line 40
    invoke-virtual {v4, v1, v2, v3}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->j(Ljava/lang/String;ZLe/a/k/a/k/a;)V

    .line 41
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v7, v10, v10, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 43
    new-instance v1, Le/a/k/a/j/b;

    invoke-direct {v1, v2}, Le/a/k/a/j/b;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->setDismissListener(Ls1/z/b/a;)V

    .line 44
    new-instance v8, Le/a/k/a/j/f;

    move-object v1, v8

    move-object v3, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Le/a/k/a/j/f;-><init>(Landroid/widget/PopupWindow;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/view/View;Ls1/z/b/a;Le/a/k/a/j/a$a;Landroid/view/View;)V

    invoke-static {v0, v8}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    :cond_4
    :goto_0
    return-void

    .line 45
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
