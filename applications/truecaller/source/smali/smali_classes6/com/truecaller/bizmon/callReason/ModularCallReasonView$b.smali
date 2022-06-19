.class public final Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->setIsExpanded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/callReason/ModularCallReasonView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->a:Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

    iput-boolean p2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->a:Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

    invoke-virtual {v0}, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->getBinding()Le/a/b/m/g1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/b/m/g1;->c:Landroid/widget/ImageButton;

    const-string v2, "ivToggleButton"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->b:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 3
    iget-object v1, v0, Le/a/b/m/g1;->e:Landroid/widget/TextView;

    const-string v2, "tvCallReasonMain"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->b:Z

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 4
    iget-object v1, v0, Le/a/b/m/g1;->d:Landroid/widget/TextView;

    const-string v2, "tvCallReason"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->b:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 5
    iget-object v0, v0, Le/a/b/m/g1;->b:Landroid/widget/ImageView;

    const-string v1, "ivBizDot"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;->b:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
