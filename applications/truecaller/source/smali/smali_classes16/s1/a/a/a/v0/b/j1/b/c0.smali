.class public final Ls1/a/a/a/v0/b/j1/b/c0;
.super Ls1/a/a/a/v0/b/j1/b/d0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/u;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/d0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/c0;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public N()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/c0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/a/i;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/c0;->a:Ljava/lang/Class;

    .line 2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/c0;->a:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/j/w/c;->c(Ljava/lang/String;)Ls1/a/a/a/v0/j/w/c;

    move-result-object v0

    const-string v1, "JvmPrimitiveType.get(reflectType.name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/w/c;->e()Ls1/a/a/a/v0/a/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method
