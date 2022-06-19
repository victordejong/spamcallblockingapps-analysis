.class public final Le/a/g/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/b;->a:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g/a/a/b;->a:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    invoke-static {p1}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->pa(Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;)V

    .line 2
    iget-object p1, p0, Le/a/g/a/a/b;->a:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
