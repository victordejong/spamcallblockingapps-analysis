.class public final Lcom/truecaller/common/ui/fab/FloatingActionButton$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/fab/FloatingActionButton;->b(ZLandroid/view/View;I)V
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
    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$b;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton$b;->a:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    return-void
.end method
