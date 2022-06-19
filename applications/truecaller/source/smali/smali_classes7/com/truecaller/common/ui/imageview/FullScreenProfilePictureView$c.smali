.class public final Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


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
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Landroid/view/View;Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iput-object p2, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->d:Landroid/net/Uri;

    iput-object p4, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->b:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iget-object v1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;->e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;

    .line 3
    sget v3, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->e:I

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->f(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V

    .line 5
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
