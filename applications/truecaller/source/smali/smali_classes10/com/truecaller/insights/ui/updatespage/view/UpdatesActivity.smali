.class public final Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/q/c/a;
.implements Le/a/c/a/c/a/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020 8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0019\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;",
        "Ln3/b/a/h;",
        "Le/a/c/a/q/c/a;",
        "Le/a/c/a/c/a/b;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/c/a/q/a/b;",
        "o2",
        "()Le/a/c/a/q/a/b;",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "d8",
        "()Lcom/google/android/material/appbar/AppBarLayout;",
        "Ln3/v/a1$b;",
        "a",
        "Ln3/v/a1$b;",
        "getViewModelFactory",
        "()Ln3/v/a1$b;",
        "setViewModelFactory",
        "(Ln3/v/a1$b;)V",
        "viewModelFactory",
        "Le/a/c/a/q/c/b;",
        "b",
        "Ls1/g;",
        "getUpdatesPageViewModel",
        "()Le/a/c/a/q/c/b;",
        "updatesPageViewModel",
        "c",
        "Le/a/c/a/q/a/b;",
        "updatesPageComponent",
        "Le/a/c/a/g/g;",
        "d",
        "pa",
        "()Le/a/c/a/g/g;",
        "binding",
        "<init>",
        "()V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ln3/v/a1$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Ls1/g;

.field public c:Le/a/c/a/q/a/b;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$b;-><init>(Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->b:Ls1/g;

    .line 3
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public d8()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->pa()Le/a/c/a/g/g;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/g;->b:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v1, "binding.appBarLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public o2()Le/a/c/a/q/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->c:Le/a/c/a/q/a/b;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->pa()Le/a/c/a/g/g;

    move-result-object v1

    const-string v2, "binding"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v1, Le/a/c/a/g/g;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    const-class v1, Le/a/b0/m/b/a;

    const-class v2, Le/a/c/h/k/a;

    const-class v3, Le/a/c/l/a/a;

    .line 7
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v4

    invoke-static {v4, v3}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Le/a/c/l/a/a;

    const-string v4, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 8
    invoke-static {v2, v4}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Le/a/c/h/k/a;

    .line 9
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v10

    const-string v4, "EntryPointAccessors.from\u2026ntsComponent::class.java)"

    .line 10
    invoke-static {v1, v4}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Le/a/b0/m/b/a;

    .line 11
    new-instance v7, Le/a/c/a/q/a/c;

    invoke-direct {v7}, Le/a/c/a/q/a/c;-><init>()V

    .line 12
    invoke-static {v8, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    invoke-static {v9, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    const-class v2, Le/a/b0/c;

    invoke-static {v10, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    invoke-static {v11, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v1, Le/a/c/a/q/a/a;

    const/4 v12, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Le/a/c/a/q/a/a;-><init>(Le/a/c/a/q/a/c;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/b0/m/b/a;Le/a/c/a/q/a/a$a;)V

    .line 17
    iget-object v2, v1, Le/a/c/a/q/a/a;->o:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/v/a1$b;

    .line 18
    iput-object v2, v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->a:Ln3/v/a1$b;

    .line 19
    iput-object v1, v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->c:Le/a/c/a/q/a/b;

    .line 20
    iget-object v1, v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/q/c/b;

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Ln3/v/u;

    move-result-object v2

    const-string v3, "this.lifecycle"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, v1, Le/a/c/a/q/c/b;->f:Le/a/c/a/i/h;

    invoke-virtual {v2, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 24
    iget-object v1, v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/q/c/b;

    .line 25
    iget-object v2, v1, Le/a/c/a/q/c/b;->h:Le/a/c/c0/o;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Le/a/c/c0/o;->b0(Z)V

    .line 26
    iget-object v1, v1, Le/a/c/a/q/c/b;->g:Le/a/c/a/i/j;

    .line 27
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, ""

    const-string v3, "feature"

    .line 28
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "page_view"

    const-string v3, "<set-?>"

    .line 29
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "updates_page"

    .line 30
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "view"

    .line 31
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "inbox_business_tab"

    .line 32
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v15, Le/a/c/r/d/b;

    .line 34
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v14

    move-object v6, v9

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 35
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, v18

    .line 36
    invoke-direct {v0, v3, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 37
    invoke-virtual {v1, v0}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 38
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 39
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->pa()Le/a/c/a/g/g;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/g;->d:Landroid/widget/FrameLayout;

    const-string v2, "binding.updatesContainer"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    sget-object v2, Le/a/c/a/q/d/b;->g:Le/a/c/a/q/d/b$b;

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Le/a/c/a/q/d/b;

    invoke-direct {v2}, Le/a/c/a/q/d/b;-><init>()V

    .line 43
    invoke-virtual {v1, v0, v2}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 44
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    .line 45
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->pa()Le/a/c/a/g/g;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/g;->c:Le/a/c/a/g/e1;

    .line 46
    iget-object v1, v0, Le/a/c/a/g/e1;->b:Lcom/truecaller/ui/view/TintedImageView;

    new-instance v2, Le/a/c/a/q/d/a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Le/a/c/a/q/d/a;-><init>(Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, v0, Le/a/c/a/g/e1;->c:Landroid/widget/TextView;

    sget v2, Lcom/truecaller/insights/ui/R$string;->updates:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, v0, Le/a/c/a/g/e1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "root"

    .line 49
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public final pa()Le/a/c/a/g/g;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/g;

    return-object v0
.end method
