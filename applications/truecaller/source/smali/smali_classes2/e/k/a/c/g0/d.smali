.class public Le/k/a/c/g0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/k/a/c/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/c0/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/k/a/c/b;

.field public final c:Le/k/a/c/g0/t$a;

.field public final d:Le/k/a/c/m0/n;

.field public final e:Le/k/a/c/i;

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/List;

    sput-object v0, Le/k/a/c/g0/d;->i:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/util/Map;

    sput-object v0, Le/k/a/c/g0/d;->j:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/g0/t$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/d;->a:Le/k/a/c/c0/k;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    .line 4
    iget-object v0, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    .line 7
    invoke-virtual {p2}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/g0/d;->d:Le/k/a/c/m0/n;

    .line 8
    invoke-virtual {p1}, Le/k/a/c/c0/k;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    if-nez p3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p3, v0}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {v0}, Le/k/a/c/n0/g;->x(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Le/k/a/c/i;->z()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Le/k/a/c/g0/d;->h:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;Ljava/lang/Class;Le/k/a/c/g0/t$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/t$a;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Le/k/a/c/g0/d;->a:Le/k/a/c/c0/k;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    .line 15
    iput-object p2, p0, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    .line 16
    iput-object p3, p0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    .line 17
    sget-object v1, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    .line 18
    iput-object v1, p0, Le/k/a/c/g0/d;->d:Le/k/a/c/m0/n;

    if-nez p1, :cond_0

    .line 19
    iput-object v0, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    .line 20
    iput-object v0, p0, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/c0/k;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    if-nez p3, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p3, p2}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    .line 24
    :goto_2
    iget-object p1, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Le/k/a/c/g0/d;->h:Z

    return-void
.end method

