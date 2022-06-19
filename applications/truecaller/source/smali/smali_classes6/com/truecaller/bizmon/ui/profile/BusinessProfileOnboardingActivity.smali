.class public final Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000  2\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R(\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0008\u0010\t\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/u3/g;",
        "a",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "()V",
        "featuresRegistry",
        "Le/a/b/m/w;",
        "c",
        "Ls1/g;",
        "pa",
        "()Le/a/b/m/w;",
        "binding",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "<init>",
        "d",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final d:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;


# instance fields
.field public a:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->d:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->c:Ls1/g;

    return-void
.end method

.method public static final qa(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "arg_from_wizard"

    .line 3
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "arg_migrating"

    .line 4
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Le/a/l4/k;->n0(Landroid/app/Activity;ZI)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->pa()Le/a/b/m/w;

    move-result-object p1

    const-string v2, "binding"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/b/m/w;->a:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-static {p0}, Le/a/n/g0;->m(Landroid/content/Context;)Le/a/b/b/c/u/a;

    move-result-object p1

    check-cast p1, Le/a/b/b/c/u/c;

    .line 7
    iget-object v2, p1, Le/a/b/b/c/u/c;->a:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v2, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->a:Le/a/u3/g;

    .line 10
    iget-object p1, p1, Le/a/b/b/c/u/c;->b:Le/a/q2/e;

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    .line 11
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->b:Le/a/q2/a;

    .line 13
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->a:Le/a/u3/g;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Le/a/u3/g;->w()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "arg_from_wizard"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->b:Le/a/q2/a;

    if-eqz p1, :cond_1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Action"

    const-string v4, "BusinessProfileOnboarding"

    .line 18
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Le/a/q2/g$b$a;

    const-string v4, "WizardAction"

    invoke-direct {v3, v4, v2, v0, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v0, "AnalyticsEvent.Builder(W\u2026                 .build()"

    .line 20
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    goto :goto_0

    :cond_1
    const-string p1, "analytics"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->pa()Le/a/b/m/w;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/w;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ln3/b/a/a;->n(Z)V

    .line 24
    :cond_3
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ln3/b/a/a;->o(Z)V

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->pa()Le/a/b/m/w;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/w;->c:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Le/a/b/b/c/e;

    invoke-direct {v0, p0}, Le/a/b/b/c/e;-><init>(Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->pa()Le/a/b/m/w;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/w;->b:Landroid/widget/Button;

    new-instance v0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c;

    invoke-direct {v0, p0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c;-><init>(Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    const-string p1, "featuresRegistry"

    .line 27
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final pa()Le/a/b/m/w;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/m/w;

    return-object v0
.end method
