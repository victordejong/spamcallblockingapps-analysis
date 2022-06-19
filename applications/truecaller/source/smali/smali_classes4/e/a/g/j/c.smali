.class public final Le/a/g/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/b;


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/c;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZII)I
    .locals 1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    sget-object p2, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_1

    .line 4
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p4, v0, p2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 9
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    .line 11
    :goto_0
    iget-object p2, p0, Le/a/g/j/c;->a:Le/a/p5/c0;

    invoke-interface {p2, p3}, Le/a/p5/c0;->H(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    .line 12
    :cond_3
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "Resource ID #0x"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " type #0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/util/TypedValue;->type:I

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not valid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/content/Context;ZLandroid/view/View;Le/a/g/j/p0;Le/a/g/j/o0;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p4, :cond_0

    .line 2
    iget v1, p4, Le/a/g/j/p0;->a:I

    .line 3
    iget p4, p4, Le/a/g/j/p0;->b:I

    .line 4
    invoke-virtual {p0, p1, p2, v1, p4}, Le/a/g/j/c;->a(Landroid/content/Context;ZII)I

    move-result p4

    .line 5
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    if-eqz p5, :cond_3

    .line 7
    iget p4, p5, Le/a/g/j/o0;->b:I

    .line 8
    iget v1, p5, Le/a/g/j/o0;->c:I

    .line 9
    invoke-virtual {p0, p1, p2, p4, v1}, Le/a/g/j/c;->a(Landroid/content/Context;ZII)I

    move-result p1

    .line 10
    iget-object p2, p5, Le/a/g/j/o0;->a:Lcom/truecaller/acs/util/MarginDirection;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 13
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
