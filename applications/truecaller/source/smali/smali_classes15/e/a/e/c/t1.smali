.class public Le/a/e/c/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/t1;->a:Le/a/e/c/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c/t1;->a:Le/a/e/c/s1;

    .line 2
    iget-object v0, v0, Le/a/e/c/s1;->U:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4
    iget-object v0, p0, Le/a/e/c/t1;->a:Le/a/e/c/s1;

    .line 5
    iget-object v1, v0, Le/a/e/c/s1;->U:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 6
    invoke-virtual {v0, v1}, Le/a/e/c/s1;->mB(Landroid/view/View;)I

    move-result v1

    .line 7
    iget-object v2, p0, Le/a/e/c/t1;->a:Le/a/e/c/s1;

    .line 8
    iget-object v2, v2, Le/a/e/c/s1;->U:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 10
    iput v2, v0, Le/a/e/c/s1;->o0:I

    const/4 v0, 0x0

    return v0
.end method
