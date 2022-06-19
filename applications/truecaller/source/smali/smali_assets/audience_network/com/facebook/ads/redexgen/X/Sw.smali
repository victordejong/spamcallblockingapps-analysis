.class public final Lcom/facebook/ads/redexgen/X/Sw;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sx;,
        Lcom/facebook/ads/redexgen/X/Sy;
    }
.end annotation


# static fields
.field public static A0W:[B

.field public static A0X:[Ljava/lang/String;

.field public static final A0Y:I

.field public static final A0Z:I

.field public static final A0a:I

.field public static final A0b:I

.field public static final A0c:I

.field public static final A0d:I

.field public static final A0e:I

.field public static final A0f:I

.field public static final A0g:I

.field public static final A0h:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/Toast;

.field public A04:Lcom/facebook/ads/redexgen/X/52;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/SZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/PP;

.field public A07:Lcom/facebook/ads/redexgen/X/PV;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/16;

.field public final A0E:Lcom/facebook/ads/redexgen/X/1U;

.field public final A0F:Lcom/facebook/ads/redexgen/X/50;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0H:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0J:Lcom/facebook/ads/redexgen/X/LS;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A0L:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A0N:Lcom/facebook/ads/redexgen/X/O7;

.field public final A0O:Lcom/facebook/ads/redexgen/X/O8;

.field public final A0P:Lcom/facebook/ads/redexgen/X/PU;

.field public final A0Q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0S:Z

.field public final A0T:Z

.field public final A0U:Z

.field public final A0V:Lcom/facebook/ads/redexgen/X/MT;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "57rzzR6raHrat8cHk0n2c9utIvWN6OL8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vZo4DQACnHxpUIABCEPhLIrXR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3pKkUgRnbq5D8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3oPHUcYdGBLGT6sjvwgTS6nCZs8dHXKK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yMOWmEDq6oq3Yf8aoY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BRjJ0geTmUVj6Aeo1VqVThKYcHpwhF7A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bCnfD5Zsza6fNT9UI62TNCVdI9Gt63Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0XbQU4AacrxlEwxF12eBigHvJ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    .line 53072
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sw;->A0P()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0f:I

    .line 53073
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0a:I

    .line 53074
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0g:I

    .line 53075
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0Y:I

    .line 53076
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sw;->A0h:Landroid/widget/RelativeLayout$LayoutParams;

    .line 53077
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0b:I

    .line 53078
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0c:I

    .line 53079
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0e:I

    .line 53080
    const/16 v0, 0x4d

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0d:I

    .line 53081
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sw;->A0Z:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mw;)V
    .locals 12
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53082
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53083
    new-instance v1, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0F:Lcom/facebook/ads/redexgen/X/50;

    .line 53084
    const/4 v2, 0x0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53085
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53086
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0A:Z

    .line 53087
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0C:Z

    .line 53088
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 53089
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    .line 53090
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    .line 53091
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53092
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53093
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v4, v2}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0I:Lcom/facebook/ads/redexgen/X/Jb;

    .line 53094
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    .line 53095
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v1, Lcom/facebook/ads/redexgen/X/PV;

    move-object/from16 v5, p5

    invoke-direct {v1, p1, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MU;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A07:Lcom/facebook/ads/redexgen/X/PV;

    .line 53096
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53097
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0L()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53098
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A02()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A09:Z

    .line 53099
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0A()Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0U:Z

    .line 53100
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    if-nez v1, :cond_0

    .line 53101
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Mw;->A6V()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 53102
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Mw;->A6Q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 53103
    :cond_0
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A09:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0U:Z

    if-eqz v1, :cond_3

    .line 53104
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A02()I

    move-result v5

    .line 53105
    .local p1, "countDownSeconds":I
    :goto_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1U;->A0I()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53106
    const/4 v4, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sy;

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/Sw;Lcom/facebook/ads/redexgen/X/T3;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/LS;

    invoke-direct {v1, v5, v2}, Lcom/facebook/ads/redexgen/X/LS;-><init>(ILcom/facebook/ads/redexgen/X/LR;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    .line 53107
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JD;->A1u(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    .line 53108
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JD;->A0i(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0S:Z

    .line 53109
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A06()Lcom/facebook/ads/redexgen/X/MT;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    .line 53110
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    new-instance v1, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v1, v6, v5, v2}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0P:Lcom/facebook/ads/redexgen/X/PU;

    .line 53111
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    if-eqz v1, :cond_2

    .line 53112
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v1

    .line 53113
    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 53114
    :goto_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0K:Lcom/facebook/ads/redexgen/X/Lu;

    .line 53115
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0K:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 53116
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JD;->A1Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53117
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/MT;->setProgressSpinnerInvisible(Z)V

    .line 53118
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 53119
    .local v1, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Mw;->A76()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x2c

    const/16 v2, 0x9

    const/16 v1, 0x33

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53120
    new-instance v5, Lcom/facebook/ads/redexgen/X/PP;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v10, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v10, v0, v4}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/Sw;Lcom/facebook/ads/redexgen/X/T3;)V

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/PP;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/PN;Ljava/util/Map;)V

    iput-object v5, v0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53121
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0L()V

    .line 53122
    const/4 v1, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53123
    .local p2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53124
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0I()V

    .line 53125
    new-instance v1, Lcom/facebook/ads/redexgen/X/T2;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/T2;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0N:Lcom/facebook/ads/redexgen/X/O7;

    .line 53126
    new-instance v3, Lcom/facebook/ads/redexgen/X/O8;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0N:Lcom/facebook/ads/redexgen/X/O7;

    const/4 v1, 0x3

    new-array v10, v1, [Landroid/view/View;

    .end local p2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    const/4 v1, 0x0

    aput-object v2, v10, v1

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v2, 0x2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    aput-object v1, v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Po;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/O7;[Landroid/view/View;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0O:Lcom/facebook/ads/redexgen/X/O8;

    .line 53127
    return-void

    .line 53128
    :cond_2
    const v1, -0xdcd8d1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 53129
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v5

    goto/16 :goto_1

    .line 53130
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 53131
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/1U;
    .locals 0

    .line 53132
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 53133
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 53134
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 53135
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0I:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/LS;
    .locals 0

    .line 53136
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    return-object p0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/MT;
    .locals 10

    .line 53137
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0I:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53138
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0D()I

    move-result v9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/Jb;II)V

    .line 53139
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/MT;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 53140
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetailsVisible(Z)V

    .line 53141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53142
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53143
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53144
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53145
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 53146
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 53147
    new-instance v0, Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T0;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/MS;)V

    .line 53148
    return-object v4
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 53149
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/Mw;
    .locals 0

    .line 53150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    return-object p0
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/SZ;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 53151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    if-eqz v0, :cond_0

    .line 53152
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53153
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53154
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sw;
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 53155
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 53156
    .local p0, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SZ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    .line 53157
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A60()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53158
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53159
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 53160
    .local v0, "button":Lcom/facebook/ads/redexgen/X/SZ;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setText(Ljava/lang/String;)V

    .line 53162
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setTextSize(F)V

    .line 53163
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setIncludeFontPadding(Z)V

    .line 53164
    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0Y:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setPadding(IIII)V

    .line 53165
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    if-nez v0, :cond_2

    .line 53166
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 53167
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mf;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53168
    return-object v1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/SZ;
    .locals 0

    .line 53169
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/O8;
    .locals 0

    .line 53170
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0O:Lcom/facebook/ads/redexgen/X/O8;

    return-object p0
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/OG;
    .locals 10

    .line 53171
    new-instance v3, Lcom/facebook/ads/redexgen/X/OG;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/OG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 53173
    .local p0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/OG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53174
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53175
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v5

    .line 53176
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/OG;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 53177
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/OG;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 53178
    .local v3, "descriptionTv":Landroid/widget/TextView;
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 53179
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53180
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53181
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/OG;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 53182
    .local v0, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53183
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53184
    return-object v3
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/PP;
    .locals 0

    .line 53185
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    return-object p0
.end method

