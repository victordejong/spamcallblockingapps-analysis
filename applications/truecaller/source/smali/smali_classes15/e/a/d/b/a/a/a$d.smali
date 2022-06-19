.class public final Le/a/d/b/a/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/a;->Oy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/b/a/a/a;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/b/a/a/a$d;->a:Le/a/d/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/a$d;->a:Le/a/d/b/a/a/a;

    .line 2
    iget-object v0, v0, Le/a/d/b/a/a/a;->k:Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4
    iget-object v0, p0, Le/a/d/b/a/a/a$d;->a:Le/a/d/b/a/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/r/a/l;->supportStartPostponedEnterTransition()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "profilePictureImageView"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
