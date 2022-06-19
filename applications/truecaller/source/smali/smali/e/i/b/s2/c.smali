.class public Le/i/b/s2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/i/b/s2/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/i/b/s2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/s2/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/i/b/s2/c;->b:Le/i/b/s2/i;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/s2/c;->b:Le/i/b/s2/i;

    invoke-virtual {v0}, Le/i/b/s2/i;->a()Lcom/criteo/publisher/model/AdSize;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public b(I)I
    .locals 2

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Le/i/b/s2/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method
