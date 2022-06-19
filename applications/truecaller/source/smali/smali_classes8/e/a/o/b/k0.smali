.class public final Le/a/o/b/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/u0/a;


# instance fields
.field public a:Le/a/p5/u0/d;

.field public final b:Le/a/o/c;

.field public final c:Le/a/o/b/o;


# direct methods
.method public constructor <init>(Le/a/o/c;Le/a/o/b/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/k0;->b:Le/a/o/c;

    iput-object p2, p0, Le/a/o/b/k0;->c:Le/a/o/b/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/k0;->c:Le/a/o/b/o;

    const-string v1, "showcaseIsDisplayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/k0;->c:Le/a/o/b/o;

    const-string v1, "showcaseIsDisplayed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/o/b/k0;->b:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public c()Le/a/p5/u0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/k0;->a:Le/a/p5/u0/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "showcaseConfig"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d(Le/a/p5/u0/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/o/b/k0;->a:Le/a/p5/u0/d;

    return-void
.end method
