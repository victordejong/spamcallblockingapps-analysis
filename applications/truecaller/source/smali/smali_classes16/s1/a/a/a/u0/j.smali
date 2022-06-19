.class public final Ls1/a/a/a/u0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/u0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/u0/j$a;
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
.field public final a:Ls1/a/a/a/u0/j$a;

.field public final b:Ls1/a/a/a/u0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/u0/h<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/u0/h;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ls1/a/a/a/u0/h<",
            "+TM;>;Z)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "caller"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/u0/j;->b:Ls1/a/a/a/u0/h;

    iput-boolean p3, p0, Ls1/a/a/a/u0/j;->c:Z

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v2, "descriptor.returnType!!"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->e3(Ls1/a/a/a/v0/m/e0;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v5, "$this$getBoxMethod"

    .line 3
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "box-impl"

    new-array v5, v2, [Ljava/lang/Class;

    .line 4
    invoke-static {v1, p1}, Le/q/f/a/d/a;->f1(Ljava/lang/Class;Ls1/a/a/a/v0/b/b;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance p2, Ls1/a/a/a/i0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No box method found in inline class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (calling "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    move-object v0, v3

    .line 6
    :goto_0
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->b2(Ls1/a/a/a/v0/b/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance p1, Ls1/a/a/a/u0/j$a;

    sget-object p2, Ls1/d0/i;->e:Ls1/d0/i;

    .line 8
    sget-object p2, Ls1/d0/i;->d:Ls1/d0/i;

    new-array p3, v4, [Ljava/lang/reflect/Method;

    .line 9
    invoke-direct {p1, p2, p3, v0}, Ls1/a/a/a/u0/j$a;-><init>(Ls1/d0/i;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_9

    .line 10
    :cond_1
    instance-of v1, p2, Ls1/a/a/a/u0/i$g$c;

    const-string v5, "descriptor.containingDeclaration"

    const/4 v6, -0x1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    instance-of v1, p1, Ls1/a/a/a/v0/b/j;

    if-eqz v1, :cond_3

    .line 12
    instance-of p2, p2, Ls1/a/a/a/u0/g;

    if-eqz p2, :cond_4

    :goto_1
    move v2, v6

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->k0()Ls1/a/a/a/v0/b/n0;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of p2, p2, Ls1/a/a/a/u0/g;

    if-nez p2, :cond_4

    .line 14
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p2

    invoke-static {p2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->c2(Ls1/a/a/a/v0/b/k;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    const/4 p2, 0x2

    goto :goto_3

    :cond_6
    move p2, v4

    .line 15
    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 18
    :cond_8
    instance-of v1, p1, Ls1/a/a/a/v0/b/j;

    if-eqz v1, :cond_9

    .line 19
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/b/j;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/j;->N()Ls1/a/a/a/v0/b/e;

    move-result-object v1

    const-string v5, "descriptor.constructedClass"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v1}, Ls1/a/a/a/v0/b/i;->x()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 21
    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/a/a/a/v0/b/e;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 22
    :cond_9
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v5, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v5, :cond_a

    check-cast v1, Ls1/a/a/a/v0/b/e;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->h()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 24
    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_a
    :goto_5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v5, "descriptor.valueParameters"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 27
    check-cast v5, Ls1/a/a/a/v0/b/b1;

    .line 28
    invoke-interface {v5}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 29
    :cond_b
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 30
    invoke-static {p0}, Le/q/f/a/d/a;->G0(Ls1/a/a/a/u0/h;)I

    move-result p2

    if-ne p2, v1, :cond_e

    .line 31
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {p2, v5}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p2

    .line 32
    new-array v5, v1, [Ljava/lang/reflect/Method;

    :goto_7
    if-ge v4, v1, :cond_d

    .line 33
    invoke-virtual {p2, v4}, Ls1/d0/i;->d(I)Z

    move-result v6

    if-eqz v6, :cond_c

    sub-int v6, v4, v2

    .line 34
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/e0;

    invoke-static {v6}, Le/q/f/a/d/a;->e3(Ls1/a/a/a/v0/m/e0;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-static {v6, p1}, Le/q/f/a/d/a;->f1(Ljava/lang/Class;Ls1/a/a/a/v0/b/b;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_8

    :cond_c
    move-object v6, v3

    .line 35
    :goto_8
    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 36
    :cond_d
    new-instance p1, Ls1/a/a/a/u0/j$a;

    invoke-direct {p1, p2, v5, v0}, Ls1/a/a/a/u0/j$a;-><init>(Ls1/d0/i;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 37
    :goto_9
    iput-object p1, p0, Ls1/a/a/a/u0/j;->a:Ls1/a/a/a/u0/j$a;

    return-void

    .line 38
    :cond_e
    new-instance p2, Ls1/a/a/a/i0;

    const-string p3, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    .line 39
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0}, Le/q/f/a/d/a;->G0(Ls1/a/a/a/u0/h;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Calling: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Parameter types: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ls1/a/a/a/u0/j;->h()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Default: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean p1, p0, Ls1/a/a/a/u0/j;->c:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/j;->a:Ls1/a/a/a/u0/j$a;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/u0/j$a;->a:Ls1/d0/i;

    .line 3
    iget-object v2, v0, Ls1/a/a/a/u0/j$a;->b:[Ljava/lang/reflect/Method;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/u0/j$a;->c:Ljava/lang/reflect/Method;

    .line 5
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v4, v1, Ls1/d0/g;->a:I

    .line 7
    iget v1, v1, Ls1/d0/g;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gt v4, v1, :cond_c

    .line 8
    :goto_0
    aget-object v7, v2, v4

    .line 9
    aget-object v8, p1, v4

    if-eqz v7, :cond_b

    if-eqz v8, :cond_0

    new-array v9, v6, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    .line 11
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "method.returnType"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v8, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    const-string v8, "type"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 14
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    move-object v8, v7

    goto/16 :goto_2

    .line 15
    :cond_1
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    int-to-char v7, v6

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto :goto_1

    .line 16
    :cond_2
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    int-to-byte v7, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    goto :goto_1

    .line 17
    :cond_3
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    int-to-short v7, v6

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_1

    .line 18
    :cond_4
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 19
    :cond_5
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_1

    .line 20
    :cond_6
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    .line 21
    :cond_7
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_1

    .line 22
    :cond_8
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v7, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter with void type is illegal"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unknown primitive: "

    invoke-static {v0, v7}, Le/d/c/a/a;->w2(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    move-object v8, v5

    .line 24
    :cond_b
    :goto_2
    aput-object v8, v3, v4

    if-eq v4, v1, :cond_c

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 25
    :cond_c
    iget-object p1, p0, Ls1/a/a/a/u0/j;->b:Ls1/a/a/a/u0/h;

    invoke-interface {p1, v3}, Ls1/a/a/a/u0/h;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 26
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object p1, v0

    :cond_d
    return-object p1
.end method

.method public c()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/j;->b:Ls1/a/a/a/u0/h;

    invoke-interface {v0}, Ls1/a/a/a/u0/h;->c()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/u0/j;->b:Ls1/a/a/a/u0/h;

    invoke-interface {v0}, Ls1/a/a/a/u0/h;->g()Ljava/lang/reflect/Type;

    move-result-object v0

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
    iget-object v0, p0, Ls1/a/a/a/u0/j;->b:Ls1/a/a/a/u0/h;

    invoke-interface {v0}, Ls1/a/a/a/u0/h;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
