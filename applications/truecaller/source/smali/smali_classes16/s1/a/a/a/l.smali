.class public final Ls1/a/a/a/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/e0;

.field public final synthetic c:Ls1/a/a/a/a$a$j;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/a$a$j;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/l;->b:Ls1/a/a/a/v0/m/e0;

    iput-object p2, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/l;->b:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/b/e;

    invoke-static {v1}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v2, v2, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    iget-object v2, v2, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 5
    iget-object v2, v2, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v0, v0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v2, v2, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    iget-object v2, v2, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 11
    iget-object v2, v2, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "jClass.interfaces"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/q/f/a/d/a;->q1([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 13
    iget-object v0, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v0, v0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 14
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_0
    const-string v1, "if (jClass.superclass ==\u2026ex]\n                    }"

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_1
    new-instance v1, Ls1/a/a/a/i0;

    const-string v2, "No superclass of "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v3, v3, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in Java reflection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_2
    new-instance v1, Ls1/a/a/a/i0;

    const-string v2, "Unsupported superclass of "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ls1/a/a/a/l;->c:Ls1/a/a/a/a$a$j;

    iget-object v3, v3, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_3
    new-instance v1, Ls1/a/a/a/i0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supertype not a class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v1
.end method
