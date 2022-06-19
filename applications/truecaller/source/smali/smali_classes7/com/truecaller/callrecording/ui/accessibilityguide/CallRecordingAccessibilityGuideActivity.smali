.class public final Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0008R\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "()V",
        "onPause",
        "onBackPressed",
        "pa",
        "Le/a/k0/j/a;",
        "a",
        "Le/a/k0/j/a;",
        "binding",
        "<init>",
        "callrecorder_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Le/a/k0/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->pa()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "LayoutInflater.from(this)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    sget v1, Lcom/truecaller/callrecording/R$layout;->layout_tcx_callrecording_accessibility_guide:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v1, Lcom/truecaller/callrecording/R$id;->buttonPrimary:I

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    if-eqz v7, :cond_4

    .line 6
    sget v1, Lcom/truecaller/callrecording/R$id;->image:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 8
    sget v1, Lcom/truecaller/callrecording/R$id;->subtitle:I

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 10
    sget v1, Lcom/truecaller/callrecording/R$id;->title:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 12
    sget v1, Lcom/truecaller/callrecording/R$id;->view_content:I

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/cardview/widget/CardView;

    if-eqz v11, :cond_4

    .line 14
    new-instance v1, Le/a/k0/j/a;

    move-object v6, p1

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Le/a/k0/j/a;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;)V

    const-string p1, "LayoutTcxCallrecordingAc\u2026s).toThemeInflater(true))"

    .line 15
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->a:Le/a/k0/j/a;

    const-string p1, "binding"

    .line 16
    iget-object v1, v1, Le/a/k0/j/a;->a:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 18
    iget-object v1, p0, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->a:Le/a/k0/j/a;

    if-eqz v1, :cond_3

    iget-object v1, v1, Le/a/k0/j/a;->c:Landroid/widget/ImageView;

    .line 19
    sget-object v4, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    sget v4, Lcom/truecaller/callrecording/R$drawable;->call_rec_onboarding_access_guide:I

    goto :goto_0

    .line 21
    :cond_0
    sget v4, Lcom/truecaller/callrecording/R$drawable;->call_rec_onboarding_access_guide_dark:I

    .line 22
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v1, p0, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->a:Le/a/k0/j/a;

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, v1, Le/a/k0/j/a;->a:Landroid/widget/FrameLayout;

    .line 25
    new-instance v4, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity$a;

    invoke-direct {v4, v3, p0}, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p0, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->a:Le/a/k0/j/a;

    if-eqz v1, :cond_1

    iget-object p1, v1, Le/a/k0/j/a;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity$a;

    invoke-direct {v1, v0, p0}, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_2
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;->pa()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    sget v0, Lcom/truecaller/callrecording/R$anim;->slide_in_up:I

    sget v1, Lcom/truecaller/callrecording/R$anim;->slide_out_down:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final pa()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    sget v0, Lcom/truecaller/callrecording/R$anim;->slide_in_up:I

    sget v1, Lcom/truecaller/callrecording/R$anim;->slide_out_down:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
