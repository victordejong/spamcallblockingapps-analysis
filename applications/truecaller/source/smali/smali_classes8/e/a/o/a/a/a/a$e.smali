.class public final Le/a/o/a/a/a/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/o/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/a/a/a$e;->b:Le/a/o/a/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/a/a/a/a$e;->b:Le/a/o/a/a/a/a;

    .line 2
    sget-object v1, Le/a/o/a/a/a/a;->k:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/o/a/a/a/a;->QA()Le/a/o/o/g;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/o/o/g;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "progress"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-string v2, "$this$setTimeInterpolator"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "interpolator"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x1

    .line 8
    new-instance v2, Le/a/o/a/a/a/c;

    invoke-direct {v2, p0}, Le/a/o/a/a/a/c;-><init>(Le/a/o/a/a/a/a$e;)V

    invoke-static {v0, v1, v2}, Le/a/e/a2;->f(Landroid/animation/Animator;ZLs1/z/b/a;)Landroid/animation/Animator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method
