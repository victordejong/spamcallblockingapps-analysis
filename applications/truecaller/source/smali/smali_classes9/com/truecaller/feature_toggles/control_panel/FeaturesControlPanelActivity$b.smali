.class public final Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b;
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


# direct methods
.method public constructor <init>(Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b;->a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b;->a:Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;

    const-string p2, "Canceled"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
