.class public final Le/a/g5/e0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g5/e0/f;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g5/e0/f;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 2
    sget v1, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->i:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v1, "binding.fragmentContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5
    iget-object v0, p0, Le/a/g5/e0/f;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object v1

    .line 7
    iget-object v2, v1, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v3, "fragmentContainer"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8
    iget-object v2, v1, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    new-instance v3, Le/a/g5/e0/e;

    invoke-direct {v3, v1, v0}, Le/a/g5/e0/e;-><init>(Le/a/g5/d0/a;Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    .line 9
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 10
    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method
