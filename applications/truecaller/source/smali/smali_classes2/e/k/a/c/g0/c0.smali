.class public Le/k/a/c/g0/c0;
.super Le/k/a/c/g0/s;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/c0$e;,
        Le/k/a/c/g0/c0$f;,
        Le/k/a/c/g0/c0$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/g0/s;",
        "Ljava/lang/Comparable<",
        "Le/k/a/c/g0/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Le/k/a/c/b$a;


# instance fields
.field public final b:Z

.field public final c:Le/k/a/c/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/c0/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Le/k/a/c/b;

.field public final e:Le/k/a/c/v;

.field public final f:Le/k/a/c/v;

.field public g:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "Le/k/a/c/g0/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "Le/k/a/c/g0/m;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "Le/k/a/c/g0/j;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "Le/k/a/c/g0/j;",
            ">;"
        }
    .end annotation
.end field

.field public transient k:Le/k/a/c/u;

.field public transient l:Le/k/a/c/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/b$a;

    sget-object v1, Le/k/a/c/b$a$a;->a:Le/k/a/c/b$a$a;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Le/k/a/c/b$a;-><init>(Le/k/a/c/b$a$a;Ljava/lang/String;)V

    .line 2
    sput-object v0, Le/k/a/c/g0/c0;->m:Le/k/a/c/b$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/b;ZLe/k/a/c/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/b;",
            "Z",
            "Le/k/a/c/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/g0/s;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    .line 4
    iput-object p4, p0, Le/k/a/c/g0/c0;->f:Le/k/a/c/v;

    .line 5
    iput-object p4, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    .line 6
    iput-boolean p3, p0, Le/k/a/c/g0/c0;->b:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;Le/k/a/c/b;ZLe/k/a/c/v;Le/k/a/c/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/b;",
            "Z",
            "Le/k/a/c/v;",
            "Le/k/a/c/v;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Le/k/a/c/g0/s;-><init>()V

    .line 8
    iput-object p1, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    .line 9
    iput-object p2, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    .line 10
    iput-object p4, p0, Le/k/a/c/g0/c0;->f:Le/k/a/c/v;

    .line 11
    iput-object p5, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    .line 12
    iput-boolean p3, p0, Le/k/a/c/g0/c0;->b:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/c0;Le/k/a/c/v;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Le/k/a/c/g0/s;-><init>()V

    .line 14
    iget-object v0, p1, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    iput-object v0, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    .line 15
    iget-object v0, p1, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    iput-object v0, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    .line 16
    iget-object v0, p1, Le/k/a/c/g0/c0;->f:Le/k/a/c/v;

    iput-object v0, p0, Le/k/a/c/g0/c0;->f:Le/k/a/c/v;

    .line 17
    iput-object p2, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    .line 18
    iget-object p2, p1, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    iput-object p2, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    .line 19
    iget-object p2, p1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    iput-object p2, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    .line 20
    iget-object p2, p1, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    iput-object p2, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    .line 21
    iget-object p2, p1, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    iput-object p2, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    .line 22
    iget-boolean p1, p1, Le/k/a/c/g0/c0;->b:Z

    iput-boolean p1, p0, Le/k/a/c/g0/c0;->b:Z

    return-void
.end method

