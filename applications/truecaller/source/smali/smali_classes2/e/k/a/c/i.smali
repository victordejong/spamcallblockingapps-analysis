.class public abstract Le/k/a/c/i;
.super Le/k/a/b/z/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/Type;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/b/z/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Le/k/a/c/i;->b:I

    .line 4
    iput-object p3, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 6
    iput-boolean p5, p0, Le/k/a/c/i;->e:Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-static {v0}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Enum;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-static {v0}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    sget-object v1, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "java.lang.Record"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final J(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract K(Ljava/lang/Class;Le/k/a/c/m0/n;Le/k/a/c/i;[Le/k/a/c/i;)Le/k/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/i;",
            "[",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/i;"
        }
    .end annotation
.end method

.method public abstract L(Le/k/a/c/i;)Le/k/a/c/i;
.end method

.method public abstract M(Ljava/lang/Object;)Le/k/a/c/i;
.end method

.method public abstract N(Ljava/lang/Object;)Le/k/a/c/i;
.end method

.method public O(Le/k/a/c/i;)Le/k/a/c/i;
    .locals 2

    .line 1
    iget-object v0, p1, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/c/i;->Q(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 4
    :goto_0
    iget-object p1, p1, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-eq p1, v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract P()Le/k/a/c/i;
.end method

.method public abstract Q(Ljava/lang/Object;)Le/k/a/c/i;
.end method

.method public abstract R(Ljava/lang/Object;)Le/k/a/c/i;
.end method

.method public bridge synthetic a()Le/k/a/b/z/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/i;->p()Le/k/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f(I)Le/k/a/c/i;
.end method

.method public abstract g()I
.end method

.method public h(I)Le/k/a/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/i;->f(I)Le/k/a/c/i;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/i;->b:I

    return v0
.end method

.method public abstract i(Ljava/lang/Class;)Le/k/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/i;"
        }
    .end annotation
.end method

.method public abstract j()Le/k/a/c/m0/n;
.end method

.method public k()Le/k/a/c/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract l(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract m(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;"
        }
    .end annotation
.end method

.method public o()Le/k/a/c/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Le/k/a/c/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract q()Le/k/a/c/i;
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/i;->g()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final u(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public abstract z()Z
.end method
