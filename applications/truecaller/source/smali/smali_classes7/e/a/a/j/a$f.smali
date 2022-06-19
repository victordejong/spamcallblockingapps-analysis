.class public final Le/a/a/j/a$f;
.super Le/a/a/j/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/j/a;


# direct methods
.method public constructor <init>(Le/a/a/j/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/j/a$f;->a:Le/a/a/j/a;

    invoke-direct {p0}, Le/a/a/j/p;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/j/a$f;->a:Le/a/a/j/a;

    .line 2
    sget-object v1, Le/a/a/j/a;->c:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/a/j/a;->OA()Le/a/m3/j0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/m3/j0;->d:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 5
    iget-object v0, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 6
    iget-object v0, v0, Le/a/a/j/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/a/j/a$f;->a:Le/a/a/j/a;

    invoke-virtual {v0}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object v0

    check-cast v0, Le/a/a/j/l;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/j/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/j/i;->Ir()V

    .line 9
    :cond_1
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 10
    iget-object p1, p0, Le/a/a/j/a$f;->a:Le/a/a/j/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method
