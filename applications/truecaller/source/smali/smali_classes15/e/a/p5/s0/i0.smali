.class public final Le/a/p5/s0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/Space;

.field public final synthetic g:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILandroid/widget/Space;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/i0;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/p5/s0/i0;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Le/a/p5/s0/i0;->c:Landroid/view/ViewGroup$LayoutParams;

    iput p4, p0, Le/a/p5/s0/i0;->d:I

    iput p5, p0, Le/a/p5/s0/i0;->e:I

    iput-object p6, p0, Le/a/p5/s0/i0;->f:Landroid/widget/Space;

    iput-object p7, p0, Le/a/p5/s0/i0;->g:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p5/s0/i0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/p5/s0/i0;->c:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Le/a/p5/s0/i0;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget v1, p0, Le/a/p5/s0/i0;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Le/a/p5/s0/i0;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Le/a/p5/s0/i0;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Le/a/p5/s0/i0;->f:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Le/a/p5/s0/i0;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Le/a/p5/s0/i0;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Le/a/p5/s0/i0;->g:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
