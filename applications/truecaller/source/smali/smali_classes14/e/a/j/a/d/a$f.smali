.class public final Le/a/j/a/d/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/d/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/d/a;


# direct methods
.method public constructor <init>(Le/a/j/a/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 2
    sget-object p3, Le/a/j/a/d/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/j/d/a;->b:Landroid/widget/RatingBar;

    const-string p3, "ratingBar"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p2, p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x40000000    # 2.0f

    cmpg-float p3, p2, p3

    if-nez p3, :cond_1

    .line 5
    :goto_0
    iget-object p2, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 6
    iget-object p2, p2, Le/a/j/a/d/a;->g:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_1
    const/high16 p3, 0x40400000    # 3.0f

    cmpg-float p3, p2, p3

    if-nez p3, :cond_2

    .line 8
    iget-object p2, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 9
    iget-object p2, p2, Le/a/j/a/d/a;->h:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2

    :cond_2
    const/high16 p3, 0x40800000    # 4.0f

    cmpg-float p3, p2, p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p3, 0x40a00000    # 5.0f

    cmpg-float p2, p2, p3

    if-nez p2, :cond_4

    .line 11
    :goto_1
    iget-object p2, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 12
    iget-object p2, p2, Le/a/j/a/d/a;->i:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 14
    :cond_4
    :goto_2
    iget-object p1, p0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Le/a/j/a/d/a$f$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/j/a/d/a$f$a;-><init>(Le/a/j/a/d/a$f;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
