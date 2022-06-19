.class public final Ls1/a/a/a/v0/b/j1/b/v;
.super Ls1/a/a/a/v0/b/j1/b/d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/m;


# instance fields
.field public final b:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/j1/b/d;-><init>(Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/v;->b:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public c()Ls1/a/a/a/v0/f/a;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/v;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clazz.enclosingClass"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/v;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    return-object v0
.end method
