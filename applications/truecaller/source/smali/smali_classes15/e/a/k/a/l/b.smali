.class public final Le/a/k/a/l/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/view/RecordButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/view/RecordButton;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/l/b;->b:Lcom/truecaller/videocallerid/ui/view/RecordButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/a/l/b;->b:Lcom/truecaller/videocallerid/ui/view/RecordButton;

    .line 2
    iget-object v0, v0, Lcom/truecaller/videocallerid/ui/view/RecordButton;->t:Le/a/k/m/x;

    .line 3
    iget-object v0, v0, Le/a/k/m/x;->b:Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "progress"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-string v2, "$this$setTimeInterpolator"

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "interpolator"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x1

    .line 7
    new-instance v2, Le/a/k/a/l/a;

    invoke-direct {v2, p0}, Le/a/k/a/l/a;-><init>(Le/a/k/a/l/b;)V

    invoke-static {v0, v1, v2}, Le/a/e/a2;->f(Landroid/animation/Animator;ZLs1/z/b/a;)Landroid/animation/Animator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method
