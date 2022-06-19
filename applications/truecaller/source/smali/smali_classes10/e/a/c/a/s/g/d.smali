.class public final Le/a/c/a/s/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/s/g/f;


# direct methods
.method public constructor <init>(Le/a/c/a/s/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-static {p1}, Le/a/c/a/s/g/f;->b(Le/a/c/a/s/g/f;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-static {p1}, Le/a/c/a/s/g/f;->c(Le/a/c/a/s/g/f;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    .line 6
    iget-object v0, p1, Le/a/c/a/s/g/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/a/c/a/s/g/f;->getOnTagSelected()Ls1/z/b/p;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    invoke-interface {p1, v0, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/c/a/s/g/d;->a:Le/a/c/a/s/g/f;

    .line 9
    invoke-virtual {p1}, Le/a/c/a/s/g/f;->d()V

    :cond_1
    :goto_0
    return-void
.end method
