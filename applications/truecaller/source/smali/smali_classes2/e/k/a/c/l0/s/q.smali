.class public Le/k/a/c/l0/s/q;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/z;->e:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p1}, Le/k/a/c/l0/s/q;->p(Le/k/a/c/a0;Ljava/lang/Object;)V

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3}, Le/k/a/b/g;->R1(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    return-void
.end method

.method public final g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/z;->e:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p1}, Le/k/a/c/l0/s/q;->p(Le/k/a/c/a0;Ljava/lang/Object;)V

    .line 3
    :cond_0
    sget-object p3, Le/k/a/b/m;->j:Le/k/a/b/m;

    .line 4
    invoke-virtual {p4, p1, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p1

    .line 5
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p1

    .line 6
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public p(Le/k/a/c/a0;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "No serializer found for class %s and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)"

    .line 3
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Le/k/a/c/e;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
