.class public final Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/util/background/qa/WorkActionStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 7

    const-string v0, "textView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$c;->a:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$p;

    const/16 v4, 0x18

    invoke-static {v0, v4}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, v1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
