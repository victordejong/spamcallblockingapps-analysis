.class public final Lcom/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView;
.super Lcom/truecaller/common/ui/avatar/AvatarXView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView;",
        "Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "noIcon",
        "setNoIcon",
        "(Z)V",
        "v",
        "Z",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->getPresenter()Le/a/b0/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Le/a/b0/a/b/c;->Xj(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, v1}, Le/a/b0/a/b/c;->Uj(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, v1}, Le/a/b0/a/b/c;->Vj(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Le/a/b0/a/b/c;->Tj(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v0, v1}, Le/a/b0/a/b/c;->Wj(Ljava/lang/Integer;)V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setNoIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView;->v:Z

    return-void
.end method
