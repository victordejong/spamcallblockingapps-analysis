.class public final Lcom/hiya/client/callerid/ui/a0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/x/a;->b(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public final b(ZLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Point;

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    iget v1, p2, Landroid/graphics/Point;->x:I

    const-string v2, "active_point_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    iget p2, p2, Landroid/graphics/Point;->y:I

    const-string v2, "active_point_y"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 4
    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    iget v1, p2, Landroid/graphics/Point;->x:I

    const-string v2, "point_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    iget p2, p2, Landroid/graphics/Point;->y:I

    const-string v2, "point_y"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 8
    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/r;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/hiya/client/callerid/ui/a0/r;->b(ZLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, p1}, Lcom/hiya/client/callerid/ui/a0/r;->b(ZLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final d(ZLandroid/graphics/Point;)V
    .locals 2

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p2, Landroid/graphics/Point;->x:I

    const-string v1, "active_point_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget p1, p2, Landroid/graphics/Point;->y:I

    const-string p2, "active_point_y"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p2, Landroid/graphics/Point;->x:I

    const-string v1, "point_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget p1, p2, Landroid/graphics/Point;->y:I

    const-string p2, "point_y"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
