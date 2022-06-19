.class public Lcom/truecaller/ui/FeedbackDialogActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/FeedbackItemView$c;


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Lcom/truecaller/ui/components/FeedbackItemView;

.field public b:Le/a/e/a/i2;

.field public c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/a/e/a/i2;->g:Landroid/view/View;

    .line 4
    check-cast p1, Lcom/truecaller/ui/components/FeedbackItemView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    invoke-virtual {p1}, Le/a/e/a/i2;->a()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->c:Le/a/r2/f;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Le/a/e/l;

    invoke-direct {v0, p0}, Le/a/e/l;-><init>(Lcom/truecaller/ui/FeedbackDialogActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView;->f()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    :cond_0
    return-void
.end method

.method public pa(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Le/a/e/a/i2;->g:Landroid/view/View;

    .line 3
    check-cast p1, Lcom/truecaller/ui/components/FeedbackItemView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/truecaller/ui/FeedbackDialogActivity;->b:Le/a/e/a/i2;

    invoke-virtual {p1}, Le/a/e/a/i2;->a()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
