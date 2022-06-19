.class public Lcom/freshchat/consumer/sdk/j/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public rW:I

.field public rX:I

.field public rY:Ljava/io/File;

.field public rZ:Landroid/graphics/Bitmap$CompressFormat;

.field public sa:I

.field public sb:Z

.field public sc:Z

.field public sd:Z

.field public se:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->rW:I

    const/high16 v0, 0x1400000

    iput v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->rX:I

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/a/d;->jZ()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->rZ:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->sa:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->sb:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->sc:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->sd:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->se:Z

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/a/d;->R(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->rY:Ljava/io/File;

    return-void
.end method

.method private static bh(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;F)V
    .locals 1

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/d$a;->bh(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    const/high16 p1, 0x44800000    # 1024.0f

    mul-float/2addr p2, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/a/d$a;->rW:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
