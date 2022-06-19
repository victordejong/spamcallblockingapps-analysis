.class public final Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->G9(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

.field public final synthetic b:Lcom/truecaller/featuretoggles/FeatureKey;


# direct methods
.method public constructor <init>(Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;Lcom/truecaller/featuretoggles/FeatureKey;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;->a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    iput-object p2, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "null cannot be cast to non-null type android.app.Dialog"

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const p2, 0x7f0a0780

    .line 2
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "(dialogInterface as Dial\u2026firebase_dialog_edittext)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;->a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    .line 5
    iget-object p2, p2, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;->a:Le/a/t3/c/m;

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;->b:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-interface {p2, v0, p1}, Le/a/t3/c/g$a;->a5(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a;->a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    const/4 p2, 0x1

    const-string v0, "String changed"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
