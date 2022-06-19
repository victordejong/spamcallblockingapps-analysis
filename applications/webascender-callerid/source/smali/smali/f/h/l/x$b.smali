.class Lf/h/l/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/l/x;->j(Lf/h/l/a0;)Lf/h/l/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/h/l/a0;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lf/h/l/x;Lf/h/l/a0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/h/l/x$b;->a:Lf/h/l/a0;

    iput-object p3, p0, Lf/h/l/x$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/h/l/x$b;->a:Lf/h/l/a0;

    iget-object v0, p0, Lf/h/l/x$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lf/h/l/a0;->a(Landroid/view/View;)V

    return-void
.end method
