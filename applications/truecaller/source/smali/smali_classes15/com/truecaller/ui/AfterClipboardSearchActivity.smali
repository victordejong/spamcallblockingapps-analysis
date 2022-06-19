.class public Lcom/truecaller/ui/AfterClipboardSearchActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# instance fields
.field public a:Ln3/b/a/g;

.field public b:Lcom/truecaller/settings/CallingSettings;

.field public c:Le/a/h3/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/AfterClipboardSearchActivity;->b:Lcom/truecaller/settings/CallingSettings;

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->N7()Le/a/h3/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/AfterClipboardSearchActivity;->c:Le/a/h3/b/a;

    .line 4
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    if-nez p1, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 7
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v2, Le/a/e/k0;

    invoke-direct {v2, p0}, Le/a/e/k0;-><init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/AfterClipboardSearchActivity;->a:Ln3/b/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method
