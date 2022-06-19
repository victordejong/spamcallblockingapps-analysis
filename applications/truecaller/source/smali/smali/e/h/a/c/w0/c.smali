.class public Le/h/a/c/w0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/w0/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;Lorg/json/JSONArray;)Ln3/k/a/q;
    .locals 0

    invoke-static/range {p0 .. p5}, Le/h/a/c/w0/d;->a(Le/h/a/c/w0/e;Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;Lorg/json/JSONArray;)Ln3/k/a/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "nt"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Le/h/a/c/w0/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ico"

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    const-string v0, "wzrk_ck"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Bundle;Landroid/content/Context;Ln3/k/a/q;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;I)Ln3/k/a/q;
    .locals 9

    const-string v0, "wzrk_nms"

    const-string v1, "ico"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wzrk_bp"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v4, "http"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    :try_start_0
    invoke-static {v2, v3, p2}, Le/h/a/c/j0;->h(Ljava/lang/String;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v4, Ln3/k/a/n;

    invoke-direct {v4}, Ln3/k/a/n;-><init>()V

    .line 8
    invoke-virtual {v4, v0}, Ln3/k/a/n;->k(Ljava/lang/CharSequence;)Ln3/k/a/n;

    .line 9
    iput-object v2, v4, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v4, Ln3/k/a/n;

    invoke-direct {v4}, Ln3/k/a/n;-><init>()V

    iget-object v0, p0, Le/h/a/c/w0/c;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v0}, Ln3/k/a/n;->k(Ljava/lang/CharSequence;)Ln3/k/a/n;

    .line 12
    iput-object v2, v4, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Failed to fetch big picture!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    new-instance v4, Ln3/k/a/o;

    invoke-direct {v4}, Ln3/k/a/o;-><init>()V

    iget-object v0, p0, Le/h/a/c/w0/c;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v0}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    .line 16
    invoke-virtual {p4}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    new-instance v4, Ln3/k/a/o;

    invoke-direct {v4}, Ln3/k/a/o;-><init>()V

    iget-object v0, p0, Le/h/a/c/w0/c;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v0}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    .line 20
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v5, 0x1

    if-lt v0, v2, :cond_3

    move v3, v5

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "wzrk_st"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ln3/k/a/q;->y(Ljava/lang/CharSequence;)Ln3/k/a/q;

    :cond_4
    const-string v0, "wzrk_clr"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 25
    iput v0, p3, Ln3/k/a/q;->D:I

    .line 26
    invoke-virtual {p3, v5}, Ln3/k/a/q;->k(Z)Ln3/k/a/q;

    .line 27
    :cond_5
    iget-object v0, p0, Le/h/a/c/w0/c;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    iget-object v0, p0, Le/h/a/c/w0/c;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p3, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 29
    invoke-static {p1, p2}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 30
    iput-object v0, p3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    .line 31
    invoke-virtual {p3, v0, v5}, Ln3/k/a/q;->p(IZ)V

    .line 32
    invoke-virtual {p3, v4}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    iget v0, p0, Le/h/a/c/w0/c;->c:I

    .line 33
    iget-object v2, p3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    .line 34
    invoke-static {v1, v5, p2}, Le/h/a/c/j0;->h(Ljava/lang/String;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const/4 v0, 0x0

    const-string v1, "wzrk_acts"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 36
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 37
    invoke-virtual {p4}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    .line 38
    iget-object p4, p4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "error parsing notification actions: "

    .line 39
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v2, p4, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v8, v0

    :goto_1
    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move v6, p5

    move-object v7, p3

    .line 42
    invoke-interface/range {v3 .. v8}, Le/h/a/c/w0/e;->a(Landroid/content/Context;Landroid/os/Bundle;ILn3/k/a/q;Lorg/json/JSONArray;)Ln3/k/a/q;

    return-object p3
.end method

.method public f(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput p1, p0, Le/h/a/c/w0/c;->c:I

    return-void
.end method

.method public g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "nm"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/w0/c;->a:Ljava/lang/String;

    return-object p1
.end method
