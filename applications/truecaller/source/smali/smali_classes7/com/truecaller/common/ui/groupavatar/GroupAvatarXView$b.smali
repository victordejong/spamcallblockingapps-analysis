.class public final Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$createBitmap$bitmap$1"
    f = "GroupAvatarXView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

.field public final synthetic f:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/z/c/a0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iput-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/z/c/a0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget p2, v0, Ls1/z/c/a0;->a:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 6
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8
    iget v1, v0, Ls1/z/c/a0;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iget v0, v0, Ls1/z/c/a0;->a:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 11
    invoke-static {p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    invoke-static {p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v2, v0, v0, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    invoke-static {p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    invoke-static {p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v0, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    iget p1, p1, Ls1/z/c/a0;->a:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    iget v0, v0, Ls1/z/c/a0;->a:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->f:Ls1/z/c/a0;

    iget v2, v2, Ls1/z/c/a0;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 8
    iget-object v3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {v3}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    iget-object v3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {v3}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {v2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    iget-object v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;->e:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {v2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
