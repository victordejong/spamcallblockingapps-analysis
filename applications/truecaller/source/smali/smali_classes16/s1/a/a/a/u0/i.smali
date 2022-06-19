.class public abstract Ls1/a/a/a/u0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/u0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/u0/i$d;,
        Ls1/a/a/a/u0/i$c;,
        Ls1/a/a/a/u0/i$b;,
        Ls1/a/a/a/u0/i$a;,
        Ls1/a/a/a/u0/i$g;,
        Ls1/a/a/a/u0/i$e;,
        Ls1/a/a/a/u0/i$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/u0/h<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/u0/i;->b:Ljava/lang/reflect/Member;

    iput-object p2, p0, Ls1/a/a/a/u0/i;->c:Ljava/lang/reflect/Type;

    iput-object p3, p0, Ls1/a/a/a/u0/i;->d:Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 2
    new-instance p1, Ls1/z/c/f0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ls1/z/c/f0;-><init>(I)V

    .line 3
    iget-object p2, p1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1, p4}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ls1/z/c/f0;->b()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Type;

    .line 5
    iget-object p1, p1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, [Ljava/lang/reflect/Type;

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ls1/a/a/a/u0/i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/q/f/a/d/a;->r(Ls1/a/a/a/u0/h;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/i;->b:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/i;->b:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An object member requires the object instance passed as the first argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/i;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/i;->a:Ljava/util/List;

    return-object v0
.end method
