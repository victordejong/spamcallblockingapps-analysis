.class public final Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;
.super Le/a/x3/h/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR(\u0010\u0018\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/x3/a;",
        "d",
        "Le/a/x3/a;",
        "getAppUpdateActionHelper",
        "()Le/a/x3/a;",
        "setAppUpdateActionHelper",
        "(Le/a/x3/a;)V",
        "appUpdateActionHelper",
        "",
        "e",
        "Ljava/lang/String;",
        "getAppVersionName",
        "()Ljava/lang/String;",
        "setAppVersionName",
        "(Ljava/lang/String;)V",
        "getAppVersionName$annotations",
        "()V",
        "appVersionName",
        "<init>",
        "forced-update-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/x3/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x3/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/forcedupdate/ui/R$layout;->activity_simple_force_update:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    sget p1, Lcom/truecaller/forcedupdate/ui/R$id;->fu_title:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b;-><init>(Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    :cond_0
    sget p1, Lcom/truecaller/forcedupdate/ui/R$id;->btn_action:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lcom/truecaller/forcedupdate/ui/R$id;->fu_support_message:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
