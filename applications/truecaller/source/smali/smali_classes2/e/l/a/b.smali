.class public Le/l/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/l/a/b$b;,
        Le/l/a/b$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/animation/ValueAnimator;

.field public b:Le/l/a/b$b;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 2

    .line 1
    iget-object v0, p0, Le/l/a/b;->b:Le/l/a/b$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Le/l/a/b$a;

    invoke-direct {v1, p0}, Le/l/a/b$a;-><init>(Le/l/a/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    return-object v0
.end method
