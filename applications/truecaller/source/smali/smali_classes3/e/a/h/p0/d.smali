.class public final Le/a/h/p0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/p0/c;


# instance fields
.field public final a:Le/a/h/p0/a;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/h/p0/a;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactSettingsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/p0/d;->a:Le/a/h/p0/a;

    iput-object p2, p0, Le/a/h/p0/d;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/p0/d;->a:Le/a/h/p0/a;

    invoke-interface {v0}, Le/a/h/p0/a;->a()V

    return-void
.end method

.method public b(Le/a/h/p0/e/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/p0/e/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/p0/d;->b:Ls1/w/f;

    new-instance v1, Le/a/h/p0/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/h/p0/d$c;-><init>(Le/a/h/p0/d;Le/a/h/p0/e/a;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Le/a/h/p0/e/a;)V
    .locals 2

    const-string v0, "contactSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h/p0/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/h/p0/d$b;-><init>(Le/a/h/p0/d;Le/a/h/p0/e/a;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Le/a/h/p0/e/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/p0/e/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/p0/d;->b:Ls1/w/f;

    new-instance v1, Le/a/h/p0/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/h/p0/d$a;-><init>(Le/a/h/p0/d;Le/a/h/p0/e/a;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Le/a/h/p0/e/a;)V
    .locals 2

    const-string v0, "contactSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h/p0/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/h/p0/d$d;-><init>(Le/a/h/p0/d;Le/a/h/p0/e/a;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;)Le/a/h/p0/e/a;
    .locals 1

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/p0/d;->a:Le/a/h/p0/a;

    invoke-interface {v0, p1}, Le/a/h/p0/a;->b(Ljava/lang/String;)Le/a/h/p0/e/a;

    move-result-object p1

    return-object p1
.end method
