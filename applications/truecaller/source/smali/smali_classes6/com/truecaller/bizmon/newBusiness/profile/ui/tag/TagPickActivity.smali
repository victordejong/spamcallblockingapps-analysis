.class public final Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/a/a/c/c$e;
.implements Le/a/b/a/a/a/c/a$f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u000eJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0012\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;",
        "Ln3/b/a/h;",
        "Le/a/b/a/a/a/c/c$e;",
        "Le/a/b/a/a/a/c/a$f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/b0/p/c;",
        "availableTag",
        "U",
        "(Le/a/b0/p/c;)V",
        "W3",
        "()V",
        "",
        "",
        "selectedTags",
        "P",
        "(Ljava/util/List;)V",
        "",
        "onSupportNavigateUp",
        "()Z",
        "Le/a/b/m/c;",
        "a",
        "Ls1/g;",
        "pa",
        "()Le/a/b/m/c;",
        "binding",
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


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public P(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedTags"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-static {p1}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object p1

    const-string v1, "tagSelectionResultKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public U(Le/a/b0/p/c;)V
    .locals 6

    const-string v0, "availableTag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Le/a/b0/p/c;->a:J

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "supportFragmentManager"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "beginTransaction()"

    .line 4
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget p1, Lcom/truecaller/bizmon/R$id;->contentLayout:I

    sget-object v3, Le/a/b/a/a/a/c/a;->i:Le/a/b/a/a/a/c/a$e;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Le/a/b/a/a/a/c/a;

    invoke-direct {v3}, Le/a/b/a/a/a/c/a;-><init>()V

    .line 8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "keyParentId"

    .line 9
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    iput-object p0, v3, Le/a/b/a/a/a/c/a;->f:Le/a/b/a/a/a/c/a$f;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {v2, p1, v3, v0}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 13
    invoke-virtual {v2, v0}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 14
    invoke-virtual {v2}, Ln3/r/a/a;->f()I

    return-void
.end method

.method public W3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->c0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/n/g0;->u0(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;->pa()Le/a/b/m/c;

    move-result-object v0

    const-string v1, "binding"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Le/a/b/m/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "supportFragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "beginTransaction()"

    .line 8
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget p1, Lcom/truecaller/bizmon/R$id;->contentLayout:I

    sget-object v1, Le/a/b/a/a/a/c/c;->j:Le/a/b/a/a/a/c/c$d;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/a/b/a/a/a/c/c;

    invoke-direct {v1}, Le/a/b/a/a/a/c/c;-><init>()V

    .line 12
    iput-object p0, v1, Le/a/b/a/a/a/c/c;->f:Le/a/b/a/a/a/c/c$e;

    .line 13
    iput-object p0, v1, Le/a/b/a/a/a/c/c;->g:Le/a/b/a/a/a/c/h;

    .line 14
    invoke-virtual {v0, p1, v1}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 15
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;->pa()Le/a/b/m/c;

    move-result-object p1

    .line 17
    iget-object p1, p1, Le/a/b/m/c;->c:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "tagToolbar"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;->pa()Le/a/b/m/c;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/c;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 20
    :cond_1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lcom/truecaller/bizmon/R$drawable;->biz_toolbar_close:I

    invoke-virtual {p1, v0}, Ln3/b/a/a;->s(I)V

    :cond_2
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method public final pa()Le/a/b/m/c;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/profile/ui/tag/TagPickActivity;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/m/c;

    return-object v0
.end method
