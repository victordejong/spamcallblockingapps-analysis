.class public final Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$b;->a:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$b;->a:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
