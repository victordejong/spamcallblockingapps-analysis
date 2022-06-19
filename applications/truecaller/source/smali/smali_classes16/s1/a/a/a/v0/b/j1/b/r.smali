.class public final Ls1/a/a/a/v0/b/j1/b/r;
.super Ls1/a/a/a/v0/b/j1/b/d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/h;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/j1/b/d;-><init>(Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/r;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b()Ls1/a/a/a/v0/d/a/f0/v;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/r;->b:Ljava/lang/Class;

    const-string v1, "type"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    return-object v1
.end method
