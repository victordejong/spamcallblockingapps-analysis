.class public final Le/a/c/a/b/a/f$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/f$c;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/c/a/b/a/f$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/c/a/b/a/f$c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/f$c$a;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/c/a/b/a/f$c$a;->b:Le/a/c/a/b/a/f$c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/a/b/a/f$c$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/c/a/b/a/f$c$a;->b:Le/a/c/a/b/a/f$c;

    iget-object v0, v0, Le/a/c/a/b/a/f$c;->b:Le/a/c/a/b/a/f;

    .line 3
    sget-object v1, Le/a/c/a/b/a/f;->k:[Ls1/a/l;

    .line 4
    invoke-virtual {v0}, Le/a/c/a/b/a/f;->RA()Le/a/c/a/g/n;

    move-result-object v0

    .line 5
    iget-object v0, v0, Le/a/c/a/g/n;->c:Landroidx/core/widget/NestedScrollView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Le/a/c/a/b/a/f$c$a;->b:Le/a/c/a/b/a/f$c;

    iget-object v4, v4, Le/a/c/a/b/a/f$c;->b:Le/a/c/a/b/a/f;

    .line 7
    iget-object v4, v4, Le/a/c/a/b/a/f;->c:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void

    :cond_0
    const-string v0, "shareMessageContainer"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
