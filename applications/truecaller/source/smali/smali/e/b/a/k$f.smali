.class public Le/b/a/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/b/a/k;


# direct methods
.method public constructor <init>(Le/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/k$f;->a:Le/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/b/a/k$f;->a:Le/b/a/k;

    .line 2
    iget-object v0, p1, Le/b/a/k;->l:Le/b/a/y/l/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 4
    invoke-virtual {p1}, Le/b/a/b0/b;->c()F

    move-result p1

    invoke-virtual {v0, p1}, Le/b/a/y/l/c;->o(F)V

    :cond_0
    return-void
.end method
