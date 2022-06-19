.class public final Le/a/t/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Le/a/t/a/a/o;

.field public final synthetic b:Le/a/t/a/a/f;


# direct methods
.method public constructor <init>(Le/a/t/a/a/o;Le/a/t/a/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/t/a/a/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    iput-object p2, p0, Le/a/t/a/a/n;->b:Le/a/t/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    .line 2
    iget-object v0, v0, Le/a/t/a/a/o;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4
    iget-object v0, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    .line 5
    iget-object v0, v0, Le/a/t/a/a/o;->c:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    .line 8
    iget-object v1, v1, Le/a/t/a/a/o;->c:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Le/a/t/a/a/n;->b:Le/a/t/a/a/f;

    .line 10
    iget-object v2, v2, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 11
    iget v2, v2, Le/a/t/a/a/c;->b:F

    div-float/2addr v1, v2

    .line 12
    invoke-static {v1}, Le/q/f/a/d/a;->J2(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iget-object v2, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    .line 14
    iget-object v2, v2, Le/a/t/a/a/o;->a:Le/a/t/a/a/p;

    if-eqz v2, :cond_0

    .line 15
    iget-object v3, p0, Le/a/t/a/a/n;->b:Le/a/t/a/a/f;

    .line 16
    iget-object v3, v3, Le/a/t/a/a/f;->a:Ljava/lang/String;

    .line 17
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {v2, v3, v4, v1}, Le/a/t/a/a/p;->c(Ljava/lang/String;II)V

    .line 18
    :cond_0
    iget-object v1, p0, Le/a/t/a/a/n;->a:Le/a/t/a/a/o;

    .line 19
    iget-object v1, v1, Le/a/t/a/a/o;->c:Landroid/view/View;

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method
