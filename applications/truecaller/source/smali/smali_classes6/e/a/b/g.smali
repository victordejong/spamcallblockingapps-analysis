.class public final Le/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/e;


# instance fields
.field public a:Le/a/b/p/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/p5/c0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


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
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "show_verified_business_banner"

    .line 2
    invoke-interface {v0, v2, v1}, Le/a/b/p/c;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "bizMonSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "which"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, p1, v1}, Le/a/b/p/c;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "show_priority_call_banner"

    .line 2
    invoke-interface {v0, v2, v1}, Le/a/b/p/c;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "bizMonSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    const-string v1, ""

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const-string v2, "call_me_back_test_number"

    .line 2
    invoke-interface {v0, v2, v1}, Le/a/b/p/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "bizMonSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-object v1
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "show_verified_business_banner"

    .line 2
    invoke-interface {v0, v2, v1}, Le/a/b/p/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "bizMonSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_0

    const-string v1, "call_me_back_test_number"

    .line 2
    invoke-interface {v0, v1, p1}, Le/a/b/p/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/g;->a:Le/a/b/p/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "show_priority_call_banner"

    .line 2
    invoke-interface {v0, v2, v1}, Le/a/b/p/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "bizMonSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
