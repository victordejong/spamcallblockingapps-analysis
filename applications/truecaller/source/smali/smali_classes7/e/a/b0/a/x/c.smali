.class public final Le/a/b0/a/x/c;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/BitmapFactory$Options;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

.field public final synthetic e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b0/a/x/c;->d:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iput-object p2, p0, Le/a/b0/a/x/c;->e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;

    const/high16 p1, -0x80000000

    .line 2
    invoke-direct {p0, p1, p1}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/BitmapFactory$Options;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/b0/a/x/c;->e:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;

    new-instance v0, Le/a/b0/a/x/a;

    iget-object v1, p0, Le/a/b0/a/x/c;->d:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4
    sget v2, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->e:I

    .line 5
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 6
    invoke-direct {v0, p1}, Le/a/b0/a/x/a;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;->a(Le/a/b0/a/x/a;)V

    return-void
.end method
