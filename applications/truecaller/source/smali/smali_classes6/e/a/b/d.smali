.class public final Le/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/c;


# instance fields
.field public final a:Le/a/b/e;


# direct methods
.method public constructor <init>(Le/a/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bizmonManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/d;->a:Le/a/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/d;->a:Le/a/b/e;

    invoke-interface {v0}, Le/a/b/e;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "which"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/d;->a:Le/a/b/e;

    invoke-interface {v0, p1}, Le/a/b/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/d;->a:Le/a/b/e;

    invoke-interface {v0}, Le/a/b/e;->c()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/d;->a:Le/a/b/e;

    invoke-interface {v0}, Le/a/b/e;->e()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/d;->a:Le/a/b/e;

    invoke-interface {v0}, Le/a/b/e;->g()Z

    move-result v0

    return v0
.end method
