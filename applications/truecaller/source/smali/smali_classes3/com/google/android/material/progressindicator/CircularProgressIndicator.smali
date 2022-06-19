.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Le/m/a/g/q/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/g/q/b<",
        "Le/m/a/g/q/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CircularProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    .line 2
    sget v1, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->n:I

    invoke-direct {p0, p1, p2, v0, v1}, Le/m/a/g/q/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast p2, Le/m/a/g/q/h;

    .line 4
    new-instance v0, Le/m/a/g/q/o;

    new-instance v1, Le/m/a/g/q/d;

    invoke-direct {v1, p2}, Le/m/a/g/q/d;-><init>(Le/m/a/g/q/h;)V

    new-instance v2, Le/m/a/g/q/g;

    invoke-direct {v2, p2}, Le/m/a/g/q/g;-><init>(Le/m/a/g/q/h;)V

    invoke-direct {v0, p1, p2, v1, v2}, Le/m/a/g/q/o;-><init>(Landroid/content/Context;Le/m/a/g/q/c;Le/m/a/g/q/m;Le/m/a/g/q/n;)V

    .line 5
    invoke-virtual {p0, v0}, Le/m/a/g/q/b;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast p2, Le/m/a/g/q/h;

    .line 7
    new-instance v0, Le/m/a/g/q/i;

    new-instance v1, Le/m/a/g/q/d;

    invoke-direct {v1, p2}, Le/m/a/g/q/d;-><init>(Le/m/a/g/q/h;)V

    invoke-direct {v0, p1, p2, v1}, Le/m/a/g/q/i;-><init>(Landroid/content/Context;Le/m/a/g/q/c;Le/m/a/g/q/m;)V

    .line 8
    invoke-virtual {p0, v0}, Le/m/a/g/q/b;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getIndicatorDirection()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast v0, Le/m/a/g/q/h;

    iget v0, v0, Le/m/a/g/q/h;->i:I

    return v0
.end method

.method public getIndicatorInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast v0, Le/m/a/g/q/h;

    iget v0, v0, Le/m/a/g/q/h;->h:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast v0, Le/m/a/g/q/h;

    iget v0, v0, Le/m/a/g/q/h;->g:I

    return v0
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast v0, Le/m/a/g/q/h;

    iput p1, v0, Le/m/a/g/q/h;->i:I

    .line 2
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    move-object v1, v0

    check-cast v1, Le/m/a/g/q/h;

    iget v1, v1, Le/m/a/g/q/h;->h:I

    if-eq v1, p1, :cond_0

    .line 2
    check-cast v0, Le/m/a/g/q/h;

    iput p1, v0, Le/m/a/g/q/h;->h:I

    .line 3
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/g/q/b;->getTrackThickness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    move-object v1, v0

    check-cast v1, Le/m/a/g/q/h;

    iget v1, v1, Le/m/a/g/q/h;->g:I

    if-eq v1, p1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Le/m/a/g/q/h;

    iput p1, v1, Le/m/a/g/q/h;->g:I

    .line 4
    check-cast v0, Le/m/a/g/q/h;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Le/m/a/g/q/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/m/a/g/q/b;->setTrackThickness(I)V

    .line 2
    iget-object p1, p0, Le/m/a/g/q/b;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
