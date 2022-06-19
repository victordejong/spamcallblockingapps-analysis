.class public abstract Lcom/facebook/ads/redexgen/X/Rv;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;


# static fields
.field public static final A0D:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/16;

.field public final A02:Lcom/facebook/ads/redexgen/X/7J;

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/JT;

.field public final A05:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A07:Lcom/facebook/ads/redexgen/X/MT;

.field public final A08:Lcom/facebook/ads/redexgen/X/MU;

.field public final A09:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A0A:Lcom/facebook/ads/redexgen/X/QZ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A0C:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51172
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 4

    .line 51173
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51174
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/Rv;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    .line 51175
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    .line 51176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Z

    .line 51177
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 51178
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rv;->A09:Lcom/facebook/ads/redexgen/X/Mw;

    .line 51179
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/JT;

    .line 51180
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51181
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rv;->A02:Lcom/facebook/ads/redexgen/X/7J;

    .line 51182
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    .line 51183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51184
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    .line 51185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    .line 51186
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51187
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v0

    .line 51188
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 51189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 51190
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rv;->A0N()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    .line 51191
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0B:Lcom/facebook/ads/redexgen/X/Lu;

    .line 51192
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0B:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 51193
    return-void
.end method

.method private A0N()Lcom/facebook/ads/redexgen/X/MT;
    .locals 10

    .line 51194
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0D()I

    move-result v9

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/Jb;II)V

    .line 51196
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/MT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v3

    .line 51197
    .local v4, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51198
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51199
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51200
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 51201
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 51202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 51203
    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51204
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 51205
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rw;-><init>(Lcom/facebook/ads/redexgen/X/Rv;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/MS;)V

    .line 51206
    return-object v4
.end method

.method private A0O()V
    .locals 4

    .line 51207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51208
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51209
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v0

    .line 51212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->A0B()Lcom/facebook/ads/redexgen/X/P5;

    move-result-object v2

    .line 51213
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/P5;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0U:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 51214
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Rv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51215
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/Rv;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/P5;->A04(Lcom/facebook/ads/redexgen/X/P4;)V

    .line 51216
    .end local p0    # "introView":Lcom/facebook/ads/redexgen/X/P5;
    :goto_0
    return-void

    .line 51217
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rv;->A0Q()V

    goto :goto_0
.end method


# virtual methods
.method public final A0P()V
    .locals 1

    .line 51218
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Z

    if-nez v0, :cond_0

    .line 51219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 51220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Z

    .line 51221
    :cond_0
    return-void
.end method

.method public abstract A0Q()V
.end method

.method public final A0R(ILcom/facebook/ads/redexgen/X/Kv;)V
    .locals 2

    .line 51222
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ry;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Rv;ILcom/facebook/ads/redexgen/X/Kv;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LS;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/LS;-><init>(ILcom/facebook/ads/redexgen/X/LR;)V

    .line 51223
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 51224
    return-void
.end method

.method public abstract A0S(Lcom/facebook/ads/redexgen/X/52;)V
.end method

.method public abstract A0T()Z
.end method

.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51226
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Rv;->A0S(Lcom/facebook/ads/redexgen/X/52;)V

    .line 51227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rv;->A0O()V

    .line 51228
    return-void
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 0

    .line 51229
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 51230
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 51231
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51232
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 51233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0B:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A03()V

    .line 51234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51235
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 51236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    .line 51237
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    .line 51238
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 51239
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 51240
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8n(Ljava/lang/String;Ljava/util/Map;)V

    .line 51241
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 51242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lz;->A06(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 51243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 0

    .line 51244
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 51245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge v1, v0, :cond_0

    .line 51246
    return-void

    .line 51247
    :cond_0
    if-eqz p1, :cond_1

    .line 51248
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lt;->A04:Lcom/facebook/ads/redexgen/X/Lt;

    .line 51249
    .local p0, "mode":Lcom/facebook/ads/redexgen/X/Lt;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0B:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 51250
    return-void

    .line 51251
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    goto :goto_0
.end method
