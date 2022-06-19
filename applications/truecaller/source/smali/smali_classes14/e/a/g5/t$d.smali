.class public Le/a/g5/t$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/t;


# direct methods
.method public constructor <init>(Le/a/g5/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/t$d;->a:Le/a/g5/t;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g5/t$d;->a:Le/a/g5/t;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Le/a/g5/t;->q:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g5/t$d;->a:Le/a/g5/t;

    .line 2
    iget-object p1, p1, Le/a/g5/t;->k:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
