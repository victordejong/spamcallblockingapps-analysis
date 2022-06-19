.class public final Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/m$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\"\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\tR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;",
        "Ln3/b/a/h;",
        "Le/a/t3/c/m$a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "d0",
        "Lcom/truecaller/featuretoggles/FeatureKey;",
        "taskKey",
        "",
        "firebaseString",
        "G9",
        "(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V",
        "F0",
        "Le/a/t3/c/g;",
        "b",
        "Le/a/t3/c/g;",
        "getAdapterPresenter",
        "()Le/a/t3/c/g;",
        "setAdapterPresenter",
        "(Le/a/t3/c/g;)V",
        "adapterPresenter",
        "Le/a/t3/c/m;",
        "a",
        "Le/a/t3/c/m;",
        "getPresenter",
        "()Le/a/t3/c/m;",
        "setPresenter",
        "(Le/a/t3/c/m;)V",
        "presenter",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/t3/c/m;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/t3/c/g;
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
.method public F0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x14008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(this, TruecallerI\u2026r FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public G9(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V
    .locals 3

    const-string v0, "taskKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseString"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0166

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "View.inflate(this, R.layout.firebase_dialog, null)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0780

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById<EditTe\u2026firebase_dialog_edittext)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p2, Ln3/b/a/g$a;

    invoke-direct {p2, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v2, "Enter new value"

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 5
    new-instance v1, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;-><init>(Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;Lcom/truecaller/featuretoggles/FeatureKey;)V

    const p1, 0x7f120726

    invoke-virtual {p2, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    new-instance p1, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b;

    invoke-direct {p1, p0}, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b;-><init>(Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;)V

    const v1, 0x7f1206fb

    invoke-virtual {p2, v1, p1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    iget-object p1, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    const/4 v0, 0x0

    .line 8
    iput v0, p1, Landroidx/appcompat/app/AlertController$b;->t:I

    .line 9
    invoke-virtual {p2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public d0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Le/a/l4/k;->n0(Landroid/app/Activity;ZI)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.TrueApp"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Le/a/t3/c/l;

    invoke-direct {v0}, Le/a/t3/c/l;-><init>()V

    .line 6
    const-class v1, Le/a/j2;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v1, Le/a/t3/c/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Le/a/t3/c/d;-><init>(Le/a/t3/c/l;Le/a/j2;Le/a/t3/c/d$a;)V

    .line 8
    iget-object p1, v1, Le/a/t3/c/d;->d:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t3/c/m;

    .line 9
    iput-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->a:Le/a/t3/c/m;

    .line 10
    iget-object p1, v1, Le/a/t3/c/d;->e:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t3/c/g;

    .line 11
    iput-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->b:Le/a/t3/c/g;

    const p1, 0x7f0d0033

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->a:Le/a/t3/c/m;

    const-string v0, "presenter"

    if-eqz p1, :cond_3

    .line 14
    new-instance v1, Le/a/t3/c/q;

    if-eqz p1, :cond_2

    const v3, 0x1020002

    .line 15
    invoke-virtual {p0, v3}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getContainerView()"

    .line 16
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v4, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->b:Le/a/t3/c/g;

    if-eqz v4, :cond_1

    .line 18
    invoke-direct {v1, p1, v3, v4}, Le/a/t3/c/q;-><init>(Le/a/t3/c/p$a;Landroid/view/View;Le/a/v0;)V

    .line 19
    invoke-interface {p1, v1}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->a:Le/a/t3/c/m;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Le/a/t3/c/m;->he(Le/a/t3/c/m$a;)V

    return-void

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "adapterPresenter"

    .line 21
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->a:Le/a/t3/c/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
