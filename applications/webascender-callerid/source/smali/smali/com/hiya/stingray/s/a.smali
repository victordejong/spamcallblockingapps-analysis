.class public Lcom/hiya/stingray/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->c()Lcom/hiya/stingray/s/d/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/s/a;->a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/h;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/d/d;->A0()Lcom/hiya/stingray/s/d/d$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/hiya/stingray/s/d/d$b;->b(Lcom/hiya/stingray/s/d/h;)Lcom/hiya/stingray/s/d/d$b;

    .line 5
    invoke-virtual {v0}, Lcom/hiya/stingray/s/d/d$b;->a()Lcom/hiya/stingray/s/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/d/f;->h()Lcom/hiya/stingray/s/d/f$b;

    move-result-object v0

    invoke-static {p0}, Lcom/hiya/stingray/s/a;->a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/s/d/f$b;->b(Lcom/hiya/stingray/s/d/h;)Lcom/hiya/stingray/s/d/f$b;

    invoke-virtual {v0}, Lcom/hiya/stingray/s/d/f$b;->a()Lcom/hiya/stingray/s/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/hiya/stingray/s/d/i;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/d/g;->i()Lcom/hiya/stingray/s/d/g$b;

    move-result-object v0

    invoke-static {p0}, Lcom/hiya/stingray/s/a;->a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/s/d/g$b;->b(Lcom/hiya/stingray/s/d/h;)Lcom/hiya/stingray/s/d/g$b;

    invoke-virtual {v0}, Lcom/hiya/stingray/s/d/g$b;->a()Lcom/hiya/stingray/s/d/i;

    move-result-object p0

    return-object p0
.end method
