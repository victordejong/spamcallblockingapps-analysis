.class public final Le/a/r/z/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/r/z/l;


# direct methods
.method public constructor <init>(Le/a/r/z/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/z/k;->a:Le/a/r/z/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r/z/k;->a:Le/a/r/z/l;

    .line 2
    iget-object p1, p1, Le/a/r/z/l;->j:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    sget v1, Lcom/truecaller/wizard/R$string;->CallVerification_title2:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Le/a/r/z/k;->a:Le/a/r/z/l;

    .line 5
    iget-object p1, p1, Le/a/r/z/l;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 6
    sget v0, Lcom/truecaller/wizard/R$string;->CallVerification_details:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const-string p1, "detailsView"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "titleView"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
