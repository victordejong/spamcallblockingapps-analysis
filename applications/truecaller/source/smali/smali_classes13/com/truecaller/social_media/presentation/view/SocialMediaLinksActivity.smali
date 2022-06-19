.class public final Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "<init>",
        "()V",
        "social-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/truecaller/social_media/R$layout;->activity_social_media_links:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget v1, Lcom/truecaller/social_media/R$id;->toolbarSocialMediaLinks:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 6
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 7
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Ln3/b/a/a;->n(Z)V

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Ln3/b/a/a;->q(F)V

    .line 10
    sget v3, Lcom/truecaller/social_media/R$string;->to_know_more:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    new-instance v2, Le/a/f0/h/c/c;

    invoke-direct {v2, p0}, Le/a/f0/h/c/c;-><init>(Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    sget v1, Lcom/truecaller/social_media/R$id;->container:I

    .line 13
    new-instance v2, Le/a/f0/h/c/d;

    invoke-direct {v2}, Le/a/f0/h/c/d;-><init>()V

    .line 14
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "arg_source"

    .line 15
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "social_media_links_tag"

    const-string v3, "$this$addFragmentStateLoss"

    .line 17
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fragment"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tag"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 19
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, v3}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 20
    invoke-virtual {v4, v1, v2, p1, v0}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 21
    invoke-virtual {v4}, Ln3/r/a/a;->g()I

    const-string p1, "supportFragmentManager.b\u2026wingStateLoss()\n        }"

    .line 22
    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