.method public static V(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    iget-object v0, p0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0, p1}, Le/k/a/c/g0/c0$e;->a(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->F(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->F(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->F(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->E(Le/k/a/c/g0/c0$e;)Z

    move-result v0

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

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->E(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->E(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->E(Le/k/a/c/g0/c0$e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->E(Le/k/a/c/g0/c0$e;)Z

    move-result v0

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

.method public D()Z
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/g0/c0$c;

    invoke-direct {v0, p0}, Le/k/a/c/g0/c0$c;-><init>(Le/k/a/c/g0/c0;)V

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->U(Le/k/a/c/g0/c0$g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E(Le/k/a/c/g0/c0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Le/k/a/c/g0/c0$e;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final F(Le/k/a/c/g0/c0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/k/a/c/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final G(Le/k/a/c/g0/c0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Le/k/a/c/g0/c0$e;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final H(Le/k/a/c/g0/c0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Le/k/a/c/g0/c0$e;->e:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final I(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/p;)Le/k/a/c/g0/c0$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/k/a/c/g0/i;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;",
            "Le/k/a/c/g0/p;",
            ")",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    invoke-virtual {v0, p2}, Le/k/a/c/g0/i;->l(Le/k/a/c/g0/p;)Le/k/a/c/g0/b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/k/a/c/g0/i;

    .line 2
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Le/k/a/c/g0/c0;->I(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/p;)Le/k/a/c/g0/c0$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    .line 4
    :cond_0
    iget-object p2, p1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Le/k/a/c/g0/c0$e;

    iget-object v3, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    iget-object v4, p1, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    iget-boolean v5, p1, Le/k/a/c/g0/c0$e;->d:Z

    iget-boolean v6, p1, Le/k/a/c/g0/c0$e;->e:Z

    iget-boolean v7, p1, Le/k/a/c/g0/c0$e;->f:Z

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Le/k/a/c/g0/c0$e;-><init>(Ljava/lang/Object;Le/k/a/c/g0/c0$e;Le/k/a/c/v;ZZZ)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final J(Ljava/util/Collection;Ljava/util/Map;Le/k/a/c/g0/c0$e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/k/a/c/v;",
            ">;",
            "Ljava/util/Map<",
            "Le/k/a/c/v;",
            "Le/k/a/c/g0/c0;",
            ">;",
            "Le/k/a/c/g0/c0$e<",
            "*>;)V"
        }
    .end annotation

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_8

    .line 1
    iget-object v7, v0, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    .line 2
    iget-boolean v1, v0, Le/k/a/c/g0/c0$e;->d:Z

    if-eqz v1, :cond_6

    if-nez v7, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/g0/c0;

    if-nez v1, :cond_1

    .line 4
    new-instance v8, Le/k/a/c/g0/c0;

    iget-object v2, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    iget-object v3, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    iget-boolean v4, p0, Le/k/a/c/g0/c0;->b:Z

    iget-object v5, p0, Le/k/a/c/g0/c0;->f:Le/k/a/c/v;

    move-object v1, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Le/k/a/c/g0/c0;-><init>(Le/k/a/c/c0/k;Le/k/a/c/b;ZLe/k/a/c/v;Le/k/a/c/v;)V

    .line 5
    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v2, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-ne p3, v2, :cond_2

    .line 7
    iget-object v2, v1, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-ne p3, v2, :cond_3

    .line 9
    iget-object v2, v1, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-ne p3, v2, :cond_4

    .line 11
    iget-object v2, v1, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    goto :goto_2

    .line 12
    :cond_4
    iget-object v2, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-ne p3, v2, :cond_5

    .line 13
    iget-object v2, v1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v2}, Le/k/a/c/g0/c0$e;->c(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    goto :goto_2

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Internal error: mismatched accessors, property: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    :goto_1
    iget-boolean v1, v0, Le/k/a/c/g0/c0$e;->e:Z

    if-nez v1, :cond_7

    .line 16
    :goto_2
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    .line 17
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Conflicting/ambiguous property name definitions (implicit name "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    .line 18
    invoke-static {v1}, Le/k/a/c/n0/g;->C(Le/k/a/c/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): found multiple explicit names: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but also implicit accessor: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    return-void
.end method

.method public final K(Le/k/a/c/g0/c0$e;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c0$e<",
            "+",
            "Le/k/a/c/g0/i;",
            ">;",
            "Ljava/util/Set<",
            "Le/k/a/c/v;",
            ">;)",
            "Ljava/util/Set<",
            "Le/k/a/c/v;",
            ">;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p1, Le/k/a/c/g0/c0$e;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 3
    :cond_1
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->c:Le/k/a/c/v;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    :goto_1
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public final L(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/k/a/c/g0/i;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/p;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    .line 3
    iget-object p1, p1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/c/g0/c0;->L(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/p;

    move-result-object p1

    invoke-static {v0, p1}, Le/k/a/c/g0/p;->c(Le/k/a/c/g0/p;Le/k/a/c/g0/p;)Le/k/a/c/g0/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M(Le/k/a/c/g0/j;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g0/j;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "is"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final varargs N(I[Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Le/k/a/c/g0/c0$e<",
            "+",
            "Le/k/a/c/g0/i;",
            ">;)",
            "Le/k/a/c/g0/p;"
        }
    .end annotation

    .line 1
    aget-object v0, p2, p1

    .line 2
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v1, Le/k/a/c/g0/i;

    .line 3
    iget-object v1, v1, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    .line 4
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->L(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/p;

    move-result-object v0

    invoke-static {v1, v0}, Le/k/a/c/g0/p;->c(Le/k/a/c/g0/p;Le/k/a/c/g0/p;)Le/k/a/c/g0/p;

    move-result-object v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 6
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 7
    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Le/k/a/c/g0/c0;->N(I[Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/p;

    move-result-object p1

    invoke-static {v1, p1}, Le/k/a/c/g0/p;->c(Le/k/a/c/g0/p;Le/k/a/c/g0/p;)Le/k/a/c/g0/p;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final O(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/g0/c0$e;->d()Le/k/a/c/g0/c0$e;

    move-result-object p1

    return-object p1
.end method

.method public final P(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/g0/c0$e;->f()Le/k/a/c/g0/c0$e;

    move-result-object p1

    return-object p1
.end method

.method public Q(Le/k/a/c/g0/j;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g0/j;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public final R(Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Le/k/a/c/g0/c0$e;->b()Le/k/a/c/g0/c0$e;

    move-result-object p1

    return-object p1
.end method

.method public S(Le/k/a/c/g0/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    iget-object v1, p1, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    invoke-static {v0, v1}, Le/k/a/c/g0/c0;->V(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    iget-object v1, p1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    invoke-static {v0, v1}, Le/k/a/c/g0/c0;->V(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    .line 3
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    iget-object v1, p1, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    invoke-static {v0, v1}, Le/k/a/c/g0/c0;->V(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    .line 4
    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    iget-object p1, p1, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    invoke-static {v0, p1}, Le/k/a/c/g0/c0;->V(Le/k/a/c/g0/c0$e;Le/k/a/c/g0/c0$e;)Le/k/a/c/g0/c0$e;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    return-void
.end method

.method public T()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Le/k/a/c/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/k/a/c/g0/c0;->K(Le/k/a/c/g0/c0$e;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    invoke-virtual {p0, v1, v0}, Le/k/a/c/g0/c0;->K(Le/k/a/c/g0/c0$e;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    invoke-virtual {p0, v1, v0}, Le/k/a/c/g0/c0;->K(Le/k/a/c/g0/c0$e;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    invoke-virtual {p0, v1, v0}, Le/k/a/c/g0/c0;->K(Le/k/a/c/g0/c0$e;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public U(Le/k/a/c/g0/c0$g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g0/c0$g<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Le/k/a/c/g0/c0;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    invoke-interface {p1, v0}, Le/k/a/c/g0/c0$g;->a(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    invoke-interface {p1, v0}, Le/k/a/c/g0/c0$g;->a(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    invoke-interface {p1, v0}, Le/k/a/c/g0/c0$g;->a(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 9
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    invoke-interface {p1, v0}, Le/k/a/c/g0/c0$g;->a(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

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

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Le/k/a/c/g0/c0;

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le/k/a/c/g0/c0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public d()Le/k/a/c/v;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

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

.method public getMetadata()Le/k/a/c/u;
    .locals 12

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    if-nez v0, :cond_16

    .line 2
    iget-boolean v0, p0, Le/k/a/c/g0/c0;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/i;

    :goto_0
    if-nez v0, :cond_6

    .line 15
    sget-object v0, Le/k/a/c/u;->j:Le/k/a/c/u;

    iput-object v0, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    goto/16 :goto_6

    .line 16
    :cond_6
    iget-object v2, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v2, v0}, Le/k/a/c/b;->m0(Le/k/a/c/g0/i;)Ljava/lang/Boolean;

    move-result-object v2

    .line 17
    iget-object v3, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v3, v0}, Le/k/a/c/b;->G(Le/k/a/c/g0/b;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v3, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v3, v0}, Le/k/a/c/b;->L(Le/k/a/c/g0/b;)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    iget-object v4, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v4, v0}, Le/k/a/c/b;->F(Le/k/a/c/g0/b;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    .line 20
    sget-object v2, Le/k/a/c/u;->j:Le/k/a/c/u;

    if-nez v6, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    new-instance v3, Le/k/a/c/u;

    iget-object v5, v2, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    iget-object v7, v2, Le/k/a/c/u;->c:Ljava/lang/Integer;

    iget-object v8, v2, Le/k/a/c/u;->d:Ljava/lang/String;

    iget-object v9, v2, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    iget-object v10, v2, Le/k/a/c/u;->f:Le/k/a/a/j0;

    iget-object v11, v2, Le/k/a/c/u;->g:Le/k/a/a/j0;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    move-object v2, v3

    .line 22
    :goto_1
    iput-object v2, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    goto :goto_2

    .line 23
    :cond_8
    invoke-static {v2, v6, v3, v4}, Le/k/a/c/u;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Le/k/a/c/u;

    move-result-object v2

    iput-object v2, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    .line 24
    :goto_2
    iget-boolean v2, p0, Le/k/a/c/g0/c0;->b:Z

    if-nez v2, :cond_16

    .line 25
    iget-object v2, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    .line 26
    invoke-virtual {p0}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v3

    const/4 v4, 0x1

    .line 27
    iget-object v5, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    if-eqz v3, :cond_a

    .line 28
    invoke-virtual {v5, v0}, Le/k/a/c/b;->t(Le/k/a/c/g0/b;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 29
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 30
    new-instance v5, Le/k/a/c/u$a;

    invoke-direct {v5, v3, v6}, Le/k/a/c/u$a;-><init>(Le/k/a/c/g0/i;Z)V

    .line 31
    invoke-virtual {v2, v5}, Le/k/a/c/u;->b(Le/k/a/c/u$a;)Le/k/a/c/u;

    move-result-object v2

    :cond_9
    move v5, v6

    goto :goto_3

    :cond_a
    move v5, v4

    .line 32
    :goto_3
    iget-object v7, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v7, v0}, Le/k/a/c/b;->W(Le/k/a/c/g0/b;)Le/k/a/a/b0$a;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 33
    invoke-virtual {v7}, Le/k/a/a/b0$a;->b()Le/k/a/a/j0;

    move-result-object v8

    .line 34
    invoke-virtual {v7}, Le/k/a/a/b0$a;->a()Le/k/a/a/j0;

    move-result-object v7

    goto :goto_4

    :cond_b
    move v5, v4

    :cond_c
    move-object v7, v1

    move-object v8, v7

    :goto_4
    if-nez v5, :cond_d

    if-eqz v8, :cond_d

    if-nez v7, :cond_f

    .line 35
    :cond_d
    instance-of v9, v0, Le/k/a/c/g0/j;

    if-eqz v9, :cond_e

    .line 36
    move-object v9, v0

    check-cast v9, Le/k/a/c/g0/j;

    .line 37
    invoke-virtual {v9}, Le/k/a/c/g0/j;->q()I

    move-result v10

    if-lez v10, :cond_e

    .line 38
    invoke-virtual {v9, v6}, Le/k/a/c/g0/j;->r(I)Le/k/a/c/i;

    move-result-object v0

    .line 39
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    goto :goto_5

    .line 40
    :cond_e
    invoke-virtual {v0}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v0

    .line 41
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 42
    :goto_5
    iget-object v6, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    invoke-virtual {v6, v0}, Le/k/a/c/c0/k;->f(Ljava/lang/Class;)Le/k/a/c/c0/f;

    :cond_f
    if-nez v5, :cond_10

    if-eqz v8, :cond_10

    if-nez v7, :cond_13

    .line 43
    :cond_10
    iget-object v0, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    check-cast v0, Le/k/a/c/c0/l;

    .line 44
    iget-object v0, v0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 45
    iget-object v0, v0, Le/k/a/c/c0/g;->b:Le/k/a/a/b0$a;

    if-nez v8, :cond_11

    .line 46
    invoke-virtual {v0}, Le/k/a/a/b0$a;->b()Le/k/a/a/j0;

    move-result-object v8

    :cond_11
    if-nez v7, :cond_12

    .line 47
    invoke-virtual {v0}, Le/k/a/a/b0$a;->a()Le/k/a/a/j0;

    move-result-object v7

    :cond_12
    if-eqz v5, :cond_13

    .line 48
    iget-object v0, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    check-cast v0, Le/k/a/c/c0/l;

    .line 49
    iget-object v0, v0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v3, :cond_13

    .line 52
    new-instance v0, Le/k/a/c/u$a;

    invoke-direct {v0, v3, v4}, Le/k/a/c/u$a;-><init>(Le/k/a/c/g0/i;Z)V

    .line 53
    invoke-virtual {v2, v0}, Le/k/a/c/u;->b(Le/k/a/c/u$a;)Le/k/a/c/u;

    move-result-object v2

    :cond_13
    if-nez v8, :cond_14

    if-eqz v7, :cond_15

    .line 54
    :cond_14
    invoke-virtual {v2, v8, v7}, Le/k/a/c/u;->c(Le/k/a/a/j0;Le/k/a/a/j0;)Le/k/a/c/u;

    move-result-object v2

    .line 55
    :cond_15
    iput-object v2, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    .line 56
    :cond_16
    :goto_6
    iget-object v0, p0, Le/k/a/c/g0/c0;->k:Le/k/a/c/u;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public h()Le/k/a/a/r$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0}, Le/k/a/c/b;->J(Le/k/a/c/g0/b;)Le/k/a/a/r$b;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    :cond_1
    return-object v0
.end method

.method public i()Le/k/a/c/g0/a0;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/g0/c0$d;

    invoke-direct {v0, p0}, Le/k/a/c/g0/c0$d;-><init>(Le/k/a/c/g0/c0;)V

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->U(Le/k/a/c/g0/c0$g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/g0/a0;

    return-object v0
.end method

.method public j()Le/k/a/c/b$a;
    .locals 2

    .line 1
    sget-object v0, Le/k/a/c/g0/c0;->m:Le/k/a/c/b$a;

    iget-object v1, p0, Le/k/a/c/g0/c0;->l:Le/k/a/c/b$a;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1

    .line 2
    :cond_1
    new-instance v1, Le/k/a/c/g0/c0$b;

    invoke-direct {v1, p0}, Le/k/a/c/g0/c0$b;-><init>(Le/k/a/c/g0/c0;)V

    invoke-virtual {p0, v1}, Le/k/a/c/g0/c0;->U(Le/k/a/c/g0/c0$g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/b$a;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3
    :goto_0
    iput-object v0, p0, Le/k/a/c/g0/c0;->l:Le/k/a/c/b$a;

    return-object v1
.end method

.method public m()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/g0/c0$a;

    invoke-direct {v0, p0}, Le/k/a/c/g0/c0$a;-><init>(Le/k/a/c/g0/c0;)V

    invoke-virtual {p0, v0}, Le/k/a/c/g0/c0;->U(Le/k/a/c/g0/c0$g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public o()Le/k/a/c/g0/m;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Le/k/a/c/g0/m;

    .line 3
    iget-object v2, v2, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    .line 4
    instance-of v2, v2, Le/k/a/c/g0/e;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Le/k/a/c/g0/m;

    return-object v1

    .line 6
    :cond_1
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/m;

    return-object v0
.end method

.method public p()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/g0/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/c/n0/g;->c:Ljava/util/Iterator;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Le/k/a/c/g0/c0$f;

    invoke-direct {v1, v0}, Le/k/a/c/g0/c0$f;-><init>(Le/k/a/c/g0/c0$e;)V

    return-object v1
.end method

.method public q()Le/k/a/c/g0/g;
    .locals 6

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v1, Le/k/a/c/g0/g;

    .line 3
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v2, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v2, Le/k/a/c/g0/g;

    .line 5
    invoke-virtual {v1}, Le/k/a/c/g0/g;->g()Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Le/k/a/c/g0/g;->g()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :goto_1
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple fields representing property \""

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Le/k/a/c/g0/c0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Le/k/a/c/g0/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le/k/a/c/g0/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public r()Le/k/a/c/g0/j;
    .locals 5

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 4
    iget-object v2, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v2, Le/k/a/c/g0/j;

    invoke-virtual {v2}, Le/k/a/c/g0/j;->g()Ljava/lang/Class;

    move-result-object v2

    .line 5
    iget-object v3, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v3, Le/k/a/c/g0/j;

    invoke-virtual {v3}, Le/k/a/c/g0/j;->g()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v2, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v2, Le/k/a/c/g0/j;

    invoke-virtual {p0, v2}, Le/k/a/c/g0/c0;->M(Le/k/a/c/g0/j;)I

    move-result v2

    .line 9
    iget-object v3, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v3, Le/k/a/c/g0/j;

    invoke-virtual {p0, v3}, Le/k/a/c/g0/c0;->M(Le/k/a/c/g0/j;)I

    move-result v3

    if-eq v2, v3, :cond_5

    if-ge v2, v3, :cond_4

    :goto_1
    move-object v0, v1

    .line 10
    :cond_4
    :goto_2
    iget-object v1, v1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    .line 11
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Conflicting getter definitions for property \""

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Le/k/a/c/g0/c0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    .line 12
    invoke-virtual {v0}, Le/k/a/c/g0/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    invoke-virtual {v0}, Le/k/a/c/g0/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_6
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->e()Le/k/a/c/g0/c0$e;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    .line 14
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0
.end method

.method public s()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/g0/c0;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->o()Le/k/a/c/g0/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->v()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->q()Le/k/a/c/g0/g;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Le/k/a/c/g0/s;->n()Le/k/a/c/g0/i;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public t()Le/k/a/c/i;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/k/a/c/g0/c0;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->r()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->q()Le/k/a/c/g0/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->o()Le/k/a/c/g0/m;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->v()Le/k/a/c/g0/j;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Le/k/a/c/g0/j;->r(I)Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->q()Le/k/a/c/g0/g;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->r()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    invoke-virtual {v0}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[Property \'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; ctors: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field(s): "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getter(s): "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/c0;->i:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter(s): "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->t()Le/k/a/c/i;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public v()Le/k/a/c/g0/j;
    .locals 6

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_8

    .line 4
    iget-object v2, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v2, Le/k/a/c/g0/j;

    invoke-virtual {v2}, Le/k/a/c/g0/j;->g()Ljava/lang/Class;

    move-result-object v2

    .line 5
    iget-object v3, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v3, Le/k/a/c/g0/j;

    invoke-virtual {v3}, Le/k/a/c/g0/j;->g()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v2, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v2, Le/k/a/c/g0/j;

    .line 9
    iget-object v3, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v3, Le/k/a/c/g0/j;

    .line 10
    invoke-virtual {p0, v2}, Le/k/a/c/g0/c0;->Q(Le/k/a/c/g0/j;)I

    move-result v4

    .line 11
    invoke-virtual {p0, v3}, Le/k/a/c/g0/c0;->Q(Le/k/a/c/g0/j;)I

    move-result v5

    if-eq v4, v5, :cond_4

    if-ge v4, v5, :cond_6

    goto :goto_1

    .line 12
    :cond_4
    iget-object v4, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    if-eqz v4, :cond_7

    .line 13
    iget-object v5, p0, Le/k/a/c/g0/c0;->c:Le/k/a/c/c0/k;

    invoke-virtual {v4, v5, v3, v2}, Le/k/a/c/b;->s0(Le/k/a/c/c0/k;Le/k/a/c/g0/j;Le/k/a/c/g0/j;)Le/k/a/c/g0/j;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_7

    :goto_1
    move-object v0, v1

    .line 14
    :cond_6
    :goto_2
    iget-object v1, v1, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    goto :goto_0

    .line 15
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    invoke-virtual {v0}, Le/k/a/c/g0/j;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v1, v1, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v1, Le/k/a/c/g0/j;

    invoke-virtual {v1}, Le/k/a/c/g0/j;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Conflicting setter definitions for property \"%s\": %s vs %s"

    .line 17
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_8
    invoke-virtual {v0}, Le/k/a/c/g0/c0$e;->e()Le/k/a/c/g0/c0$e;

    move-result-object v1

    iput-object v1, p0, Le/k/a/c/g0/c0;->j:Le/k/a/c/g0/c0$e;

    .line 19
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v0, Le/k/a/c/g0/j;

    return-object v0
.end method

.method public w()Le/k/a/c/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/c0;->s()Le/k/a/c/g0/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Le/k/a/c/b;->d0()Le/k/a/c/v;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->h:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->g:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z(Le/k/a/c/v;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0;->e:Le/k/a/c/v;

    invoke-virtual {v0, p1}, Le/k/a/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
