.class public final Le/a/r/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/z;


# instance fields
.field public final a:Le/a/r/e/b;

.field public final b:Le/a/r/c/z;


# direct methods
.method public constructor <init>(Le/a/r/e/b;Le/a/r/c/z;)V
    .locals 1
    .param p2    # Le/a/r/c/z;
        .annotation runtime Ljavax/inject/Named;
            value = "primaryNumberSettingsHelper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "wizardSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/q;->a:Le/a/r/e/b;

    iput-object p2, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0, p1}, Le/a/r/c/z;->a(I)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->b()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/q;->a:Le/a/r/e/b;

    const-string v1, "wizard_EnteredNumber"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0, p1}, Le/a/r/c/z;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->g()V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0, p1}, Le/a/r/c/z;->i(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/c/q;->a:Le/a/r/e/b;

    const-string v1, "country_iso"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->k()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/r/c/q;->b:Le/a/r/c/z;

    invoke-interface {v0}, Le/a/r/c/z;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
