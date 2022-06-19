.class public Le/i/b/b2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/b2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/b2/b$b;,
        Le/i/b/b2/b$c;,
        Le/i/b/b2/b$d;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/s2/c;

.field public final b:Le/i/b/s2/i;

.field public final c:Le/i/b/q2/h;


# direct methods
.method public constructor <init>(Le/i/b/s2/c;Le/i/b/s2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/b2/b;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/b2/b;->c:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/b2/b;->a:Le/i/b/s2/c;

    .line 4
    iput-object p2, p0, Le/i/b/b2/b;->b:Le/i/b/s2/i;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/d2/a;
    .locals 1

    .line 1
    sget-object v0, Le/i/b/d2/a;->h:Le/i/b/d2/a;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 2
    invoke-static {p1}, Le/i/b/b2/b$b;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c(Ljava/lang/Object;Le/i/b/s2/a;Le/i/b/u2/w;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Le/i/b/b2/b$c;

    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v1, p1, v2}, Le/i/b/b2/b$c;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Le/i/b/b2/b$a;)V

    :goto_1
    move-object v2, v1

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {p1}, Le/i/b/b2/b$b;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Le/i/b/b2/b$b;

    invoke-direct {v1, p1, v2}, Le/i/b/b2/b$b;-><init>(Ljava/lang/Object;Le/i/b/b2/b$a;)V

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p3}, Le/i/b/u2/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "crt_cpm"

    invoke-virtual {v2, v1, p1}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Le/i/b/b2/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const-string p2, "crt_size"

    const-string v1, "crt_displayurl"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_c

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto/16 :goto_6

    .line 7
    :cond_3
    invoke-virtual {p3}, Le/i/b/u2/w;->i()Le/i/b/u2/c/n;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_6

    .line 8
    :cond_4
    invoke-virtual {p1}, Le/i/b/u2/c/n;->h()Le/i/b/u2/c/r;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Le/i/b/u2/c/r;->g()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_title"

    invoke-virtual {p0, v2, p3, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Le/i/b/u2/c/r;->c()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_desc"

    invoke-virtual {p0, v2, p3, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Le/i/b/u2/c/r;->f()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_price"

    invoke-virtual {p0, v2, p3, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/c/r;->b()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_clickurl"

    invoke-virtual {p0, v2, p3, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Le/i/b/u2/c/r;->a()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_cta"

    invoke-virtual {p0, v2, p3, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Le/i/b/u2/c/r;->e()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_imageurl"

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object p2

    invoke-virtual {p2}, Le/i/b/u2/c/m;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advname"

    .line 16
    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object p2

    invoke-virtual {p2}, Le/i/b/u2/c/m;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advdomain"

    .line 18
    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Le/i/b/u2/c/n;->b()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advlogourl"

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object p2

    invoke-virtual {p2}, Le/i/b/u2/c/m;->d()Ljava/net/URI;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advurl"

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object p2

    invoke-virtual {p2}, Le/i/b/u2/c/q;->a()Ljava/net/URI;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_prurl"

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Le/i/b/u2/c/n;->g()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_primageurl"

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object p2

    invoke-virtual {p2}, Le/i/b/u2/c/q;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_prtext"

    .line 26
    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Le/i/b/u2/c/n;->c()Ljava/util/List;

    move-result-object p1

    .line 28
    :goto_3
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_5

    .line 29
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crtn_pixurl_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, p2, p3}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "crtn_pixcount"

    invoke-virtual {v2, p2, p1}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 31
    :cond_6
    invoke-virtual {p3}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Le/i/b/b2/b;->a:Le/i/b/s2/c;

    invoke-virtual {p1}, Le/i/b/s2/c;->a()I

    move-result p1

    if-ne p1, v3, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v0

    .line 33
    :goto_4
    iget-object v1, p0, Le/i/b/b2/b;->b:Le/i/b/s2/i;

    .line 34
    iget-object v1, v1, Le/i/b/s2/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 35
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 36
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x44160000    # 600.0f

    mul-float/2addr v1, v5

    int-to-float v4, v4

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_8

    move v0, v3

    :cond_8
    if-eqz v0, :cond_a

    const/16 v0, 0x400

    const/16 v1, 0x300

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p3}, Le/i/b/u2/w;->l()I

    move-result v3

    if-lt v3, v1, :cond_9

    invoke-virtual {p3}, Le/i/b/u2/w;->g()I

    move-result v3

    if-lt v3, v0, :cond_9

    const-string p1, "768x1024"

    goto :goto_5

    :cond_9
    if-nez p1, :cond_a

    .line 38
    invoke-virtual {p3}, Le/i/b/u2/w;->l()I

    move-result v3

    if-lt v3, v0, :cond_a

    .line 39
    invoke-virtual {p3}, Le/i/b/u2/w;->g()I

    move-result p3

    if-lt p3, v1, :cond_a

    const-string p1, "1024x768"

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    const-string p1, "320x480"

    goto :goto_5

    :cond_b
    const-string p1, "480x320"

    .line 40
    :goto_5
    invoke-virtual {v2, p2, p1}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 41
    :cond_c
    invoke-virtual {p3}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Le/i/b/b2/b;->d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Le/i/b/u2/w;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le/i/b/u2/w;->g()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_6
    iget-object p1, p0, Le/i/b/b2/b;->c:Le/i/b/q2/h;

    sget-object p2, Le/i/b/d2/a;->h:Le/i/b/d2/a;

    .line 44
    iget-object p3, v2, Le/i/b/b2/b$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-static {p2, p3}, Le/i/b/b2/a;->a(Le/i/b/d2/a;Ljava/lang/String;)Le/i/b/q2/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method public final d(Le/i/b/b2/b$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v2, 0x2

    .line 4
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p2}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-virtual {p1, p3, v1}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
