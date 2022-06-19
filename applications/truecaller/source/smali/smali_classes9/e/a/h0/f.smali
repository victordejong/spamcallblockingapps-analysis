.class public abstract Le/a/h0/f;
.super Ln3/b/a/h;
.source "SourceFile"


# instance fields
.field public a:Le/a/h0/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/f;->a:Le/a/h0/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 2
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    const-string v1, "Users that have not signed-in are not supposed to have access to this activity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 4
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public pa(Le/a/h0/g;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/h0/f;->a:Le/a/h0/g;

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 3
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iget-object p1, p0, Le/a/h0/f;->a:Le/a/h0/g;

    const v1, 0x1020002

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 6
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    return-void
.end method