.method public static A0E(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0W:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Sw;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53186
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Sw;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53187
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0H()V
    .locals 21

    .line 53188
    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0b:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53189
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53190
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53191
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 53192
    .local v8, "iconView":Lcom/facebook/ads/redexgen/X/OA;
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 53193
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53194
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0b:I

    .line 53195
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53196
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 53197
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53198
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53199
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53200
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53201
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v3

    .line 53202
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53203
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53204
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53205
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53206
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53207
    new-instance v15, Lcom/facebook/ads/redexgen/X/OC;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    sget v17, Lcom/facebook/ads/redexgen/X/Sw;->A0e:I

    sget v19, Lcom/facebook/ads/redexgen/X/Sw;->A0d:I

    const/16 v18, 0x5

    const/16 v20, -0x1

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/OC;-><init>(Lcom/facebook/ads/redexgen/X/XT;IIII)V

    .line 53208
    .local v0, "starRatingContainer":Lcom/facebook/ads/redexgen/X/OC;
    const/16 v11, 0x10

    invoke-virtual {v15, v11}, Lcom/facebook/ads/redexgen/X/OC;->setGravity(I)V

    .line 53209
    const/4 v10, -0x1

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53210
    .local v1, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53211
    .local v1, "ratingCountView":Landroid/widget/TextView;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53212
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v6

    .line 53213
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53214
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 53215
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 53216
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53217
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/facebook/ads/redexgen/X/Sw;->A0Z:I

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53218
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53219
    .local v0, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53220
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53221
    sget v10, Lcom/facebook/ads/redexgen/X/Sw;->A0c:I

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53222
    .local v0, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v10, Lcom/facebook/ads/redexgen/X/Sw;->A0Z:I

    div-int/lit8 v10, v10, 0x2

    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53223
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v10, 0x3

    invoke-virtual {v12, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53224
    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53225
    invoke-virtual {v6, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53226
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53227
    .local v7, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0Z:I

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53228
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/OA;->getId()I

    move-result v0

    invoke-virtual {v11, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53229
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53230
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Sw;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53231
    .local v0, "titleAndRatingContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v10, v6, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53232
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53233
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 53234
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53235
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "bsFsSO04IJ4eZVQxRT"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53236
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53237
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53238
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53239
    .end local v9
    :cond_2
    :goto_0
    return-void

    .line 53240
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53241
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53242
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 53243
    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/OC;->setRating(F)V

    .line 53244
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53246
    .local v9, "ratingSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53247
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 53249
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53250
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53251
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private A0I()V
    .locals 2

    .line 53252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53253
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0K()V

    .line 53254
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 53255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0K:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A04:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 53256
    :cond_0
    return-void

    .line 53257
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0N()V

    goto :goto_0
.end method

.method private A0J()V
    .locals 7

    .line 53258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0B:Z

    .line 53259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A07:Lcom/facebook/ads/redexgen/X/PV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PV;->A05()V

    .line 53261
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    .line 53262
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A5X()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/7v;-><init>(II)V

    .line 53263
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 53264
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A08:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "I0JtICznoezMzS0InHXj65Cim"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "YxqOCBuXvZfwM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 53265
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53267
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53268
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53269
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v6

    .line 53270
    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/O1;->A03(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;)V

    .line 53271
    :cond_1
    return-void
.end method

.method private A0K()V
    .locals 4

    .line 53272
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53273
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53274
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v1

    .line 53277
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A07(I)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v0

    .line 53278
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->A0B()Lcom/facebook/ads/redexgen/X/P5;

    move-result-object v2

    .line 53279
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/P5;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0I:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0U:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 53280
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sw;->A0h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53281
    new-instance v0, Lcom/facebook/ads/redexgen/X/T1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T1;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/P5;->A04(Lcom/facebook/ads/redexgen/X/P4;)V

    .line 53282
    return-void
.end method

.method private A0L()V
    .locals 8

    .line 53283
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A09()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    .line 53284
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    .line 53285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53286
    const/4 v6, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53287
    .local p0, "appMetadataLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Sw;->A0a:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0g:I

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53288
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53289
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    .line 53290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53291
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0S:Z

    if-eqz v0, :cond_2

    .line 53292
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0H()V

    .line 53293
    :goto_0
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53294
    .local v1, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0a:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    if-eqz v0, :cond_0

    .line 53297
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53298
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53299
    .local v0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53300
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53301
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53303
    .end local v0    # "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 53304
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53305
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53306
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53307
    .local v0, "adWebViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sw;->A0a:I

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53308
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53309
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MT;->setVisibility(I)V

    .line 53311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PP;->setVisibility(I)V

    .line 53312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 53313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->A0B()V

    .line 53318
    :cond_1
    return-void

    .line 53319
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:Landroid/widget/RelativeLayout;

    .line 53320
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0C()Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53321
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private A0M()V
    .locals 6

    .line 53322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53323
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 53324
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0p:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 53325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53326
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 53327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 53328
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0O:Lcom/facebook/ads/redexgen/X/O8;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Landroid/view/View;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    const/4 v3, 0x2

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0Z([Landroid/view/View;)V

    .line 53329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 53330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 53331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0P:Lcom/facebook/ads/redexgen/X/PU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    .line 53332
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PU;->A03(Lcom/facebook/ads/redexgen/X/SZ;)Landroid/util/Pair;

    move-result-object v2

    .line 53333
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Landroid/view/View;

    .line 53334
    sget-object v1, Lcom/facebook/ads/redexgen/X/Mg;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/PT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PT;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_0

    .line 53335
    .end local v1
    :goto_0
    return-void

    .line 53336
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 53337
    new-array v0, v5, [Landroid/view/View;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0Z([Landroid/view/View;)V

    .line 53338
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53339
    .local v1, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 53340
    .end local v1    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53341
    .local v1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 53343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 53344
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53345
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Sw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53346
    goto :goto_0
.end method

.method private A0N()V
    .locals 4

    .line 53347
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 53348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53349
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "xj34PAIXy0BC0JvFurkBkOtWc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hWQrQPNffHRqy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/PP;->A0B()V

    .line 53350
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MT;->setVisibility(I)V

    .line 53351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PP;->setVisibility(I)V

    .line 53352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 53353
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 53354
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 53355
    return-void
.end method

.method private A0O()V
    .locals 3

    .line 53356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53357
    return-void

    .line 53358
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Landroid/widget/Toast;

    .line 53359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A03()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0Q(I)V

    .line 53360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53361
    return-void
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x50

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sw;->A0W:[B

    return-void

    :array_0
    .array-data 1
        -0x6et
        -0x61t
        -0x5et
        -0x46t
        -0x54t
        -0x56t
        -0x46t
        -0x5ct
        0x4t
        0xdt
        0xat
        0x4t
        0xct
        0x0t
        0x10t
        0x13t
        0xat
        0x8t
        0xat
        0xft
        -0x47t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        -0x6t
        -0x13t
        0x0t
        -0xbt
        0x2t
        -0xft
        -0x15t
        -0x11t
        -0x8t
        -0xbt
        -0x11t
        -0x9t
        -0x35t
        -0x39t
        -0x44t
        -0x42t
        -0x40t
        -0x38t
        -0x40t
        -0x37t
        -0x31t
        -0x29t
        -0x36t
        -0x24t
        -0x3at
        -0x29t
        -0x37t
        -0x36t
        -0x37t
        -0x3ct
        -0x25t
        -0x32t
        -0x37t
        -0x36t
        -0x2ct
        -0x3ct
        -0x4et
        -0x51t
        -0x3dt
        -0x4at
        -0x4et
        -0x3ct
        -0x54t
        -0x50t
        -0x47t
        -0x4at
        -0x50t
        -0x48t
    .end array-data
.end method

.method private A0Q(I)V
    .locals 6

    .line 53362
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 53363
    .local p0, "progress":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53364
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x6

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/Sw;->A0f:I

    .line 53365
    const/16 v1, 0x31

    const/4 v0, 0x0

    invoke-static {v4, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0Y(Landroid/widget/Toast;Ljava/lang/String;III)V

    .line 53366
    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0O()V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53368
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0J()V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53369
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0M()V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0N()V

    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Sw;I)V
    .locals 0

    .line 53371
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sw;->A0Q(I)V

    return-void
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/Sw;Z)V
    .locals 0

    .line 53372
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sw;->A0X(Z)V

    return-void
.end method

.method private A0X(Z)V
    .locals 12

    .line 53373
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53374
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    const/16 v2, 0x43

    const/16 v1, 0xd

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/16 v2, 0x8

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53375
    new-instance v5, Lcom/facebook/ads/redexgen/X/O1;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0M:Lcom/facebook/ads/redexgen/X/Mw;

    .line 53376
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A60()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53377
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53378
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0L:Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 53379
    .local p1, "helper":Lcom/facebook/ads/redexgen/X/O1;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    if-eqz v0, :cond_0

    .line 53380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53381
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    .line 53382
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/O1;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 53383
    .end local v3
    :goto_1
    return-void

    .line 53384
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A04()Z

    move-result v4

    const/4 v2, 0x1

    xor-int/2addr v4, v2

    .line 53385
    .local v3, "skipRedirect":Z
    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/O1;->A0A(Z)V

    .line 53386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53387
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    .line 53388
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/O1;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 53389
    if-eqz v4, :cond_1

    .line 53390
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Lcom/facebook/ads/redexgen/X/Sw;)V

    .line 53391
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53392
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A08:Z

    goto :goto_1

    .line 53393
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 53394
    :cond_3
    const/16 v2, 0x20

    const/16 v1, 0xc

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private A0Y()Z
    .locals 4

    .line 53395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x35

    const/16 v1, 0xe

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53396
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xc

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53397
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "r5y7OBqhAYVA47bIfl4AlIWKO2XfiX80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 53398
    :goto_0
    return v0

    .line 53399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Z()Z
    .locals 2

    .line 53400
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0U:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0E:Lcom/facebook/ads/redexgen/X/1U;

    .line 53401
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53402
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 53403
    :goto_0
    return v0

    .line 53404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53405
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0B:Z

    return p0
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53406
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0S:Z

    return p0
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53407
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0U:Z

    return p0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53408
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A09:Z

    return p0
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53409
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0C:Z

    return p0
.end method

.method public static synthetic A0f(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53410
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0T:Z

    return p0
.end method

.method public static synthetic A0g(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53411
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0Y()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0h(Lcom/facebook/ads/redexgen/X/Sw;)Z
    .locals 0

    .line 53412
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sw;->A0Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/Sw;Z)Z
    .locals 0

    .line 53413
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0C:Z

    return p1
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/Sw;Z)Z
    .locals 0

    .line 53414
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0A:Z

    return p1
.end method


# virtual methods
.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 2

    .line 53415
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Lcom/facebook/ads/redexgen/X/52;

    .line 53416
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Lcom/facebook/ads/redexgen/X/52;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0F:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->A0K(Lcom/facebook/ads/redexgen/X/50;)V

    .line 53417
    return-void
.end method

.method public final ABU(Z)V
    .locals 1

    .line 53418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A06()Z

    .line 53419
    return-void
.end method

.method public final ABt(Z)V
    .locals 4

    .line 53420
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0C:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0A:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    .line 53421
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "UQp6GtSKm4mkcrS1rXAjxFqYQJcA6U4M"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    .line 53422
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 53424
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 0

    .line 53425
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53426
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 53427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0K:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A03()V

    .line 53428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Lcom/facebook/ads/redexgen/X/52;

    if-eqz v1, :cond_0

    .line 53429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0F:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->A0L(Lcom/facebook/ads/redexgen/X/50;)V

    .line 53430
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    if-eqz v0, :cond_2

    .line 53431
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sw;->A0X:[Ljava/lang/String;

    const-string v1, "voPpcOtL9PQSCLq1wYvqOCQr8JaLbGKq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53432
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0H:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0D:Lcom/facebook/ads/redexgen/X/16;

    .line 53433
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53434
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    .line 53435
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 53436
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 53437
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8n(Ljava/lang/String;Ljava/util/Map;)V

    .line 53438
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Lcom/facebook/ads/redexgen/X/PP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->A0C()V

    .line 53439
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0J:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A06()Z

    .line 53440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarListener(Lcom/facebook/ads/redexgen/X/MS;)V

    .line 53441
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Landroid/widget/Toast;

    .line 53442
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Lcom/facebook/ads/redexgen/X/52;

    .line 53443
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 53444
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 53445
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53446
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sw;->ABt(Z)V

    .line 53447
    :goto_0
    return-void

    .line 53448
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sw;->ABU(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 0

    .line 53449
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/PV;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 53450
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A07:Lcom/facebook/ads/redexgen/X/PV;

    .line 53451
    return-void
.end method
