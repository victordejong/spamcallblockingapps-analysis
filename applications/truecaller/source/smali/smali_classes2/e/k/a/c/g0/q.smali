.class public Le/k/a/c/g0/q;
.super Le/k/a/c/c;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Le/k/a/c/g0/b0;

.field public final c:Le/k/a/c/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/c0/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/c/b;

.field public final e:Le/k/a/c/g0/c;

.field public f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/g0/s;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/g0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    sput-object v0, Le/k/a/c/g0/q;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/g0/c;",
            "Ljava/util/List<",
            "Le/k/a/c/g0/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Le/k/a/c/c;-><init>(Le/k/a/c/i;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    .line 3
    iput-object p1, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    if-nez p1, :cond_0

    .line 4
    iput-object p2, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    .line 6
    :goto_0
    iput-object p3, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 7
    iput-object p4, p0, Le/k/a/c/g0/q;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/b0;)V
    .locals 2

    .line 8
    iget-object v0, p1, Le/k/a/c/g0/b0;->d:Le/k/a/c/i;

    .line 9
    iget-object v1, p1, Le/k/a/c/g0/b0;->e:Le/k/a/c/g0/c;

    .line 10
    invoke-direct {p0, v0}, Le/k/a/c/c;-><init>(Le/k/a/c/i;)V

    .line 11
    iput-object p1, p0, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    .line 12
    iget-object v0, p1, Le/k/a/c/g0/b0;->a:Le/k/a/c/c0/k;

    .line 13
    iput-object v0, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    .line 16
    :goto_0
    iput-object v1, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 17
    iget-object v0, p1, Le/k/a/c/g0/b0;->g:Le/k/a/c/b;

    iget-object v1, p1, Le/k/a/c/g0/b0;->e:Le/k/a/c/g0/c;

    invoke-virtual {v0, v1}, Le/k/a/c/b;->y(Le/k/a/c/g0/b;)Le/k/a/c/g0/a0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p1, Le/k/a/c/g0/b0;->g:Le/k/a/c/b;

    iget-object p1, p1, Le/k/a/c/g0/b0;->e:Le/k/a/c/g0/c;

    invoke-virtual {v1, p1, v0}, Le/k/a/c/b;->z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;

    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Le/k/a/c/g0/q;->i:Le/k/a/c/g0/a0;

    return-void
.end method

.method public static i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/g0/c;",
            ")",
            "Le/k/a/c/g0/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/g0/q;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Le/k/a/c/g0/q;-><init>(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/g0/q;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/k/a/c/g0/q;->g:Z

    .line 3
    iget-object v0, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 4
    invoke-virtual {v0, v1}, Le/k/a/c/b;->c0(Le/k/a/c/g0/b;)[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    sget-object v2, Le/k/a/c/p;->u:Le/k/a/c/p;

    invoke-virtual {v1, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v0, Le/k/a/c/g0/q;->j:[Ljava/lang/Class;

    .line 7
    :cond_1
    iput-object v0, p0, Le/k/a/c/g0/q;->f:[Ljava/lang/Class;

    .line 8
    :cond_2
    iget-object v0, p0, Le/k/a/c/g0/q;->f:[Ljava/lang/Class;

    return-object v0
.end method

.method public b(Le/k/a/a/k$d;)Le/k/a/a/k$d;
    .locals 2

    .line 1
    iget-object p1, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    invoke-virtual {p1, v0}, Le/k/a/c/b;->n(Le/k/a/c/g0/b;)Le/k/a/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    iget-object v1, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 4
    iget-object v1, v1, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1}, Le/k/a/c/c0/k;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Le/k/a/a/k$d;->f(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 6

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, v0, Le/k/a/c/g0/b0;->i:Z

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Le/k/a/c/g0/b0;->h()V

    .line 4
    :cond_1
    iget-object v2, v0, Le/k/a/c/g0/b0;->r:Ljava/util/LinkedList;

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2

    .line 6
    iget-object v0, v0, Le/k/a/c/g0/b0;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/k/a/c/g0/i;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    iget-object v5, v0, Le/k/a/c/g0/b0;->r:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, v0, Le/k/a/c/g0/b0;->r:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Multiple \'as-value\' properties defined (%s vs %s)"

    .line 10
    invoke-virtual {v0, v3, v2}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public d(Ljava/lang/String;[Ljava/lang/Class;)Le/k/a/c/g0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/g0/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 2
    invoke-virtual {v0}, Le/k/a/c/g0/c;->g()Le/k/a/c/g0/l;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/k/a/c/g0/l;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Le/k/a/c/g0/y;

    invoke-direct {v1, p1, p2}, Le/k/a/c/g0/y;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/g0/j;

    :goto_0
    return-object p1
.end method

.method public e(Le/k/a/a/r$b;)Le/k/a/a/r$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    invoke-virtual {v0, v1}, Le/k/a/c/b;->J(Le/k/a/c/g0/b;)Le/k/a/a/r$b;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/g0/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    invoke-virtual {v0}, Le/k/a/c/g0/c;->j()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/g0/j;

    .line 4
    invoke-virtual {p0, v2}, Le/k/a/c/g0/q;->k(Le/k/a/c/g0/j;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public g(Ljava/lang/Object;)Le/k/a/c/n0/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/k/a/c/n0/i;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Le/k/a/c/n0/i;

    return-object p1

    .line 3
    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 4
    check-cast p1, Ljava/lang/Class;

    .line 5
    const-class v1, Le/k/a/c/n0/i$a;

    if-eq p1, v1, :cond_4

    invoke-static {p1}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    const-class v0, Le/k/a/c/n0/i;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    .line 8
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    .line 11
    invoke-virtual {v0}, Le/k/a/c/c0/k;->b()Z

    move-result v0

    .line 12
    invoke-static {p1, v0}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/n0/i;

    return-object p1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<Converter>"

    .line 14
    invoke-static {p1, v1, v2}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-object v0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnnotationIntrospector returned Converter definition of type "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type Converter or Class<Converter> instead"

    .line 16
    invoke-static {p1, v1, v2}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/g0/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/q;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    .line 3
    iget-boolean v1, v0, Le/k/a/c/g0/b0;->i:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Le/k/a/c/g0/b0;->h()V

    .line 5
    :cond_0
    iget-object v0, v0, Le/k/a/c/g0/b0;->j:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iput-object v1, p0, Le/k/a/c/g0/q;->h:Ljava/util/List;

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/c/g0/q;->h:Ljava/util/List;

    return-object v0
.end method

.method public j(Le/k/a/c/v;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/q;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/g0/s;

    .line 2
    invoke-virtual {v1, p1}, Le/k/a/c/g0/s;->z(Le/k/a/c/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public k(Le/k/a/c/g0/j;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g0/j;->t()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 3
    iget-object v1, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/g0/q;->d:Le/k/a/c/b;

    iget-object v2, p0, Le/k/a/c/g0/q;->c:Le/k/a/c/c0/k;

    invoke-virtual {v0, v2, p1}, Le/k/a/c/b;->e(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/h$a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    sget-object v3, Le/k/a/a/h$a;->d:Le/k/a/a/h$a;

    if-eq v0, v3, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p1}, Le/k/a/c/g0/j;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "valueOf"

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1}, Le/k/a/c/g0/j;->q()I

    move-result v3

    if-ne v3, v2, :cond_2

    return v2

    :cond_2
    const-string v3, "fromString"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Le/k/a/c/g0/j;->q()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 12
    invoke-virtual {p1, v1}, Le/k/a/c/g0/j;->s(I)Ljava/lang/Class;

    move-result-object p1

    .line 13
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method
