.class public final Lcom/facebook/ads/redexgen/X/P5;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P3;,
        Lcom/facebook/ads/redexgen/X/P4;
    }
.end annotation


# static fields
.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/OA;

.field public final A04:Lcom/facebook/ads/redexgen/X/OG;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48158
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/P5;->A07:I

    .line 48159
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/P5;->A08:I

    .line 48160
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P5;->A06:I

    .line 48161
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P5;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/P3;)V
    .locals 6

    .line 48162
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A04(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48163
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A04(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 48164
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    .line 48165
    new-instance v0, Lcom/facebook/ads/redexgen/X/OG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 48166
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A02(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/OG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    .line 48167
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A00(Lcom/facebook/ads/redexgen/X/P3;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A01:I

    .line 48168
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P5;->A03(Lcom/facebook/ads/redexgen/X/P3;)V

    .line 48169
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/P3;Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 0

    .line 48170
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/P3;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 48171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    const/16 v0, 0x96

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Landroid/view/View;I)V

    .line 48172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    const/16 v0, 0xaa

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Landroid/view/View;I)V

    .line 48173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 48174
    const/16 v0, 0xbe

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A01(Landroid/view/View;I)V

    .line 48175
    :cond_0
    return-void
.end method

.method private A01(Landroid/view/View;I)V
    .locals 3

    .line 48176
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 48177
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 48178
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 48179
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v0, p2

    int-to-float v0, v0

    .line 48180
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 48181
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 48182
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 48183
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 48184
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 48185
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/P3;)V
    .locals 7

    .line 48186
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A05(Lcom/facebook/ads/redexgen/X/P3;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48187
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/P5;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    .line 48188
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48189
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/P5;->A08:I

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48190
    const/4 v1, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48191
    .local p0, "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/P5;->A08:I

    div-int/lit8 v0, v0, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48192
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/P5;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48193
    .local v0, "informativeTextView":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48194
    const/16 v0, 0x10

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 48195
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A05(Lcom/facebook/ads/redexgen/X/P3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48196
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48197
    .local p1, "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/P5;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48198
    .local v1, "informativeIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48199
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 48200
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A06(Lcom/facebook/ads/redexgen/X/P3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 48201
    sget v0, Lcom/facebook/ads/redexgen/X/P5;->A07:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48202
    .local v0, "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/P5;->A08:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48205
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 48206
    .local v0, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 48207
    const v0, 0x1bffffff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 48209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/P5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48210
    .end local p0    # "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local p1    # "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v0
    .end local v1    # "informativeIconView":Landroid/widget/ImageView;
    .end local v0
    :cond_0
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/P3;)V
    .locals 10

    .line 48211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 48212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->setRadius(I)V

    .line 48213
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A01(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 48214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/OA;->setFullCircleCorners(Z)V

    .line 48215
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48216
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 48217
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A03(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 48218
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    .line 48219
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A01(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/P3;->A03(Lcom/facebook/ads/redexgen/X/P3;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 48220
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/OG;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 48221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OG;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 48222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/OG;->setAlignment(I)V

    .line 48223
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48224
    .local p0, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/P5;->A08:I

    div-int/lit8 v0, v1, 0x2

    invoke-virtual {v4, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48225
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    sget v1, Lcom/facebook/ads/redexgen/X/P5;->A05:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/P5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A04:Lcom/facebook/ads/redexgen/X/OG;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/P5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48227
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P5;->A02(Lcom/facebook/ads/redexgen/X/P3;)V

    .line 48228
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 48229
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/P5;->setGravity(I)V

    .line 48230
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/P5;->setOrientation(I)V

    .line 48231
    return-void

    .line 48232
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P5;->A03:Lcom/facebook/ads/redexgen/X/OA;

    sget v0, Lcom/facebook/ads/redexgen/X/P5;->A06:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->setRadius(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/P4;)V
    .locals 3

    .line 48233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P5;->A00()V

    .line 48234
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rq;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/Rq;-><init>(Lcom/facebook/ads/redexgen/X/P5;Lcom/facebook/ads/redexgen/X/P4;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P5;->A01:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/P5;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48235
    return-void
.end method
