.class public final Le/a/l/c/e;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/p5/h0;)V
    .locals 4

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x7f040660

    .line 2
    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x7f040661

    .line 3
    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const v2, 0x7f040662

    .line 4
    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const v2, 0x7f040663

    .line 5
    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result p1

    const/4 v2, 0x3

    aput p1, v1, v2

    .line 6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-void
.end method
