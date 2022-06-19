.class public final Le/h/a/b/i/i;
.super Le/h/a/b/i/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ProductDisplayNonLinearBigContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ProductDisplayLinearBigContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V",
        "setCustomContentViewElementColour",
        "",
        "rId",
        "",
        "colour",
        "",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->product_display_template:I

    invoke-direct {p0, p1, p2, p3, v0}, Le/h/a/b/i/h;-><init>(Landroid/content/Context;Le/h/a/b/d;Landroid/os/Bundle;I)V

    .line 2
    iget-object p1, p0, Le/h/a/b/i/h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->i(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/h/a/b/i/h;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->f(Ljava/lang/String;)V

    .line 6
    sget p1, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 7
    iget-object p3, p2, Le/h/a/b/d;->i:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1, p3}, Le/h/a/b/i/i;->l(ILjava/lang/String;)V

    .line 9
    sget p1, Lcom/clevertap/android/pushtemplates/R$id;->title:I

    .line 10
    iget-object p2, p2, Le/h/a/b/d;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p1, p2}, Le/h/a/b/i/i;->l(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final l(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    const-string v1, "#000000"

    .line 3
    invoke-static {p2, v1}, Le/h/a/b/g;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_1
    return-void
.end method
