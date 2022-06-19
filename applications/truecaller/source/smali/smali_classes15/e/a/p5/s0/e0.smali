.class public final Le/a/p5/s0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Ls1/z/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/p5/s0/e0;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/p5/s0/e0;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p5/s0/e0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Le/a/p5/s0/e0;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
