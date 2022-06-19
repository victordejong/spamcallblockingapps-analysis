.class public final Lcom/truecaller/bizmon/newBusiness/editAddress/ui/EditBizAddressActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/editAddress/ui/EditBizAddressActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "()V",
        "<init>",
        "bizmon_release"
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
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Le/a/b/a/h/c/a;->f:Le/a/b/a/h/c/a;

    .line 2
    sget-object v1, Le/a/b/a/h/c/a;->e:Ljava/lang/String;

    sget-object v1, Le/a/b/a/h/c/a;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Le/a/b/a/h/c/a;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Le/a/b/a/h/c/a;

    .line 6
    invoke-virtual {v0}, Le/a/b/a/h/c/a;->QA()Le/a/b/a/h/c/l;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/a/h/c/l;->i()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    .line 4
    sget v0, Lcom/truecaller/bizmon/R$layout;->activity_edit_biz_address:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "beginTransaction()"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/truecaller/bizmon/R$id;->fragment_container:I

    new-instance v1, Le/a/b/a/h/c/a;

    invoke-direct {v1}, Le/a/b/a/h/c/a;-><init>()V

    sget-object v2, Le/a/b/a/h/c/a;->f:Le/a/b/a/h/c/a;

    .line 9
    sget-object v2, Le/a/b/a/h/c/a;->e:Ljava/lang/String;

    sget-object v2, Le/a/b/a/h/c/a;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 11
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    :goto_0
    return-void
.end method
