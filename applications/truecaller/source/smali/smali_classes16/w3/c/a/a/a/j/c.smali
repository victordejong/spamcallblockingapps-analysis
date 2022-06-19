.class public abstract Lw3/c/a/a/a/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/c/a/a/a/j/c$b;,
        Lw3/c/a/a/a/j/c$d;,
        Lw3/c/a/a/a/j/c$c;,
        Lw3/c/a/a/a/j/c$g;,
        Lw3/c/a/a/a/j/c$f;,
        Lw3/c/a/a/a/j/c$e;,
        Lw3/c/a/a/a/j/c$a;
    }
.end annotation


# static fields
.field public static final q:Lw3/c/a/a/a/j/c;

.field public static final r:Lw3/c/a/a/a/j/c;

.field public static final s:Lw3/c/a/a/a/j/c;

.field public static final t:Lw3/c/a/a/a/j/c;

.field public static final u:Lw3/c/a/a/a/j/c;

.field public static final v:Lw3/c/a/a/a/j/c;

.field public static final w:Lw3/c/a/a/a/j/c;

.field public static final x:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/c/a/a/a/j/c$a;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$a;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->q:Lw3/c/a/a/a/j/c;

    .line 2
    new-instance v0, Lw3/c/a/a/a/j/c$c;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$c;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->r:Lw3/c/a/a/a/j/c;

    .line 3
    new-instance v0, Lw3/c/a/a/a/j/c$e;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$e;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->s:Lw3/c/a/a/a/j/c;

    .line 4
    new-instance v0, Lw3/c/a/a/a/j/c$f;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$f;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->t:Lw3/c/a/a/a/j/c;

    .line 5
    new-instance v0, Lw3/c/a/a/a/j/c$g;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$g;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->u:Lw3/c/a/a/a/j/c;

    .line 6
    new-instance v0, Lw3/c/a/a/a/j/c$d;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$d;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->v:Lw3/c/a/a/a/j/c;

    .line 7
    new-instance v0, Lw3/c/a/a/a/j/c$b;

    invoke-direct {v0}, Lw3/c/a/a/a/j/c$b;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->w:Lw3/c/a/a/a/j/c;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lw3/c/a/a/a/j/c;->x:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->a:Z

    .line 3
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lw3/c/a/a/a/j/c;->c:Z

    .line 5
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->d:Z

    const-string v0, "["

    .line 6
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->e:Ljava/lang/String;

    const-string v0, "]"

    .line 7
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->f:Ljava/lang/String;

    const-string v0, "="

    .line 8
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->g:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lw3/c/a/a/a/j/c;->h:Z

    const-string v0, ","

    .line 10
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    const-string v0, "{"

    .line 11
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    const-string v0, "}"

    .line 12
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    const-string v0, "<null>"

    .line 13
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->l:Ljava/lang/String;

    const-string v0, "<size="

    .line 14
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->m:Ljava/lang/String;

    const-string v0, ">"

    .line 15
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->n:Ljava/lang/String;

    const-string v1, "<"

    .line 16
    iput-object v1, p0, Lw3/c/a/a/a/j/c;->o:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->p:Ljava/lang/String;

    return-void
.end method

