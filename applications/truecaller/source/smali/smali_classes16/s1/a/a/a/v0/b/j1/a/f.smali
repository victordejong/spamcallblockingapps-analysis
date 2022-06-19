.class public final Ls1/a/a/a/v0/b/j1/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/k;


# instance fields
.field public final a:Ls1/a/a/a/v0/k/b/f0/d;

.field public final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/f;->b:Ljava/lang/ClassLoader;

    .line 2
    new-instance p1, Ls1/a/a/a/v0/k/b/f0/d;

    invoke-direct {p1}, Ls1/a/a/a/v0/k/b/f0/d;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/f;->a:Ls1/a/a/a/v0/k/b/f0/d;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/d/b/k$a;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "javaClass.fqName?.asString() ?: return null"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/j1/a/f;->d(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/k$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/f/b;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k;->j:Ls1/a/a/a/v0/f/e;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/f/b;->i(Ls1/a/a/a/v0/f/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/f;->a:Ls1/a/a/a/v0/k/b/f0/d;

    sget-object v1, Ls1/a/a/a/v0/k/b/f0/a;->m:Ls1/a/a/a/v0/k/b/f0/a;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/k/b/f0/a;->a(Ls1/a/a/a/v0/f/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/k/b/f0/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/k$a;
    .locals 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "relativeClassName.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "packageFqName"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/b/j1/a/f;->d(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/k$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/k$a;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/f;->b:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Le/q/f/a/d/a;->m3(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/a/a/a/v0/b/j1/a/e;->d(Ljava/lang/Class;)Ls1/a/a/a/v0/b/j1/a/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Ls1/a/a/a/v0/d/b/k$a$b;

    const/4 v2, 0x2

    .line 3
    invoke-direct {v1, p1, v0, v2}, Ls1/a/a/a/v0/d/b/k$a$b;-><init>(Ls1/a/a/a/v0/d/b/l;[BI)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method
