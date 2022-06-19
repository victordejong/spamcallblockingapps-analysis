.class public Lg/g/a/a/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/k/h;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/y;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg/g/a/a/k/h;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lg/g/a/a/k/h;->a:Landroid/content/SharedPreferences;

    const-wide/16 v3, -0x1

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v5, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/hiya/api/exception/HiyaTooManyRequestsException;

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Too many requests."

    invoke-direct {p1, v0, v1}, Lcom/hiya/api/exception/HiyaTooManyRequestsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lg/g/a/a/k/h;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_2
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v0

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v0

    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_4

    .line 10
    :cond_3
    invoke-virtual {p1}, Lm/g0;->r()Lm/x;

    move-result-object v0

    const-string v2, "Retry-After"

    invoke-virtual {v0, v2}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    .line 13
    iget-object v0, p0, Lg/g/a/a/k/h;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-object p1
.end method
