.class public final Le/a/a/h1/o/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/d;->a(Ls1/z/b/p;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/d;

.field public final synthetic b:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/d;Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/d$a;->a:Le/a/a/h1/o/d;

    iput-object p2, p0, Le/a/a/h1/o/d$a;->b:Ls1/z/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/h1/o/d$a;->b:Ls1/z/b/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/a/h1/o/d$a;->a:Le/a/a/h1/o/d;

    invoke-virtual {v0}, Le/a/a/h1/o/d;->getDismissButtonX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h1/o/d$a;->a:Le/a/a/h1/o/d;

    invoke-virtual {v1}, Le/a/a/h1/o/d;->getDismissButtonY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
