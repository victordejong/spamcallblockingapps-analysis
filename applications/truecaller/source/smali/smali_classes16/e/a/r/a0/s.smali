.class public final Le/a/r/a0/s;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/style/URLSpan;

.field public final synthetic b:Le/a/r/a0/r;


# direct methods
.method public constructor <init>(Landroid/text/style/URLSpan;Le/a/r/a0/r;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/s;->a:Landroid/text/style/URLSpan;

    iput-object p2, p0, Le/a/r/a0/s;->b:Le/a/r/a0/r;

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "widget"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r/a0/s;->b:Le/a/r/a0/r;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/r/a0/s;->a:Landroid/text/style/URLSpan;

    const-string v0, "span"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v1, "span.url"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "language"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Le/a/r/a0/s;->b:Le/a/r/a0/r;

    invoke-virtual {p1}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object p1

    check-cast p1, Le/a/r/a0/z;

    .line 4
    iget-object v0, p1, Le/a/r/a0/z;->d:Le/a/b0/k/c;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, v0, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Le/a/r/a0/z;->Jj(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/r/a0/x;->yr()V

    goto :goto_0

    :cond_3
    const-string p1, "altLanguage"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_4
    iget-object p1, p0, Le/a/r/a0/s;->a:Landroid/text/style/URLSpan;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0, v3, v4}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Le/a/r/a0/s;->b:Le/a/r/a0/r;

    invoke-virtual {p1}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object p1

    check-cast p1, Le/a/r/a0/z;

    .line 11
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a0/x;

    if-eqz v0, :cond_5

    iget-object p1, p1, Le/a/r/a0/z;->q:Le/a/r/a0/h;

    .line 12
    iget-object p1, p1, Le/a/r/a0/h;->b:Le/a/b0/k/f;

    invoke-virtual {p1}, Le/a/b0/k/f;->a()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Le/a/r/a0/x;->tz(Ljava/util/List;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
