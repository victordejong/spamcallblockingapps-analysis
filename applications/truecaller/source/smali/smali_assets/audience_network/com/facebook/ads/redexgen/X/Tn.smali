.class public final Lcom/facebook/ads/redexgen/X/Tn;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tj;->A0c(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cy;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tj;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oIkrHn4xYgACG98mudVump3sfyxK5ddV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YFjKaJHcUlqTZUCuvViCLkc0DiVUGWHa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SJXa56PpW3wX5cacZdRzDwGkBBUKSz1I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ckV9cVhgNLsBh0DLAq3Qoeikc521Bhs9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5hqMSu4yQZZoRLncoc9FwnveLVEwrx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CzQXOYkU59GlqnhcU7DFTywN9jdxtP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yo0Mb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nr5gBmQWcCkTfFNncD5Vfty4J6ngq0ol"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tn;->A04:[Ljava/lang/String;

    .line 55011
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tj;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/cy;)V
    .locals 0

    .line 55012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Tn;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/cy;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 55013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A06()V

    .line 55014
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 55015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A0A()V

    .line 55016
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 55017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A0B()V

    .line 55018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    .line 55019
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A10()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    .line 55020
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55021
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_1

    .line 55022
    check-cast v1, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 55023
    .local p0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Ph;

    if-eqz v0, :cond_1

    .line 55024
    check-cast v1, Lcom/facebook/ads/redexgen/X/Ph;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ph;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0S(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0T()V

    .line 55026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tn;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tn;->A04:[Ljava/lang/String;

    const-string v1, "bPUaT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/K1;->A08()V

    .line 55027
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55028
    .end local p0    # "videoView":Landroid/view/View;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A03:Z

    if-eqz v0, :cond_2

    .line 55029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 55030
    .local p0, "iv":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A06(Lcom/facebook/ads/redexgen/X/Tj;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55031
    .local v0, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 55032
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Tj;->A0b(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 55033
    .end local p0    # "iv":Landroid/widget/ImageView;
    .end local v0    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0G(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/cy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cy;->A0S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K1;->A0C(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)V

    .line 55034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0S(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0S(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0V()V

    .line 55036
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0V(Lcom/facebook/ads/redexgen/X/Tj;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0V(Lcom/facebook/ads/redexgen/X/Tj;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0V(Lcom/facebook/ads/redexgen/X/Tj;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tn;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tn;->A04:[Ljava/lang/String;

    const-string v1, "dyFUEwQM9ShUYKkvN3qEb2SbXKXS00dK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "y0DTmfKl0x4QH3u36UxcPvWnIaHTJFbo"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/QY;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QY;->A03()V

    .line 55038
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0Q(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 55039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0h(Lcom/facebook/ads/redexgen/X/Tj;)V

    .line 55040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A08(Lcom/facebook/ads/redexgen/X/Tj;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A09(Lcom/facebook/ads/redexgen/X/Tj;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 55041
    :cond_5
    return-void

    .line 55042
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A08(Lcom/facebook/ads/redexgen/X/Tj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A08(Landroid/view/View;)V

    .line 55043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A09(Lcom/facebook/ads/redexgen/X/Tj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A07(Landroid/view/View;)V

    .line 55044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0N(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0B(Lcom/facebook/ads/redexgen/X/Ju;)V

    .line 55045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0q(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0E(Z)V

    .line 55046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0r(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0I(Z)V

    .line 55047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0s(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0H(Z)V

    .line 55048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0t(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0F(Z)V

    .line 55049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0D(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/0z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A09(Lcom/facebook/ads/redexgen/X/0z;)V

    .line 55050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0u(Lcom/facebook/ads/redexgen/X/Tj;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0G(Z)V

    .line 55051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    .line 55052
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0B(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N2;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/10;

    move-result-object v0

    .line 55053
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0A(Lcom/facebook/ads/redexgen/X/10;)V

    .line 55054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0U(Lcom/facebook/ads/redexgen/X/Tj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0C(Ljava/lang/String;)V

    .line 55055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A0J(Z)V

    .line 55056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0E(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    goto :goto_0

    .line 55057
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A04()V

    .line 55058
    :goto_0
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55059
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0S(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0T()V

    .line 55060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A02:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0O(Lcom/facebook/ads/redexgen/X/Tj;)Lcom/facebook/ads/redexgen/X/K1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A07()V

    .line 55061
    return-void
.end method
