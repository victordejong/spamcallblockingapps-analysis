.class public final Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;
.super Le/a/r3/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u001d\u0010\u0010\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;",
        "Le/a/r3/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "titleId",
        "setTitle",
        "(I)V",
        "Le/a/s/l/a;",
        "a",
        "Ls1/g;",
        "pa",
        "()Le/a/s/l/a;",
        "binding",
        "<init>",
        "()V",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/r3/a;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->pa()Le/a/s/l/a;

    move-result-object v0

    const-string v1, "binding"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/s/l/a;->a:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->pa()Le/a/s/l/a;

    move-result-object v0

    iget-object v0, v0, Le/a/s/l/a;->b:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ln3/b/a/a;->n(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->pa()Le/a/s/l/a;

    move-result-object v0

    iget-object v0, v0, Le/a/s/l/a;->b:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v2, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b;

    invoke-direct {v2, p0}, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b;-><init>(Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "beginTransaction()"

    .line 10
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-boolean v1, v0, Ln3/r/a/f0;->p:Z

    const p1, 0x7e02000d    # 4.3199976E37f

    .line 12
    new-instance v1, Le/a/s/n/b/a;

    invoke-direct {v1}, Le/a/s/n/b/a;-><init>()V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 14
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    :cond_1
    return-void
.end method

.method public final pa()Le/a/s/l/a;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s/l/a;

    return-object v0
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ln3/b/a/a;->x(I)V

    :cond_0
    return-void
.end method
