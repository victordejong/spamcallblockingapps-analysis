.class public final Lcom/truecaller/common/ui/fab/FloatingActionButton$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/fab/FloatingActionButton;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$a;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$a;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    .line 2
    iget-object p1, p1, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
