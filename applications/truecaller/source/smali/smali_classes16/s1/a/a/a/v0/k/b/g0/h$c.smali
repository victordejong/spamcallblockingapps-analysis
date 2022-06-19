.class public final Ls1/a/a/a/v0/k/b/g0/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g0/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field public static final synthetic j:[Ls1/a/l;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/a/a/a/v0/l/i;

.field public final h:Ls1/a/a/a/v0/l/i;

.field public final synthetic i:Ls1/a/a/a/v0/k/b/g0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v0/k/b/g0/h$c;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v0/k/b/g0/h$c;->j:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/i;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/n;",
            ">;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "functionList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    move-object v2, v1

    check-cast v2, Ls1/a/a/a/v0/h/p;

    .line 5
    iget-object v3, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 6
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object v3, v3, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 8
    check-cast v2, Ls1/a/a/a/v0/e/i;

    .line 9
    iget v2, v2, Ls1/a/a/a/v0/e/i;->f:I

    .line 10
    invoke-static {v3, v2}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 15
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/k/b/g0/h$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->a:Ljava/util/Map;

    .line 17
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 19
    move-object v1, v0

    check-cast v1, Ls1/a/a/a/v0/h/p;

    .line 20
    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 21
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 22
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 23
    check-cast v1, Ls1/a/a/a/v0/e/n;

    .line 24
    iget v1, v1, Ls1/a/a/a/v0/e/n;->f:I

    .line 25
    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    .line 26
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/k/b/g0/h$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->b:Ljava/util/Map;

    .line 32
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 33
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 34
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    .line 35
    invoke-interface {p2}, Ls1/a/a/a/v0/k/b/k;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 36
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 38
    move-object v0, p4

    check-cast v0, Ls1/a/a/a/v0/h/p;

    .line 39
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 40
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 41
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 42
    check-cast v0, Ls1/a/a/a/v0/e/r;

    .line 43
    iget v0, v0, Ls1/a/a/a/v0/e/r;->e:I

    .line 44
    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 49
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/k/b/g0/h$c;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_3

    .line 51
    :cond_6
    sget-object p2, Ls1/u/t;->a:Ls1/u/t;

    .line 52
    :goto_3
    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->c:Ljava/util/Map;

    .line 53
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 54
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 55
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 56
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/h$c$d;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/h$c$d;-><init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->d:Ls1/a/a/a/v0/l/g;

    .line 57
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 58
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 59
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 60
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/h$c$e;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/h$c$e;-><init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->e:Ls1/a/a/a/v0/l/g;

    .line 61
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 62
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 63
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 64
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/h$c$f;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/h$c$f;-><init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->f:Ls1/a/a/a/v0/l/h;

    .line 65
    iget-object p2, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 66
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 67
    iget-object p2, p2, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 68
    new-instance p3, Ls1/a/a/a/v0/k/b/g0/h$c$c;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/k/b/g0/h$c$c;-><init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V

    invoke-interface {p2, p3}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->g:Ls1/a/a/a/v0/l/i;

    .line 69
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 70
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 71
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 72
    new-instance p2, Ls1/a/a/a/v0/k/b/g0/h$c$g;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/g0/h$c$g;-><init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->h:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->g:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/h$c;->j:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h$c;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->d:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h$c;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->e:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->h:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/h$c;->j:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public e(Ljava/util/Collection;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;Ls1/a/a/a/v0/c/a/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")V"
        }
    .end annotation

    sget-object v0, Ls1/a/a/a/v0/j/i;->a:Ls1/a/a/a/v0/j/i;

    const-string v1, "result"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kindFilter"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameFilter"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 2
    sget v1, Ls1/a/a/a/v0/j/y/d;->i:I

    .line 3
    invoke-virtual {p2, v1}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v1

    const-string v2, "MemberComparator.NameAnd\u2026MemberComparator.INSTANCE"

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h$c;->d()Ljava/util/Set;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/f/e;

    .line 7
    invoke-interface {p3, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {p0, v4, p4}, Ls1/a/a/a/v0/k/b/g0/h$c;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Le/q/f/a/d/a;->V2(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 12
    sget v1, Ls1/a/a/a/v0/j/y/d;->h:I

    .line 13
    invoke-virtual {p2, v1}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/g0/h$c;->a()Ljava/util/Set;

    move-result-object p2

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/f/e;

    .line 17
    invoke-interface {p3, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p0, v3, p4}, Ls1/a/a/a/v0/k/b/g0/h$c;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Le/q/f/a/d/a;->V2(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/b/v0;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->f:Ls1/a/a/a/v0/l/h;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/v0;

    return-object p1
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/h/a;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ls1/a/a/a/v0/h/a;

    .line 11
    invoke-interface {v5}, Ls1/a/a/a/v0/h/p;->getSerializedSize()I

    move-result v6

    .line 12
    invoke-static {v6}, Ls1/a/a/a/v0/h/e;->g(I)I

    move-result v7

    add-int/2addr v7, v6

    const/16 v8, 0x1000

    if-le v7, v8, :cond_0

    move v7, v8

    .line 13
    :cond_0
    invoke-static {v3, v7}, Ls1/a/a/a/v0/h/e;->k(Ljava/io/OutputStream;I)Ls1/a/a/a/v0/h/e;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v6}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 15
    invoke-interface {v5, v7}, Ls1/a/a/a/v0/h/p;->a(Ls1/a/a/a/v0/h/e;)V

    .line 16
    invoke-virtual {v7}, Ls1/a/a/a/v0/h/e;->j()V

    .line 17
    sget-object v5, Ls1/s;->a:Ls1/s;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
