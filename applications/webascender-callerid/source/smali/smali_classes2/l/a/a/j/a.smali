.class public Ll/a/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a/a/j/a$x;
    }
.end annotation


# static fields
.field public static final c:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ll/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ll/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ll/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ll/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final i:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final j:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ll/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a/a/j/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/a/a/j/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ll/a/a/j/a$x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/a/a/j/a$k;

    invoke-direct {v0}, Ll/a/a/j/a$k;-><init>()V

    sput-object v0, Ll/a/a/j/a;->c:Ll/a/a/j/b;

    .line 2
    new-instance v0, Ll/a/a/j/a$p;

    invoke-direct {v0}, Ll/a/a/j/a$p;-><init>()V

    sput-object v0, Ll/a/a/j/a;->d:Ll/a/a/j/b;

    .line 3
    new-instance v0, Ll/a/a/j/a$q;

    invoke-direct {v0}, Ll/a/a/j/a$q;-><init>()V

    sput-object v0, Ll/a/a/j/a;->e:Ll/a/a/j/b;

    .line 4
    new-instance v0, Ll/a/a/j/a$r;

    invoke-direct {v0}, Ll/a/a/j/a$r;-><init>()V

    sput-object v0, Ll/a/a/j/a;->f:Ll/a/a/j/b;

    .line 5
    new-instance v0, Ll/a/a/j/a$s;

    invoke-direct {v0}, Ll/a/a/j/a$s;-><init>()V

    sput-object v0, Ll/a/a/j/a;->g:Ll/a/a/j/b;

    .line 6
    new-instance v0, Ll/a/a/j/a$t;

    invoke-direct {v0}, Ll/a/a/j/a$t;-><init>()V

    sput-object v0, Ll/a/a/j/a;->h:Ll/a/a/j/b;

    .line 7
    new-instance v0, Ll/a/a/j/a$u;

    invoke-direct {v0}, Ll/a/a/j/a$u;-><init>()V

    sput-object v0, Ll/a/a/j/a;->i:Ll/a/a/j/b;

    .line 8
    new-instance v0, Ll/a/a/j/a$v;

    invoke-direct {v0}, Ll/a/a/j/a$v;-><init>()V

    sput-object v0, Ll/a/a/j/a;->j:Ll/a/a/j/b;

    .line 9
    new-instance v0, Ll/a/a/j/a$w;

    invoke-direct {v0}, Ll/a/a/j/a$w;-><init>()V

    sput-object v0, Ll/a/a/j/a;->k:Ll/a/a/j/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll/a/a/j/a;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ll/a/a/j/a;->b:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p0}, Ll/a/a/j/a;->d()V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3, p0}, Ll/a/a/f;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 4
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    invoke-static {p0, p2, p3}, Ll/a/a/h;->c(Ljava/lang/String;Ljava/lang/Appendable;Ll/a/a/f;)V

    .line 6
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    :goto_0
    invoke-virtual {p3, p2}, Ll/a/a/f;->k(Ljava/lang/Appendable;)V

    .line 8
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Ll/a/a/f;->p(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1, p2, p3}, Ll/a/a/h;->d(Ljava/lang/Object;Ljava/lang/Appendable;Ll/a/a/f;)V

    .line 11
    :goto_1
    invoke-virtual {p3, p2}, Ll/a/a/f;->j(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ll/a/a/j/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/a/a/j/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/a/a/j/a;->b:Ljava/util/LinkedList;

    new-instance v1, Ll/a/a/j/a$x;

    invoke-direct {v1, p1, p2}, Ll/a/a/j/a$x;-><init>(Ljava/lang/Class;Ll/a/a/j/b;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Class;)Ll/a/a/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/a/a/j/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/a/a/j/b;

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Ll/a/a/j/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ll/a/a/j/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/a/a/j/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/a/a/j/a$x;

    .line 2
    iget-object v2, v1, Ll/a/a/j/a$x;->a:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, v1, Ll/a/a/j/a$x;->b:Ll/a/a/j/b;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Ll/a/a/j/a$a;

    invoke-direct {v1, p0}, Ll/a/a/j/a$a;-><init>(Ll/a/a/j/a;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ll/a/a/j/a$b;

    invoke-direct {v1, p0}, Ll/a/a/j/a$b;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 3
    new-instance v1, Ll/a/a/j/a$c;

    invoke-direct {v1, p0}, Ll/a/a/j/a$c;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 4
    new-instance v1, Ll/a/a/j/a$d;

    invoke-direct {v1, p0}, Ll/a/a/j/a$d;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Date;

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 5
    new-instance v1, Ll/a/a/j/a$e;

    invoke-direct {v1, p0}, Ll/a/a/j/a$e;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 6
    new-instance v1, Ll/a/a/j/a$f;

    invoke-direct {v1, p0}, Ll/a/a/j/a$f;-><init>(Ll/a/a/j/a;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Long;

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-class v6, Ljava/lang/Short;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-class v6, Ljava/math/BigInteger;

    aput-object v6, v3, v4

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 7
    new-instance v1, Ll/a/a/j/a$g;

    invoke-direct {v1, p0}, Ll/a/a/j/a$g;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 8
    new-instance v1, Ll/a/a/j/a$h;

    invoke-direct {v1, p0}, Ll/a/a/j/a$h;-><init>(Ll/a/a/j/a;)V

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 9
    new-instance v0, Ll/a/a/j/a$i;

    invoke-direct {v0, p0}, Ll/a/a/j/a$i;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, [I

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 10
    new-instance v0, Ll/a/a/j/a$j;

    invoke-direct {v0, p0}, Ll/a/a/j/a$j;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, [S

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 11
    new-instance v0, Ll/a/a/j/a$l;

    invoke-direct {v0, p0}, Ll/a/a/j/a$l;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, [J

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 12
    new-instance v0, Ll/a/a/j/a$m;

    invoke-direct {v0, p0}, Ll/a/a/j/a$m;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, [F

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 13
    new-instance v0, Ll/a/a/j/a$n;

    invoke-direct {v0, p0}, Ll/a/a/j/a$n;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, [D

    aput-object v3, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 14
    new-instance v0, Ll/a/a/j/a$o;

    invoke-direct {v0, p0}, Ll/a/a/j/a$o;-><init>(Ll/a/a/j/a;)V

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, [Z

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->e(Ll/a/a/j/b;[Ljava/lang/Class;)V

    .line 15
    const-class v0, Ll/a/a/e;

    sget-object v1, Ll/a/a/j/a;->d:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 16
    const-class v0, Ll/a/a/d;

    sget-object v1, Ll/a/a/j/a;->c:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 17
    const-class v0, Ll/a/a/b;

    sget-object v1, Ll/a/a/j/a;->e:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 18
    const-class v0, Ll/a/a/a;

    sget-object v1, Ll/a/a/j/a;->f:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 19
    const-class v0, Ljava/util/Map;

    sget-object v1, Ll/a/a/j/a;->i:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 20
    const-class v0, Ljava/lang/Iterable;

    sget-object v1, Ll/a/a/j/a;->g:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    .line 21
    const-class v0, Ljava/lang/Enum;

    sget-object v1, Ll/a/a/j/a;->h:Ll/a/a/j/b;

    invoke-virtual {p0, v0, v1}, Ll/a/a/j/a;->a(Ljava/lang/Class;Ll/a/a/j/b;)V

    return-void
.end method

.method public varargs e(Ll/a/a/j/b;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/a/a/j/b<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Ll/a/a/j/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