.method public static t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lw3/c/a/a/a/j/c;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lw3/c/a/a/a/j/c;->t()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lw3/c/a/a/a/j/c;->x:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-static {}, Lw3/c/a/a/a/j/c;->t()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static x(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lw3/c/a/a/a/j/c;->t()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lw3/c/a/a/a/j/c;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->o(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lw3/c/a/a/a/j/c;->q(Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_0
    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/c/a/a/a/j/c;->p(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 5
    :goto_1
    invoke-virtual {p0, p1}, Lw3/c/a/a/a/j/c;->n(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Cannot get the toString of a null identity"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public c(Ljava/lang/StringBuffer;B)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method public d(Ljava/lang/StringBuffer;C)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public e(Ljava/lang/StringBuffer;D)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method public f(Ljava/lang/StringBuffer;F)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method public g(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method public h(Ljava/lang/StringBuffer;J)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method public i(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public j(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public k(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public l(Ljava/lang/StringBuffer;S)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method public m(Ljava/lang/StringBuffer;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method public n(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public o(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw3/c/a/a/a/j/c;->a:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lw3/c/a/a/a/j/c;->t()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p3}, Lw3/c/a/a/a/j/c;->b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p3}, Lw3/c/a/a/a/j/c;->v(Ljava/lang/Object;)V

    .line 6
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    .line 7
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->j(Ljava/lang/StringBuffer;Ljava/util/Collection;)V

    goto/16 :goto_b

    .line 8
    :cond_2
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 9
    :cond_3
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    .line 10
    move-object p2, p3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->k(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto/16 :goto_b

    .line 11
    :cond_4
    move-object p2, p3

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 12
    :cond_5
    instance-of v0, p3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ","

    if-eqz v0, :cond_9

    if-eqz p4, :cond_8

    .line 13
    :try_start_1
    move-object p2, p3

    check-cast p2, [J

    .line 14
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :goto_1
    array-length p4, p2

    if-ge v2, p4, :cond_7

    if-lez v2, :cond_6

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_6
    aget-wide v0, p2, v2

    invoke-virtual {p0, p1, v0, v1}, Lw3/c/a/a/a/j/c;->h(Ljava/lang/StringBuffer;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_7
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 19
    :cond_8
    move-object p2, p3

    check-cast p2, [J

    .line 20
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 21
    :cond_9
    instance-of v0, p3, [I

    if-eqz v0, :cond_d

    if-eqz p4, :cond_c

    .line 22
    move-object p2, p3

    check-cast p2, [I

    .line 23
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :goto_2
    array-length p4, p2

    if-ge v2, p4, :cond_b

    if-lez v2, :cond_a

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_a
    aget p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->g(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_b
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 28
    :cond_c
    move-object p2, p3

    check-cast p2, [I

    .line 29
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 30
    :cond_d
    instance-of v0, p3, [S

    if-eqz v0, :cond_11

    if-eqz p4, :cond_10

    .line 31
    move-object p2, p3

    check-cast p2, [S

    .line 32
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :goto_3
    array-length p4, p2

    if-ge v2, p4, :cond_f

    if-lez v2, :cond_e

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_e
    aget-short p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->l(Ljava/lang/StringBuffer;S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 36
    :cond_f
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 37
    :cond_10
    move-object p2, p3

    check-cast p2, [S

    .line 38
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 39
    :cond_11
    instance-of v0, p3, [B

    if-eqz v0, :cond_15

    if-eqz p4, :cond_14

    .line 40
    move-object p2, p3

    check-cast p2, [B

    .line 41
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :goto_4
    array-length p4, p2

    if-ge v2, p4, :cond_13

    if-lez v2, :cond_12

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_12
    aget-byte p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->c(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 45
    :cond_13
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 46
    :cond_14
    move-object p2, p3

    check-cast p2, [B

    .line 47
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 48
    :cond_15
    instance-of v0, p3, [C

    if-eqz v0, :cond_19

    if-eqz p4, :cond_18

    .line 49
    move-object p2, p3

    check-cast p2, [C

    .line 50
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :goto_5
    array-length p4, p2

    if-ge v2, p4, :cond_17

    if-lez v2, :cond_16

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_16
    aget-char p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->d(Ljava/lang/StringBuffer;C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 54
    :cond_17
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 55
    :cond_18
    move-object p2, p3

    check-cast p2, [C

    .line 56
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 57
    :cond_19
    instance-of v0, p3, [D

    if-eqz v0, :cond_1d

    if-eqz p4, :cond_1c

    .line 58
    move-object p2, p3

    check-cast p2, [D

    .line 59
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_6
    array-length p4, p2

    if-ge v2, p4, :cond_1b

    if-lez v2, :cond_1a

    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_1a
    aget-wide v0, p2, v2

    invoke-virtual {p0, p1, v0, v1}, Lw3/c/a/a/a/j/c;->e(Ljava/lang/StringBuffer;D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 63
    :cond_1b
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 64
    :cond_1c
    move-object p2, p3

    check-cast p2, [D

    .line 65
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 66
    :cond_1d
    instance-of v0, p3, [F

    if-eqz v0, :cond_21

    if-eqz p4, :cond_20

    .line 67
    move-object p2, p3

    check-cast p2, [F

    .line 68
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :goto_7
    array-length p4, p2

    if-ge v2, p4, :cond_1f

    if-lez v2, :cond_1e

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_1e
    aget p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->f(Ljava/lang/StringBuffer;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 72
    :cond_1f
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 73
    :cond_20
    move-object p2, p3

    check-cast p2, [F

    .line 74
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto/16 :goto_b

    .line 75
    :cond_21
    instance-of v0, p3, [Z

    if-eqz v0, :cond_25

    if-eqz p4, :cond_24

    .line 76
    move-object p2, p3

    check-cast p2, [Z

    .line 77
    iget-object p4, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :goto_8
    array-length p4, p2

    if-ge v2, p4, :cond_23

    if-lez v2, :cond_22

    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_22
    aget-boolean p4, p2, v2

    invoke-virtual {p0, p1, p4}, Lw3/c/a/a/a/j/c;->m(Ljava/lang/StringBuffer;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 81
    :cond_23
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 82
    :cond_24
    move-object p2, p3

    check-cast p2, [Z

    .line 83
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto :goto_b

    .line 84
    :cond_25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p4, :cond_29

    .line 85
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :goto_9
    array-length v0, p4

    if-ge v2, v0, :cond_28

    .line 88
    aget-object v0, p4, v2

    if-lez v2, :cond_26

    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    if-nez v0, :cond_27

    .line 90
    invoke-virtual {p0, p1}, Lw3/c/a/a/a/j/c;->q(Ljava/lang/StringBuffer;)V

    goto :goto_a

    .line 91
    :cond_27
    invoke-virtual {p0, p1, p2, v0, v1}, Lw3/c/a/a/a/j/c;->p(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 92
    :cond_28
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 93
    :cond_29
    move-object p2, p3

    check-cast p2, [Ljava/lang/Object;

    .line 94
    array-length p2, p2

    invoke-virtual {p0, p1, p2}, Lw3/c/a/a/a/j/c;->s(Ljava/lang/StringBuffer;I)V

    goto :goto_b

    :cond_2a
    if-eqz p4, :cond_2b

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lw3/c/a/a/a/j/c;->i(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 96
    :cond_2b
    invoke-virtual {p0, p1, p3}, Lw3/c/a/a/a/j/c;->r(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_b
    invoke-static {p3}, Lw3/c/a/a/a/j/c;->x(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lw3/c/a/a/a/j/c;->x(Ljava/lang/Object;)V

    throw p1
.end method

.method public q(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/c/a/a/a/j/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public r(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/c/a/a/a/j/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw3/c/a/a/a/j/c;->u(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public s(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/c/a/a/a/j/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lw3/c/a/a/a/j/c;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public u(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lw3/c/a/a/a/b;->a:Ljava/util/Map;

    const-string v0, ""

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 6
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_2

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4c

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_3
    sget-object v1, Lw3/c/a/a/a/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    const/16 v1, 0x2e

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v4, 0x1

    :goto_1
    const/16 v6, 0x24

    .line 14
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v4, v3

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eq v2, v5, :cond_6

    .line 16
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lw3/c/a/a/a/j/c;->f:Ljava/lang/String;

    return-void
.end method
