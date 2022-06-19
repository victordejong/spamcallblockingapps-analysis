.class public final Le/a/t4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t4/c;


# instance fields
.field public a:Le/a/t4/e/b;

.field public b:Ljava/lang/Boolean;

.field public final c:Le/a/t4/a;

.field public final d:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/t4/a;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "muterFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t4/d;->c:Le/a/t4/a;

    iput-object p2, p0, Le/a/t4/d;->d:Le/a/p5/a0;

    return-void
.end method


# virtual methods
.method public a()Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/t4/d;->b()Le/a/t4/e/b;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le/a/t4/e/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(false)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Le/a/t4/e/b;->a()V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(true)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Le/a/t4/e/b;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/t4/d;->d:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->i()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/t4/d;->a:Le/a/t4/e/b;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/a/t4/d;->b:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Le/a/t4/d;->c:Le/a/t4/a;

    .line 5
    new-instance v2, Le/a/t4/e/a;

    iget-object v1, v1, Le/a/t4/a;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "audioManager.get()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/media/AudioManager;

    invoke-direct {v2, v1}, Le/a/t4/e/a;-><init>(Landroid/media/AudioManager;)V

    .line 6
    iput-object v2, p0, Le/a/t4/d;->a:Le/a/t4/e/b;

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/a/t4/d;->b:Ljava/lang/Boolean;

    return-object v2
.end method

.method public d()Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/t4/d;->b()Le/a/t4/e/b;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le/a/t4/e/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(false)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Le/a/t4/e/b;->d()V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(true)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
