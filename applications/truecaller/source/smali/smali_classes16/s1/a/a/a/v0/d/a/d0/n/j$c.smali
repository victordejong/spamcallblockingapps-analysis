.class public final Ls1/a/a/a/v0/d/a/d0/n/j$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/j;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/d0/n/j$a;",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/j;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/j;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;

    const-string v0, "request"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/a/a/a/v0/f/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    .line 6
    iget-object v2, p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;->a:Ls1/a/a/a/v0/f/e;

    .line 7
    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    .line 8
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;->b:Ls1/a/a/a/v0/d/a/f0/g;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 10
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 11
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    .line 12
    invoke-interface {v2, v1}, Ls1/a/a/a/v0/d/b/k;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/d/b/k$a;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 14
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 15
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    .line 16
    invoke-interface {v1, v0}, Ls1/a/a/a/v0/d/b/k;->c(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/k$a;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Ls1/a/a/a/v0/d/b/k$a;->a()Ls1/a/a/a/v0/d/b/l;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 18
    invoke-interface {v3}, Ls1/a/a/a/v0/d/b/l;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->k()Z

    move-result v5

    if-nez v5, :cond_13

    .line 20
    iget-boolean v4, v4, Ls1/a/a/a/v0/f/a;->c:Z

    if-eqz v4, :cond_3

    goto/16 :goto_8

    .line 21
    :cond_3
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 22
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$b;->a:Ls1/a/a/a/v0/d/a/d0/n/j$b$b;

    if-nez v3, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    invoke-interface {v3}, Ls1/a/a/a/v0/d/b/l;->b()Ls1/a/a/a/v0/d/b/w/a;

    move-result-object v6

    .line 25
    iget-object v6, v6, Ls1/a/a/a/v0/d/b/w/a;->a:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 26
    sget-object v7, Ls1/a/a/a/v0/d/b/w/a$a;->c:Ls1/a/a/a/v0/d/b/w/a$a;

    if-ne v6, v7, :cond_7

    .line 27
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 28
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 29
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->d:Ls1/a/a/a/v0/d/b/d;

    .line 30
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "kotlinClass"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/d/b/d;->f(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/f;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 32
    iget-object v4, v4, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    if-eqz v4, :cond_5

    .line 33
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/j;->a:Ls1/a/a/a/v0/k/b/h;

    .line 34
    invoke-interface {v3}, Ls1/a/a/a/v0/d/b/l;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v3

    .line 35
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "classId"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/h;->a:Ls1/z/b/l;

    new-instance v7, Ls1/a/a/a/v0/k/b/h$a;

    invoke-direct {v7, v3, v6}, Ls1/a/a/a/v0/k/b/h$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/k/b/f;)V

    invoke-interface {v4, v7}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/b/e;

    goto :goto_3

    :cond_5
    const-string p1, "components"

    .line 37
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_8

    .line 38
    new-instance v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;

    invoke-direct {v5, v3}, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;-><init>(Ls1/a/a/a/v0/b/e;)V

    goto :goto_4

    .line 39
    :cond_7
    sget-object v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$c;->a:Ls1/a/a/a/v0/d/a/d0/n/j$b$c;

    .line 40
    :cond_8
    :goto_4
    instance-of v3, v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;

    if-eqz v3, :cond_9

    check-cast v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;

    .line 41
    iget-object v2, v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;->a:Ls1/a/a/a/v0/b/e;

    goto/16 :goto_8

    .line 42
    :cond_9
    instance-of v3, v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$c;

    if-eqz v3, :cond_a

    goto/16 :goto_8

    .line 43
    :cond_a
    instance-of v3, v5, Ls1/a/a/a/v0/d/a/d0/n/j$b$b;

    if-eqz v3, :cond_14

    .line 44
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;->b:Ls1/a/a/a/v0/d/a/f0/g;

    if-eqz p1, :cond_b

    goto :goto_5

    .line 45
    :cond_b
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 46
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 47
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->b:Ls1/a/a/a/v0/d/a/p;

    .line 48
    new-instance v3, Ls1/a/a/a/v0/d/a/p$a;

    if-eqz v1, :cond_d

    .line 49
    instance-of v4, v1, Ls1/a/a/a/v0/d/b/k$a$a;

    if-nez v4, :cond_c

    move-object v1, v2

    :cond_c
    check-cast v1, Ls1/a/a/a/v0/d/b/k$a$a;

    :cond_d
    const/4 v1, 0x4

    .line 50
    invoke-direct {v3, v0, v2, v2, v1}, Ls1/a/a/a/v0/d/a/p$a;-><init>(Ls1/a/a/a/v0/f/a;[BLs1/a/a/a/v0/d/a/f0/g;I)V

    .line 51
    invoke-interface {p1, v3}, Ls1/a/a/a/v0/d/a/p;->c(Ls1/a/a/a/v0/d/a/p$a;)Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object p1

    :goto_5
    if-eqz p1, :cond_e

    .line 52
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->x()Ls1/a/a/a/v0/d/a/f0/a0;

    move-result-object v1

    goto :goto_6

    :cond_e
    move-object v1, v2

    :goto_6
    sget-object v3, Ls1/a/a/a/v0/d/a/f0/a0;->b:Ls1/a/a/a/v0/d/a/f0/a0;

    if-ne v1, v3, :cond_10

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "JavaClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "ClassId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "findKotlinClass(JavaClass) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v5, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 58
    iget-object v5, v5, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 59
    iget-object v5, v5, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    const-string v6, "$this$findKotlinClass"

    .line 60
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "javaClass"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {v5, p1}, Ls1/a/a/a/v0/d/b/k;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/d/b/k$a;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/b/k$a;->a()Ls1/a/a/a/v0/d/b/l;

    move-result-object v2

    .line 62
    :cond_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "findKotlinClass(ClassId) = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 64
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 65
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->c:Ls1/a/a/a/v0/d/b/k;

    .line 66
    invoke-static {p1, v0}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    if-eqz p1, :cond_11

    .line 68
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/g;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_13

    .line 69
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 70
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 71
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    .line 72
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    goto :goto_8

    .line 73
    :cond_12
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/e;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 74
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 75
    invoke-direct {v0, v1, v3, p1, v2}, Ls1/a/a/a/v0/d/a/d0/n/e;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V

    .line 76
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$c;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 77
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 78
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->s:Ls1/a/a/a/v0/d/a/q;

    .line 79
    invoke-interface {p1, v0}, Ls1/a/a/a/v0/d/a/q;->a(Ls1/a/a/a/v0/d/a/c0/d;)V

    move-object v2, v0

    :cond_13
    :goto_8
    return-object v2

    .line 80
    :cond_14
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
