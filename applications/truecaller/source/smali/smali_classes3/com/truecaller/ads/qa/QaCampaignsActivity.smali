.class public final Lcom/truecaller/ads/qa/QaCampaignsActivity;
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
        "Lcom/truecaller/ads/qa/QaCampaignsActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
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
    .locals 3

    .line 1
    invoke-static {p0}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1}, Le/a/l4/k;->n0(Landroid/app/Activity;ZI)V

    .line 4
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 5
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a0485

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 7
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 9
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 10
    new-instance p1, Le/a/i/g0/f;

    invoke-direct {p1}, Le/a/i/g0/f;-><init>()V

    const-class v2, Lcom/truecaller/ads/qa/QaCampaignsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    invoke-virtual {v1}, Ln3/r/a/f0;->f()I

    return-void
.end method
