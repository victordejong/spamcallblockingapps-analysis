.class public final Le/a/h/b/d/a/c/d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/c/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/h/b/d/a/c/b$a;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0da9

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/b/d/a/c/d;->a:Ls1/g;

    const v1, 0x7f0a0405

    .line 3
    invoke-static {p1, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/h/b/d/a/c/d;->b:Ls1/g;

    const v2, 0x7f0a0daa

    .line 4
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/h/b/d/a/c/d;->c:Ls1/g;

    .line 5
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6
    new-instance v2, Le/a/h/b/d/a/c/d$a;

    invoke-direct {v2, p2, p1}, Le/a/h/b/d/a/c/d$a;-><init>(Le/a/h/b/d/a/c/b$a;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ui/view/TintedImageView;

    .line 8
    new-instance v0, Le/a/h/b/d/a/c/d$b;

    invoke-direct {v0, p2}, Le/a/h/b/d/a/c/d$b;-><init>(Le/a/h/b/d/a/c/b$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/c/d;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/c/d;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
