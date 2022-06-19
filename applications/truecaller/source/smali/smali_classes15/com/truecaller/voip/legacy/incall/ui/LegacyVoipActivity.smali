.class public final Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;
.super Le/a/d/b/a/a/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onBackPressed",
        "<init>",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d/b/a/a/c;-><init>()V

    return-void
.end method

.method public static final pa(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/legacy/incall/ui/LegacyVoipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v2, v1, Le/a/d/b/a/a/a;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Le/a/d/b/a/a/a;

    .line 4
    iget-object v1, v1, Le/a/d/b/a/a/a;->f:Le/a/d/b/a/a/h;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/d/b/a/a/j;

    .line 5
    iget-object v1, v1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->BACK:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {v1, v2}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    goto :goto_0

    :cond_1
    const-string v0, "presenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 7
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/e/a2;->i0(Landroid/app/Activity;)V

    const v0, 0x1020002

    .line 3
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<View>(android.R.id.content)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    invoke-virtual {p0}, Ln3/r/a/l;->supportPostponeEnterTransition()V

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 6
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    new-instance p1, Le/a/d/b/a/a/a;

    invoke-direct {p1}, Le/a/d/b/a/a/a;-><init>()V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, p1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 9
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method
