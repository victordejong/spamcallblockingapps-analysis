.class public abstract Ls1/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/b;
.implements Ls1/a/a/a/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/b<",
        "TR;>;",
        "Ls1/a/a/a/h0;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/k0<",
            "Ljava/util/ArrayList<",
            "Ls1/a/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/g$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/g$a;-><init>(Ls1/a/a/a/g;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026or.computeAnnotations() }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/a/a/a/g$b;

    invoke-direct {v0, p0}, Ls1/a/a/a/g$b;-><init>(Ls1/a/a/a/g;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026ze()\n        result\n    }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/a/a/a/g;->a:Ls1/a/a/a/k0;

    .line 4
    new-instance v0, Ls1/a/a/a/g$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/g$c;-><init>(Ls1/a/a/a/g;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026eturnType\n        }\n    }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ls1/a/a/a/g$d;

    invoke-direct {v0, p0}, Ls1/a/a/a/g$d;-><init>(Ls1/a/a/a/g;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    const-string v1, "ReflectProperties.lazySo\u2026this, descriptor) }\n    }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ls1/a/a/a/g;->b()Ls1/a/a/a/u0/h;

    move-result-object v0

    invoke-interface {v0, p1}, Ls1/a/a/a/u0/h;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ls1/a/q/a;

    invoke-direct {v0, p1}, Ls1/a/q/a;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v0
.end method

.method public abstract b()Ls1/a/a/a/u0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/u0/h<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract c()Ls1/a/a/a/n;
.end method

.method public abstract e()Ls1/a/a/a/v0/b/b;
.end method

.method public final f()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ls1/a/b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/g;->c()Ls1/a/a/a/n;

    move-result-object v0

    invoke-interface {v0}, Ls1/z/c/c;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract g()Z
.end method
