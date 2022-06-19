.class public Lcom/appnext/core/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/j$a;
    }
.end annotation


# static fields
.field private static volatile dR:Lcom/appnext/core/j;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IZLcom/appnext/core/j$a;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p1

    invoke-virtual {p1, p3}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    new-instance p3, Lcom/appnext/core/j$1;

    invoke-direct {p3, p0, v0}, Lcom/appnext/core/j$1;-><init>(Lcom/appnext/core/j;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, p3}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    move-result-object p1

    .line 6
    new-instance p3, Le/f/a/r/h;

    invoke-direct {p3}, Le/f/a/r/h;-><init>()V

    if-lez p4, :cond_1

    .line 7
    new-instance p6, Le/f/a/n/q/d/y;

    invoke-direct {p6, p4}, Le/f/a/n/q/d/y;-><init>(I)V

    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p6, p4}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    :cond_1
    if-eqz p5, :cond_2

    .line 9
    sget-object p4, Le/f/a/n/o/k;->a:Le/f/a/n/o/k;

    invoke-virtual {p3, p4}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    .line 10
    :cond_2
    invoke-virtual {p1, p3}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "ImageLoader$displayImage"

    .line 11
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static ax()Lcom/appnext/core/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/j;->dR:Lcom/appnext/core/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/j;->dR:Lcom/appnext/core/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/j;

    invoke-direct {v1}, Lcom/appnext/core/j;-><init>()V

    sput-object v1, Lcom/appnext/core/j;->dR:Lcom/appnext/core/j;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/core/j;->dR:Lcom/appnext/core/j;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/appnext/core/j$a;)V
    .locals 7

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IZLcom/appnext/core/j$a;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcom/appnext/core/j$a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IZLcom/appnext/core/j$a;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/appnext/core/j$a;)V
    .locals 7

    const/16 v4, 0x10

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IZLcom/appnext/core/j$a;)V

    return-void
.end method
