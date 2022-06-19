.class public Le/l/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le/l/a/b$c;


# direct methods
.method public constructor <init>(Le/l/a/b;Le/l/a/b$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/l/a/a;->a:Le/l/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/l/a/a;->a:Le/l/a/b$c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Le/l/a/b$c;->a(F)V

    return-void
.end method
