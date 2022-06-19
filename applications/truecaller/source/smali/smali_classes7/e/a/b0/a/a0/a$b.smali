.class public final Le/a/b0/a/a0/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.common.ui.notification.NotificationAvatarXPresenter$asBitmap$2"
    f = "NotificationAvatarXPresenter.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b0/a/a0/a;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/b0/a/a0/a;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    iput p2, p0, Le/a/b0/a/a0/a$b;->h:I

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

    new-instance p1, Le/a/b0/a/a0/a$b;

    iget-object v0, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    iget v1, p0, Le/a/b0/a/a0/a$b;->h:I

    invoke-direct {p1, v0, v1, p2}, Le/a/b0/a/a0/a$b;-><init>(Le/a/b0/a/a0/a;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b0/a/a0/a$b;

    iget-object v0, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    iget v1, p0, Le/a/b0/a/a0/a$b;->h:I

    invoke-direct {p1, v0, v1, p2}, Le/a/b0/a/a0/a$b;-><init>(Le/a/b0/a/a0/a;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b0/a/a0/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b0/a/a0/a$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/b0/a/a0/a$b;->e:Ljava/lang/Object;

    check-cast v0, Le/a/b0/a/a0/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    .line 5
    iget-object p1, p1, Le/a/b0/a/a0/a;->V:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 6
    iget v1, p0, Le/a/b0/a/a0/a$b;->h:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Le/a/b0/a/a0/a$b;->h:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 7
    iget-object p1, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    .line 8
    iget-object p1, p1, Le/a/b0/a/a0/a;->V:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 9
    iget v1, p0, Le/a/b0/a/a0/a$b;->h:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 10
    iget-object p1, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    iget v9, p0, Le/a/b0/a/a0/a$b;->h:I

    iput-object p1, p0, Le/a/b0/a/a0/a$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/b0/a/a0/a$b;->f:I

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 13
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 14
    iget-object v2, p1, Le/a/b0/a/b/a;->b:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {p1}, Le/a/b0/a/b/a;->Oj()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {p1}, Le/a/b0/a/b/a;->Oj()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, p1, Le/a/b0/a/a0/a;->X:Landroid/content/Context;

    .line 18
    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v3

    const-string v4, "GlideApp.with(context)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 19
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    invoke-static {v3, v2, v5}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v2

    .line 21
    new-instance v3, Le/a/b0/a/a0/b;

    move-object v4, v3

    move v5, v9

    move v6, v9

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Le/a/b0/a/a0/b;-><init>(IILq3/a/n;Le/a/b0/a/a0/a;I)V

    invoke-virtual {v2, v3}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 23
    :goto_0
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    const-string v2, "frame"

    .line 24
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    .line 25
    :goto_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->Xj(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget p1, p0, Le/a/b0/a/a0/a$b;->h:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    iget-object v1, p0, Le/a/b0/a/a0/a$b;->g:Le/a/b0/a/a0/a;

    .line 29
    iget-object v1, v1, Le/a/b0/a/a0/a;->V:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method
