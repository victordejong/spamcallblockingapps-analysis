.class public final Le/a/b/p/b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Le/a/b/p/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Le/a/b/p/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b/p/b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Le/a/b/p/b;->b:Le/a/b/p/f;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/p/b;->b:Le/a/b/p/f;

    invoke-interface {v0}, Le/a/b/p/f;->sw()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 2
    iget-object v0, p0, Le/a/b/p/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/b/p/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$color;->white:I

    .line 4
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/b/p/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/bizmon/R$color;->azure:I

    .line 7
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 10
    iget-object p1, p0, Le/a/b/p/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
