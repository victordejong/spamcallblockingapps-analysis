.class public final Lcom/truecaller/timezone/TimezoneView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R%\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001f\u0010\u001c\u001a\u0004\u0018\u00010\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0015\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010 \u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0015\u001a\u0004\u0008\u001e\u0010\u001fR%\u0010%\u001a\n \u0013*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0015\u001a\u0004\u0008#\u0010$R\u001f\u0010(\u001a\u0004\u0018\u00010\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0015\u001a\u0004\u0008\'\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/timezone/TimezoneView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "foregroundColor",
        "Ls1/s;",
        "setTitleAndIconColor",
        "(I)V",
        "",
        "timezone",
        "setData",
        "(Ljava/lang/String;)V",
        "backgroundRes",
        "g1",
        "(II)V",
        "Landroid/graphics/drawable/Drawable;",
        "background",
        "f1",
        "(ILandroid/graphics/drawable/Drawable;)V",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "t",
        "Ls1/g;",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "icon",
        "w",
        "getMoonIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "moonIcon",
        "x",
        "getLocalTimeTitle",
        "()Ljava/lang/String;",
        "localTimeTitle",
        "Landroid/widget/TextView;",
        "u",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "v",
        "getSunIcon",
        "sunIcon",
        "timezone_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/timezone/R$id;->icon:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/timezone/TimezoneView;->t:Ls1/g;

    .line 4
    sget p2, Lcom/truecaller/timezone/R$id;->title:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/timezone/TimezoneView;->u:Ls1/g;

    .line 5
    new-instance p2, Ly1;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p1}, Ly1;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/timezone/TimezoneView;->v:Ls1/g;

    .line 6
    new-instance p2, Ly1;

    invoke-direct {p2, v0, p1}, Ly1;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/timezone/TimezoneView;->w:Ls1/g;

    .line 7
    new-instance p2, Le/a/k5/c;

    invoke-direct {p2, p1}, Le/a/k5/c;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/timezone/TimezoneView;->x:Ls1/g;

    .line 8
    sget p1, Lcom/truecaller/timezone/R$layout;->layout_timezone_view:I

    const/4 p2, 0x4

    invoke-static {p0, p1, v1, v0, p2}, Le/a/l4/k;->S(Landroid/view/ViewGroup;IZZI)Landroid/view/View;

    return-void
.end method

.method private final getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/timezone/TimezoneView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLocalTimeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/timezone/TimezoneView;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMoonIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/timezone/TimezoneView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getSunIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/timezone/TimezoneView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/timezone/TimezoneView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final setTitleAndIconColor(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final f1(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/timezone/TimezoneView;->setTitleAndIconColor(I)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g1(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v3, 0x4

    .line 2
    invoke-static {v3}, Le/a/p5/s0/g;->O(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/16 v2, 0xa

    .line 5
    invoke-static {v2}, Le/a/p5/s0/g;->O(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/truecaller/timezone/TimezoneView;->setTitleAndIconColor(I)V

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 6

    const-string v0, "timezone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "h:mm aa"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, 0xb

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-le v4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    if-lt v4, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v4, "calendar"

    .line 6
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "title"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getLocalTimeTitle()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getSunIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/truecaller/timezone/TimezoneView;->getMoonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
