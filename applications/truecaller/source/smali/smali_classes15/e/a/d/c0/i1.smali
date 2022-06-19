.class public final Le/a/d/c0/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/u0/a;


# instance fields
.field public a:Le/a/p5/u0/d;

.field public final b:Le/a/d/c0/g1;

.field public final c:Le/a/d/g;


# direct methods
.method public constructor <init>(Le/a/d/c0/g1;Le/a/d/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/i1;->b:Le/a/d/c0/g1;

    iput-object p2, p0, Le/a/d/c0/i1;->c:Le/a/d/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/i1;->b:Le/a/d/c0/g1;

    const-string v1, "showCaseDisplayed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/d/c0/g1;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/i1;->c:Le/a/d/g;

    check-cast v0, Le/a/d/e;

    invoke-virtual {v0}, Le/a/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/c0/i1;->b:Le/a/d/c0/g1;

    const-string v1, "showCaseDisplayed"

    invoke-interface {v0, v1}, Le/a/d/c0/g1;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Le/a/p5/u0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/i1;->a:Le/a/p5/u0/d;

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
    iput-object p1, p0, Le/a/d/c0/i1;->a:Le/a/p5/u0/d;

    return-void
.end method
