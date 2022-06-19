.class public final Le/a/y/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/d/b;


# instance fields
.field public a:Le/a/y/a/d/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/y/a/d/e;)V
    .locals 1

    const-string v0, "headerItemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/y/a/d/e;->c3()V

    return-void
.end method

.method public b(Le/a/y/a/d/e;Le/a/y/g/b;)V
    .locals 5

    const-string v0, "headerItemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashPopupHeaderItem"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p2, Le/a/y/g/b;->a:Landroid/os/Bundle;

    if-eqz p2, :cond_5

    const-string v0, "image"

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "it"

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "imageUrl"

    .line 4
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/y/a/d/e;->m2(Ljava/lang/String;)V

    :cond_1
    const-string v0, "video"

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iget-object v3, p0, Le/a/y/a/d/c;->a:Le/a/y/a/d/e$a;

    if-eqz v3, :cond_3

    const-string v4, "videoUrl"

    .line 8
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v3}, Le/a/y/a/d/e;->r1(Ljava/lang/String;Le/a/y/a/d/e$a;)V

    :cond_3
    const-string v0, "promo"

    .line 9
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 10
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move-object v1, p2

    :cond_4
    if-eqz v1, :cond_5

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/y/a/d/e;->B1(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public c(Le/a/y/a/d/e;)V
    .locals 1

    const-string v0, "headerItemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/d/c;->a:Le/a/y/a/d/e$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Le/a/y/a/d/e;->E2(Le/a/y/a/d/e$a;)V

    :cond_0
    return-void
.end method

.method public d(Le/a/y/a/d/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/y/a/d/c;->a:Le/a/y/a/d/e$a;

    return-void
.end method
