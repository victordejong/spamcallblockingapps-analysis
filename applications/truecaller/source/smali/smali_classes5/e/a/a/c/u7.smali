.class public final Le/a/a/c/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/t7;


# instance fields
.field public final a:Le/a/a/c/r8/b;


# direct methods
.method public constructor <init>(Le/a/a/c/r8/b;)V
    .locals 1

    const-string v0, "viewCacher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/c/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object v0

    check-cast v0, Le/a/a/c/a/t;

    return-object v0
.end method

.method public b(Le/a/a/c/r8/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const v1, 0x7f0a1148

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/r8/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Le/a/a/c/r8/d;->f(Le/a/a/c/r8/c;)Z

    :cond_0
    return-void
.end method

.method public c()Le/a/a/c/a/k;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object v0

    check-cast v0, Le/a/a/c/a/k;

    return-object v0
.end method

.method public d(Z)Le/a/a/c/r8/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object p1

    const-string v0, "viewCacher.acquireFor(\n \u2026TYPE_IMAGE_INCOMING\n    )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Z)Le/a/a/c/r8/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {v0, p1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object p1

    const-string v0, "viewCacher.acquireFor(\n \u2026TYPE_EMOJI_INCOMING\n    )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f(Z)Le/a/a/c/r8/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0, p1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object p1

    const-string v0, "viewCacher.acquireFor(\n \u2026VOICE_CLIP_INCOMING\n    )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Z)Le/a/a/c/r8/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    if-eqz p1, :cond_0

    const/16 p1, 0x62

    goto :goto_0

    :cond_0
    const/16 p1, 0x63

    :goto_0
    invoke-virtual {v0, p1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object p1

    const-string v0, "viewCacher.acquireFor(\n \u2026ATTACHMENT_INCOMING\n    )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(Z)Le/a/a/c/r8/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    if-eqz p1, :cond_0

    const/16 p1, 0x67

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    :goto_0
    invoke-virtual {v0, p1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object p1

    const-string v0, "viewCacher.acquireFor(\n \u2026ATED_EMOJI_INCOMING\n    )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public i()Le/a/a/c/a/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object v0

    check-cast v0, Le/a/a/c/a/a;

    return-object v0
.end method

.method public j()Le/a/a/c/n8/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/u7;->a:Le/a/a/c/r8/b;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Le/a/a/c/r8/b;->a(I)Le/a/a/c/r8/c;

    move-result-object v0

    check-cast v0, Le/a/a/c/n8/a;

    return-object v0
.end method
