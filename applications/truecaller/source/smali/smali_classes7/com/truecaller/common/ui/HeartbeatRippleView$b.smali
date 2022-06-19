.class public final Lcom/truecaller/common/ui/HeartbeatRippleView$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/HeartbeatRippleView;->e(ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/animation/AnimatorSet;

.field public final synthetic c:Lcom/truecaller/common/ui/HeartbeatRippleView;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Lcom/truecaller/common/ui/HeartbeatRippleView;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;->b:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;->c:Lcom/truecaller/common/ui/HeartbeatRippleView;

    iput-object p4, p0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;->d:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/HeartbeatRippleView$b;->c:Lcom/truecaller/common/ui/HeartbeatRippleView;

    .line 3
    iget-object v0, v0, Lcom/truecaller/common/ui/HeartbeatRippleView;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
