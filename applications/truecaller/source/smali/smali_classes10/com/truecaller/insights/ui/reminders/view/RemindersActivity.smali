.class public final Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/n/c/a;
.implements Le/a/c/a/c/a/b;
.implements Le/a/c/a/c/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001d\u0010(\u001a\u00020$8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0018\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;",
        "Ln3/b/a/h;",
        "Le/a/c/a/n/c/a;",
        "Le/a/c/a/c/a/b;",
        "Le/a/c/a/c/b;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/c/a/n/a/b;",
        "Q8",
        "()Le/a/c/a/n/a/b;",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "d8",
        "()Lcom/google/android/material/appbar/AppBarLayout;",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        "b7",
        "()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        "c",
        "Le/a/c/a/n/a/b;",
        "remindersPageComponent",
        "Le/a/c/a/g/e;",
        "d",
        "Ls1/g;",
        "pa",
        "()Le/a/c/a/g/e;",
        "binding",
        "Ln3/v/a1$b;",
        "a",
        "Ln3/v/a1$b;",
        "getViewModelFactory",
        "()Ln3/v/a1$b;",
        "setViewModelFactory",
        "(Ln3/v/a1$b;)V",
        "viewModelFactory",
        "Le/a/c/a/n/c/c;",
        "b",
        "qa",
        "()Le/a/c/a/n/c/c;",
        "remindersPageViewModel",
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


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Ln3/v/a1$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Ls1/g;

.field public c:Le/a/c/a/n/a/b;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity$b;-><init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->b:Ls1/g;

    .line 3
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public Q8()Le/a/c/a/n/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->c:Le/a/c/a/n/a/b;

    return-object v0
.end method

.method public b7()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/e;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v1, "binding.scrollUp"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d8()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/e;->b:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v1, "binding.appBarLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v1

    const-string v2, "binding"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v1, Le/a/c/a/g/e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    const-class v1, Le/a/b0/m/b/a;

    const-class v3, Le/a/c/h/k/a;

    const-class v4, Le/a/c/l/a/a;

    .line 7
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v5

    invoke-static {v5, v4}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v5

    check-cast v9, Le/a/c/l/a/a;

    const-string v5, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 8
    invoke-static {v3, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Le/a/c/h/k/a;

    .line 9
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v11

    const-string v5, "EntryPointAccessors.from\u2026ntsComponent::class.java)"

    .line 10
    invoke-static {v1, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Le/a/b0/m/b/a;

    .line 11
    new-instance v8, Le/a/c/a/n/a/c;

    invoke-direct {v8}, Le/a/c/a/n/a/c;-><init>()V

    .line 12
    invoke-static {v9, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    invoke-static {v10, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    const-class v3, Le/a/b0/c;

    invoke-static {v11, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    invoke-static {v12, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v1, Le/a/c/a/n/a/a;

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Le/a/c/a/n/a/a;-><init>(Le/a/c/a/n/a/c;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/b0/m/b/a;Le/a/c/a/n/a/a$a;)V

    .line 17
    iget-object v3, v1, Le/a/c/a/n/a/a;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/v/a1$b;

    .line 18
    iput-object v3, v0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->a:Ln3/v/a1$b;

    .line 19
    iput-object v1, v0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->c:Le/a/c/a/n/a/b;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->qa()Le/a/c/a/n/c/c;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Ln3/v/u;

    move-result-object v3

    const-string v4, "this.lifecycle"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, v1, Le/a/c/a/n/c/c;->f:Le/a/c/a/i/h;

    invoke-virtual {v3, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->qa()Le/a/c/a/n/c/c;

    move-result-object v1

    .line 24
    iget-object v3, v1, Le/a/c/a/n/c/c;->h:Le/a/c/c0/o;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Le/a/c/c0/o;->p(Z)V

    .line 25
    iget-object v1, v1, Le/a/c/a/n/c/c;->g:Le/a/c/a/i/j;

    .line 26
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v10, ""

    const-string v4, "feature"

    .line 27
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "page_view"

    const-string v4, "<set-?>"

    .line 28
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "reminders_page"

    .line 29
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "view"

    .line 30
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "inbox_business_tab"

    .line 31
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v15, Le/a/c/r/d/b;

    .line 33
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v4, v14

    move-object v7, v10

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 34
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    .line 35
    invoke-direct {v4, v5, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 36
    invoke-virtual {v1, v4}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 37
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 38
    new-instance v3, Ln3/r/a/a;

    invoke-direct {v3, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/e;->e:Landroid/widget/FrameLayout;

    const-string v4, "binding.remindersContainer"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    sget-object v4, Le/a/c/a/n/e/e;->f:Le/a/c/a/n/e/e$b;

    .line 40
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v4, Le/a/c/a/n/e/e;

    invoke-direct {v4}, Le/a/c/a/n/e/e;-><init>()V

    .line 42
    invoke-virtual {v3, v1, v4}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 43
    invoke-virtual {v3}, Ln3/r/a/a;->f()I

    .line 44
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v1

    .line 45
    iget-object v1, v1, Le/a/c/a/g/e;->c:Lcom/truecaller/ui/view/TintedImageView;

    new-instance v3, Le/a/c/a/n/e/d;

    invoke-direct {v3, v0}, Le/a/c/a/n/e/d;-><init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->qa()Le/a/c/a/n/c/c;

    move-result-object v1

    .line 47
    iget-object v1, v1, Le/a/c/a/n/c/c;->d:Landroidx/lifecycle/LiveData;

    .line 48
    new-instance v3, Le/a/c/a/n/e/b;

    invoke-direct {v3, v0}, Le/a/c/a/n/e/b;-><init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V

    new-instance v4, Le/a/c/a/n/e/a;

    invoke-direct {v4, v3}, Le/a/c/a/n/e/a;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, v1, Le/a/c/a/g/e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 51
    new-instance v2, Le/a/c/a/n/e/c;

    invoke-direct {v2, v0}, Le/a/c/a/n/e/c;-><init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final pa()Le/a/c/a/g/e;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/e;

    return-object v0
.end method

.method public final qa()Le/a/c/a/n/c/c;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/n/c/c;

    return-object v0
.end method
