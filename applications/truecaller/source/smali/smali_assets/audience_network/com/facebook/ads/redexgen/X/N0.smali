.class public final Lcom/facebook/ads/redexgen/X/N0;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mz;
    }
.end annotation


# static fields
.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/N3;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 45118
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    .line 45119
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A09:I

    .line 45120
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A0C:I

    .line 45121
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A07:I

    .line 45122
    sget v1, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A07:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/N0;->A06:I

    .line 45123
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A0D:I

    .line 45124
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A0A:I

    .line 45125
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A0E:I

    .line 45126
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A0B:I

    .line 45127
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/N0;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mz;)V
    .locals 10

    .line 45128
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A01(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45129
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A01(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 45130
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A03(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A03:Lcom/facebook/ads/redexgen/X/N3;

    .line 45131
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A09(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0D:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:I

    .line 45132
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A09(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0A:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:I

    .line 45133
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A0A(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A04:Z

    .line 45134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/N0;->setFocusable(Z)V

    .line 45135
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->A01(Lcom/facebook/ads/redexgen/X/Mz;)Landroid/view/View;

    move-result-object v7

    .line 45136
    .local p0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->A00(Lcom/facebook/ads/redexgen/X/Mz;)Landroid/view/View;

    move-result-object v6

    .line 45137
    .local p1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N0;->getFooterView()Landroid/view/View;

    move-result-object v5

    .line 45138
    .local v0, "footerView":Landroid/view/View;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 45139
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 45140
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 45141
    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45142
    .local v0, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45143
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45144
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45145
    const/4 v1, 0x3

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45146
    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45147
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45148
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45149
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45150
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/N0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45151
    invoke-virtual {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/N0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45152
    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/N0;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45153
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A0B(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45154
    return-void

    .line 45155
    :cond_0
    const/16 v1, 0x8

    goto :goto_2

    .line 45156
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0B:I

    goto :goto_1

    .line 45157
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0E:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Mz;Lcom/facebook/ads/redexgen/X/Mx;)V
    .locals 0

    .line 45158
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/Mz;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Mz;)Landroid/view/View;
    .locals 13

    .line 45159
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45160
    .local p1, "iconView":Landroid/widget/ImageView;
    iget v0, v8, Lcom/facebook/ads/redexgen/X/N0;->A00:I

    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 45161
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A02(Lcom/facebook/ads/redexgen/X/Mz;)Lcom/facebook/ads/redexgen/X/MD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45162
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45163
    iget v0, v8, Lcom/facebook/ads/redexgen/X/N0;->A01:I

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45164
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 45165
    .local v12, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 45166
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A00(Lcom/facebook/ads/redexgen/X/Mz;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45167
    invoke-static {v12, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 45168
    const/16 v9, 0x11

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45169
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45170
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45171
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v10, v6, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 45172
    const v0, -0xe3e1df

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45173
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A04(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45174
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 45175
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45176
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    invoke-virtual {v7, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45177
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45178
    .local v1, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 45179
    const v0, -0x9f9890

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45180
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A05(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45181
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 45182
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45183
    .local v8, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A08:I

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45185
    .local v6, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45186
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45187
    invoke-virtual {v4, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45188
    invoke-virtual {v4, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45189
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45190
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A08(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45191
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45192
    .local v0, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45193
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45194
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A06(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45195
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 45196
    .local v0, "logoView":Lcom/facebook/ads/redexgen/X/OA;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0E:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45197
    .local v9, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A09:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45198
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/OA;->setFullCircleCorners(Z)V

    .line 45199
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0E:I

    .line 45200
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 45201
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A06(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 45202
    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45203
    .end local v0    # "logoView":Lcom/facebook/ads/redexgen/X/OA;
    .end local v9    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 45204
    .local v0, "selectedOptionView":Lcom/facebook/ads/redexgen/X/N5;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A07(Lcom/facebook/ads/redexgen/X/Mz;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0E:Lcom/facebook/ads/redexgen/X/MD;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 45205
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/N5;->setSelected(Z)V

    .line 45206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45207
    .local v0, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45208
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45209
    .end local v0    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0
    .end local v0
    :cond_1
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Mz;)Landroid/view/View;
    .locals 4

    .line 45210
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45211
    .local p0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45212
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mz;->A0C(Lcom/facebook/ads/redexgen/X/Mz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45214
    .local p1, "closeButton":Landroid/widget/ImageView;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A07:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 45215
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45216
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45217
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Lcom/facebook/ads/redexgen/X/N0;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45218
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A0C:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45219
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45220
    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45221
    .end local p1    # "closeButton":Landroid/widget/ImageView;
    .end local v0    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N0;)Lcom/facebook/ads/redexgen/X/N3;
    .locals 0

    .line 45222
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N0;->A03:Lcom/facebook/ads/redexgen/X/N3;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N0;)Z
    .locals 0

    .line 45223
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/N0;->A04:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 8

    .line 45224
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45225
    .local p0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0T:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45226
    const v1, -0xca871b

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45227
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A05:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45228
    .local v6, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45229
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45230
    .local v0, "managePrefsText":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/16 v0, 0x10

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 45231
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45232
    sget v0, Lcom/facebook/ads/redexgen/X/N0;->A09:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 45234
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0D(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    .line 45235
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45236
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45237
    .local v0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45238
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N0;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45239
    .local v0, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45240
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45241
    new-instance v0, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/N0;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45242
    invoke-virtual {v1, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45243
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45244
    return-object v1
.end method
