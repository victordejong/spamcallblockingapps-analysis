.class public final Ls1/a/a/a/v0/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/a$a;,
        Ls1/a/a/a/v0/d/a/a$b;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ls1/a/a/a/v0/o/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/o/i;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsr305State"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/a;->c:Ls1/a/a/a/v0/o/i;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/a$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/a$c;-><init>(Ls1/a/a/a/v0/d/a/a;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/a;->a:Ls1/a/a/a/v0/l/h;

    .line 3
    invoke-virtual {p2}, Ls1/a/a/a/v0/o/i;->a()Z

    move-result p1

    iput-boolean p1, p0, Ls1/a/a/a/v0/d/a/a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/j/t/g;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;)",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/b;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/j/t/b;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ls1/a/a/a/v0/j/t/g;

    .line 7
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/d/a/a;->a(Ls1/a/a/a/v0/j/t/g;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/k;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Ls1/a/a/a/v0/j/t/k;

    .line 11
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    .line 12
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "PARAMETER"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ls1/a/a/a/v0/d/a/a$a;->b:Ls1/a/a/a/v0/d/a/a$a;

    goto :goto_2

    :sswitch_1
    const-string v0, "TYPE_USE"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ls1/a/a/a/v0/d/a/a$a;->d:Ls1/a/a/a/v0/d/a/a$a;

    goto :goto_2

    :sswitch_2
    const-string v0, "FIELD"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ls1/a/a/a/v0/d/a/a$a;->c:Ls1/a/a/a/v0/d/a/a$a;

    goto :goto_2

    :sswitch_3
    const-string v0, "METHOD"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ls1/a/a/a/v0/d/a/a$a;->a:Ls1/a/a/a/v0/d/a/a$a;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 17
    :goto_2
    invoke-static {p1}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 18
    :cond_2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :cond_3
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78a73b1f -> :sswitch_3
        0x3fca8da -> :sswitch_2
        0x669d2e2 -> :sswitch_1
        0x1a96c389 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/o/k;
    .locals 1

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/a;->c(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/o/k;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/a;->c:Ls1/a/a/a/v0/o/i;

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/o/i;->b:Ls1/a/a/a/v0/o/k;

    return-object p1
.end method

.method public final c(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/o/k;
    .locals 3

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/a;->c:Ls1/a/a/a/v0/o/i;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/o/i;->d:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/o/k;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->e(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    .line 6
    sget-object v0, Ls1/a/a/a/v0/d/a/b;->d:Ls1/a/a/a/v0/f/b;

    .line 7
    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/k;

    if-nez v0, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Ls1/a/a/a/v0/j/t/k;

    if-eqz p1, :cond_8

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/a;->c:Ls1/a/a/a/v0/o/i;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/o/i;->c:Ls1/a/a/a/v0/o/k;

    if-eqz v0, :cond_4

    move-object v2, v0

    goto :goto_2

    .line 10
    :cond_4
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    .line 11
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f610e2e

    if-eq v0, v1, :cond_7

    const v1, -0x6d97ad37

    if-eq v0, v1, :cond_6

    const v1, 0x288a86

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "WARN"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object v2, Ls1/a/a/a/v0/o/k;->c:Ls1/a/a/a/v0/o/k;

    goto :goto_2

    :cond_6
    const-string v0, "STRICT"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object v2, Ls1/a/a/a/v0/o/k;->d:Ls1/a/a/a/v0/o/k;

    goto :goto_2

    :cond_7
    const-string v0, "IGNORE"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object v2, Ls1/a/a/a/v0/o/k;->b:Ls1/a/a/a/v0/o/k;

    :cond_8
    :goto_2
    return-object v2
.end method

.method public final d(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/f1/c;
    .locals 4

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/a;->c:Ls1/a/a/a/v0/o/i;

    invoke-virtual {v0}, Ls1/a/a/a/v0/o/i;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->e(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    sget-object v2, Ls1/a/a/a/v0/d/a/b;->f:Ljava/util/Set;

    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/d/a/b;->b:Ls1/a/a/a/v0/f/b;

    invoke-interface {v2, v3}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    return-object p1

    .line 4
    :cond_3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object p1

    sget-object v2, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/a;->a:Ls1/a/a/a/v0/l/h;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/b/f1/c;

    :cond_5
    :goto_2
    return-object v1
.end method
