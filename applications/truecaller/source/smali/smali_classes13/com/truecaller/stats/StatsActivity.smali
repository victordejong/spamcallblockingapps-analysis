.class public final Lcom/truecaller/stats/StatsActivity;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/stats/StatsActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "onSupportNavigateUp",
        "()Z",
        "Le/a/p5/c0;",
        "a",
        "Le/a/p5/c0;",
        "getResourceProvider",
        "()Le/a/p5/c0;",
        "setResourceProvider",
        "(Le/a/p5/c0;)V",
        "resourceProvider",
        "Le/a/b0/e/f;",
        "b",
        "Le/a/b0/e/f;",
        "getRegionUtils",
        "()Le/a/b0/e/f;",
        "setRegionUtils",
        "(Le/a/b0/e/f;)V",
        "regionUtils",
        "<init>",
        "()V",
        "stats_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/p5/c0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/b0/e/f;
    .annotation runtime Ljavax/inject/Inject;
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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    sget v0, Lcom/truecaller/stats/R$layout;->activity_stats:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    .line 5
    invoke-static {p0}, Le/a/l4/k;->q(Landroid/content/Context;)Le/a/j0/m;

    move-result-object v0

    check-cast v0, Le/a/j0/h;

    .line 6
    iget-object v1, v0, Le/a/j0/h;->a:Le/a/p5/o0;

    invoke-interface {v1}, Le/a/p5/o0;->i()Le/a/p5/c0;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 7
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/truecaller/stats/StatsActivity;->a:Le/a/p5/c0;

    .line 9
    iget-object v0, v0, Le/a/j0/h;->b:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->V()Le/a/b0/e/f;

    move-result-object v0

    .line 10
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/truecaller/stats/StatsActivity;->b:Le/a/b0/e/f;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Ln3/b/a/a;->m(Z)V

    .line 15
    invoke-virtual {v0, p1}, Ln3/b/a/a;->n(Z)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 17
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    sget v0, Lcom/truecaller/stats/R$id;->overlapped_container:I

    iget-object v2, p0, Lcom/truecaller/stats/StatsActivity;->a:Le/a/p5/c0;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-static {v2, p1}, Le/a/p5/s0/g;->E1(Le/a/p5/c0;Z)Lcom/truecaller/yearincalling/model/StatsUiModel;

    move-result-object p1

    const-string v2, "model"

    .line 19
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v2, Le/a/u/b;

    invoke-direct {v2}, Le/a/u/b;-><init>()V

    .line 21
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "key_ui_model"

    .line 22
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {v1, v0, v2, v3}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 25
    invoke-virtual {v1}, Ln3/r/a/a;->h()V

    .line 26
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 27
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    sget p1, Lcom/truecaller/stats/R$id;->container:I

    new-instance v1, Le/a/u/g;

    invoke-direct {v1}, Le/a/u/g;-><init>()V

    .line 29
    invoke-virtual {v0, p1, v1, v3}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 30
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    .line 31
    sget p1, Lcom/truecaller/stats/R$id;->close_screen_btn:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/truecaller/stats/StatsActivity$a;

    invoke-direct {v0, p0}, Lcom/truecaller/stats/StatsActivity$a;-><init>(Lcom/truecaller/stats/StatsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/truecaller/stats/StatsActivity;->b:Le/a/b0/e/f;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    sget p1, Lcom/truecaller/stats/R$id;->logo:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/truecaller/stats/R$drawable;->logo_white_uk:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "regionUtils"

    .line 34
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p1, "resourceProvider"

    .line 35
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
