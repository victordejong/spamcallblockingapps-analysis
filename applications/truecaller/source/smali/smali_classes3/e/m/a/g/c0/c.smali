.class public Le/m/a/g/c0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/g/i/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/m/a/g/i/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/a/g/c0/c;->a:Le/m/a/g/i/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/c0/c;->a:Le/m/a/g/i/d;

    invoke-interface {p1}, Le/m/a/g/i/d;->getRevealInfo()Le/m/a/g/i/d$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p1, Le/m/a/g/i/d$e;->c:F

    .line 3
    iget-object v0, p0, Le/m/a/g/c0/c;->a:Le/m/a/g/i/d;

    invoke-interface {v0, p1}, Le/m/a/g/i/d;->setRevealInfo(Le/m/a/g/i/d$e;)V

    return-void
.end method