.method public static d(Le/k/a/c/i;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1, v0}, Le/k/a/c/g0/d;->f(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p2, Le/k/a/c/g0/d;->i:Ljava/lang/Class;

    if-eq v0, p2, :cond_1

    sget-object p2, Le/k/a/c/g0/d;->j:Ljava/lang/Class;

    if-ne v0, p2, :cond_2

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/i;->n()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/k/a/c/i;

    const/4 v0, 0x1

    .line 6
    invoke-static {p2, p1, v0}, Le/k/a/c/g0/d;->d(Le/k/a/c/i;Ljava/util/List;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static e(Le/k/a/c/i;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-static {p1, v0}, Le/k/a/c/g0/d;->f(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/i;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/i;

    .line 6
    invoke-static {v0, p1, v1}, Le/k/a/c/g0/d;->d(Le/k/a/c/i;Ljava/util/List;Z)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Le/k/a/c/i;->q()Le/k/a/c/i;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 8
    invoke-static {p0, p1, v1}, Le/k/a/c/g0/d;->e(Le/k/a/c/i;Ljava/util/List;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static f(Ljava/util/List;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/i;

    .line 3
    iget-object v3, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/g0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Le/k/a/c/c0/l;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/l;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    new-instance p0, Le/k/a/c/g0/c;

    invoke-direct {p0, p1}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 4
    :cond_2
    new-instance v0, Le/k/a/c/g0/d;

    invoke-direct {v0, p0, p1, p0}, Le/k/a/c/g0/d;-><init>(Le/k/a/c/c0/k;Ljava/lang/Class;Le/k/a/c/g0/t$a;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 6
    new-instance p0, Le/k/a/c/g0/c;

    iget-object v3, v0, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    iget-object v5, v0, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v4}, Le/k/a/c/g0/d;->g(Ljava/util/List;)Le/k/a/c/n0/b;

    move-result-object v6

    iget-object v7, v0, Le/k/a/c/g0/d;->d:Le/k/a/c/m0/n;

    iget-object v8, v0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    iget-object v9, v0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    iget-object p1, v0, Le/k/a/c/g0/d;->a:Le/k/a/c/c0/k;

    .line 8
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    iget-object v10, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 10
    iget-boolean v11, v0, Le/k/a/c/g0/d;->h:Z

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Le/k/a/c/g0/c;-><init>(Le/k/a/c/i;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Le/k/a/c/n0/b;Le/k/a/c/m0/n;Le/k/a/c/b;Le/k/a/c/g0/t$a;Le/k/a/c/m0/o;Z)V

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {p1, v2}, Le/k/a/c/g0/o;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 4
    iget-object v3, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    invoke-virtual {v3, v2}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, p1, v2}, Le/k/a/c/g0/d;->c(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final b(Le/k/a/c/g0/o;Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/c/g0/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/o;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/g0/o;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p3}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/c/g0/d;->a(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, p2, v0}, Le/k/a/c/n0/g;->m(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    .line 3
    invoke-static {p3}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Le/k/a/c/g0/d;->a(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 2
    instance-of v3, v2, Ljava/lang/annotation/Target;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/annotation/Retention;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Le/k/a/c/g0/o;->d(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Le/k/a/c/g0/o;->a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    .line 5
    iget-object v3, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    invoke-virtual {v3, v2}, Le/k/a/c/b;->n0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0, p1, v2}, Le/k/a/c/g0/d;->c(Le/k/a/c/g0/o;Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final g(Ljava/util/List;)Le/k/a/c/n0/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;)",
            "Le/k/a/c/n0/b;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    sget-object v1, Le/k/a/c/g0/o;->b:Le/k/a/c/n0/b;

    iget-object v2, p0, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    if-nez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    if-eqz v2, :cond_2

    instance-of v3, v2, Le/k/a/c/g0/d0;

    if-eqz v3, :cond_1

    check-cast v2, Le/k/a/c/g0/d0;

    .line 3
    invoke-virtual {v2}, Le/k/a/c/g0/d0;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 4
    iget-boolean v3, p0, Le/k/a/c/g0/d;->h:Z

    if-nez v3, :cond_3

    return-object v1

    .line 5
    :cond_3
    sget-object v1, Le/k/a/c/g0/o$a;->c:Le/k/a/c/g0/o$a;

    .line 6
    iget-object v3, p0, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 7
    iget-object v4, p0, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v3}, Le/k/a/c/g0/d;->b(Le/k/a/c/g0/o;Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/c/g0/o;

    move-result-object v1

    .line 8
    :cond_4
    iget-boolean v3, p0, Le/k/a/c/g0/d;->h:Z

    if-eqz v3, :cond_5

    .line 9
    iget-object v3, p0, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    .line 10
    invoke-static {v3}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 11
    invoke-virtual {p0, v1, v3}, Le/k/a/c/g0/d;->a(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v1

    .line 12
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/i;

    if-eqz v2, :cond_7

    .line 13
    iget-object v4, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 14
    iget-object v5, p0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    .line 15
    invoke-interface {v5, v4}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 16
    invoke-virtual {p0, v1, v4, v5}, Le/k/a/c/g0/d;->b(Le/k/a/c/g0/o;Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/c/g0/o;

    move-result-object v1

    .line 17
    :cond_7
    iget-boolean v4, p0, Le/k/a/c/g0/d;->h:Z

    if-eqz v4, :cond_6

    .line 18
    iget-object v3, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 19
    invoke-static {v3}, Le/k/a/c/n0/g;->k(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 20
    invoke-virtual {p0, v1, v3}, Le/k/a/c/g0/d;->a(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    .line 21
    iget-object p1, p0, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    .line 22
    invoke-interface {p1, v0}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, v0, p1}, Le/k/a/c/g0/d;->b(Le/k/a/c/g0/o;Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/c/g0/o;

    move-result-object v1

    .line 24
    :cond_9
    invoke-virtual {v1}, Le/k/a/c/g0/o;->c()Le/k/a/c/n0/b;

    move-result-object p1

    return-object p1
.end method
