.class public final Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->f(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

.field public final synthetic b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;->a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iput-object p2, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;->b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;->b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;->a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    invoke-static {p2, p1}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->d(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;->b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;->b()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
