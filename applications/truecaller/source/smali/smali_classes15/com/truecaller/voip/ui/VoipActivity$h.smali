.class public final Lcom/truecaller/voip/ui/VoipActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/ui/VoipActivity;->Y2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/d/s/a;

.field public final synthetic c:Lcom/truecaller/voip/ui/VoipActivity;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/d/s/a;Lcom/truecaller/voip/ui/VoipActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->b:Le/a/d/s/a;

    iput-object p3, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->c:Lcom/truecaller/voip/ui/VoipActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->c:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "windowManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->c:Lcom/truecaller/voip/ui/VoipActivity;

    invoke-virtual {v1}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iget-object v2, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->b:Le/a/d/s/a;

    iget-object v2, v2, Le/a/d/s/a;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "voipContainer"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Le/q/f/a/d/a;->J2(F)I

    move-result v2

    .line 6
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Le/q/f/a/d/a;->J2(F)I

    move-result v3

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Le/q/f/a/d/a;->J2(F)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/truecaller/voip/ui/VoipActivity$h;->b:Le/a/d/s/a;

    iget-object v1, v1, Le/a/d/s/a;->n:Landroid/widget/TextView;

    .line 9
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dp x "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dp (usable height: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "dp)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
