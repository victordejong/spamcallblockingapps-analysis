.class public final Le/a/e/b/b/l;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/b/j;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field public final d:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/e/b/b/l;->c:Landroid/view/View;

    iput-object p2, p0, Le/a/e/b/b/l;->d:Le/a/o2/m;

    const v0, 0x7f0a1179

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/e/b/b/l;->a:Landroid/widget/TextView;

    const v0, 0x7f0a1022

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/e/b/b/l;->b:Landroid/widget/TextView;

    const v0, 0x7f0a05bc

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le/a/e/b/b/l$a;

    invoke-direct {v1, p0}, Le/a/e/b/b/l$a;-><init>(Le/a/e/b/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    .line 5
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 6
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/b/l;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "size"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/b/l;->b:Landroid/widget/TextView;

    const-string v1, "sizeView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/b/l;->a:Landroid/widget/TextView;

    const-string v1, "textView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/b/l;->b:Landroid/widget/TextView;

    const-string v1, "sizeView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
