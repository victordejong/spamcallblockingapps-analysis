.class public Ls1/a/a/a/y;
.super Ls1/a/a/a/z;
.source "SourceFile"

# interfaces
.implements Ls1/a/l;
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z<",
        "TV;>;",
        "Ljava/lang/Object<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final i:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/y$a<",
            "TD;TE;TV;>;>;"
        }
    .end annotation
.end field

.field public final j:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    .line 2
    new-instance p1, Ls1/a/a/a/y$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/y$b;-><init>(Ls1/a/a/a/y;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/y;->i:Ls1/a/a/a/l0;

    .line 3
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/y$c;

    invoke-direct {p2, p0}, Ls1/a/a/a/y$c;-><init>(Ls1/a/a/a/y;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/y;->j:Ls1/g;

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/y;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Ls1/a/a/a/z$b;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/y;->i:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/y$a;

    return-object v0
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/y;->i:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/y$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 2
    invoke-virtual {v0, v1}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
