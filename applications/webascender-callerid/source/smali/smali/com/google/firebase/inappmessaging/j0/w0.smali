.class public Lcom/google/firebase/inappmessaging/j0/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lg/f/e/a/a/a/e/b;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/u2;

.field private b:Li/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/j<",
            "Lg/f/e/a/a/a/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg/f/e/a/a/a/e/b;->b0()Lg/f/e/a/a/a/e/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/w0;->c:Lg/f/e/a/a/a/e/b;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/u2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/w0;->b:Li/c/j;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/w0;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->f(Lg/f/e/a/a/a/e/b;)V

    return-void
.end method

.method private static b(Lg/f/e/a/a/a/e/b;Lg/f/e/a/a/a/e/a;)Lg/f/e/a/a/a/e/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lg/f/e/a/a/a/e/b;->d0(Lg/f/e/a/a/a/e/b;)Lg/f/e/a/a/a/e/b$b;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lg/f/e/a/a/a/e/b$b;->G(Lg/f/e/a/a/a/e/a;)Lg/f/e/a/a/a/e/b$b;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/e/a/a/a/e/b;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/w0;->b:Li/c/j;

    return-void
.end method

.method private f(Lg/f/e/a/a/a/e/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/j;->n(Ljava/lang/Object;)Li/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/w0;->b:Li/c/j;

    return-void
.end method

.method static synthetic h(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->f(Lg/f/e/a/a/a/e/b;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/inappmessaging/j0/w0;Ljava/util/HashSet;Lg/f/e/a/a/a/e/b;)Li/c/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Existing impressions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lg/f/e/a/a/a/e/b;->c0()Lg/f/e/a/a/a/e/b$b;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lg/f/e/a/a/a/e/b;->a0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/e/a/a/a/e/a;

    .line 4
    invoke-virtual {v1}, Lg/f/e/a/a/a/e/a;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lg/f/e/a/a/a/e/b$b;->G(Lg/f/e/a/a/a/e/a;)Lg/f/e/a/a/a/e/b$b;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/e/a/a/a/e/b;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New cleared impression list: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/j0/w0;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/j0/u2;->d(Lcom/google/protobuf/a;)Li/c/b;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/u0;->a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)Li/c/y/a;

    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/inappmessaging/j0/w0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/w0;->d()V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->f(Lg/f/e/a/a/a/e/b;)V

    return-void
.end method

.method static synthetic l(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;Lg/f/e/a/a/a/e/b;)Li/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/j0/w0;->b(Lg/f/e/a/a/a/e/b;Lg/f/e/a/a/a/e/a;)Lg/f/e/a/a/a/e/b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/j0/w0;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/j0/u2;->d(Lcom/google/protobuf/a;)Li/c/b;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/v0;->a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/b;)Li/c/y/a;

    move-result-object p0

    .line 4
    invoke-virtual {p2, p0}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lg/f/e/a/a/a/e/e;)Li/c/b;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Lg/f/e/a/a/a/e/e;->a0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/e/a/a/a/c;

    .line 3
    invoke-virtual {v1}, Lg/f/e/a/a/a/c;->b0()Lg/f/e/a/a/a/c$c;

    move-result-object v2

    sget-object v3, Lg/f/e/a/a/a/c$c;->VANILLA_PAYLOAD:Lg/f/e/a/a/a/c$c;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lg/f/e/a/a/a/c;->e0()Lg/f/e/a/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/e/a/a/a/d;->Y()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lg/f/e/a/a/a/c;->Z()Lg/f/e/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/e/a/a/a/b;->Y()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Potential impressions to clear: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/w0;->e()Li/c/j;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/inappmessaging/j0/w0;->c:Lg/f/e/a/a/a/e/b;

    .line 9
    invoke-virtual {p1, v1}, Li/c/j;->d(Ljava/lang/Object;)Li/c/j;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/j0/t0;->a(Lcom/google/firebase/inappmessaging/j0/w0;Ljava/util/HashSet;)Li/c/y/d;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Li/c/j;->j(Li/c/y/d;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public e()Li/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/j<",
            "Lg/f/e/a/a/a/e/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/w0;->b:Li/c/j;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/w0;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 2
    invoke-static {}, Lg/f/e/a/a/a/e/b;->e0()Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/u2;->c(Lcom/google/protobuf/z0;)Li/c/j;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/o0;->a(Lcom/google/firebase/inappmessaging/j0/w0;)Li/c/y/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/j;->f(Li/c/y/c;)Li/c/j;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/p0;->a(Lcom/google/firebase/inappmessaging/j0/w0;)Li/c/y/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Li/c/j;->e(Li/c/y/c;)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method public g(Lg/f/e/a/a/a/c;)Li/c/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/e/a/a/a/c;",
            ")",
            "Li/c/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/e/a/a/a/c;->b0()Lg/f/e/a/a/a/c$c;

    move-result-object v0

    sget-object v1, Lg/f/e/a/a/a/c$c;->VANILLA_PAYLOAD:Lg/f/e/a/a/a/c$c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/f/e/a/a/a/c;->e0()Lg/f/e/a/a/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/e/a/a/a/d;->Y()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg/f/e/a/a/a/c;->Z()Lg/f/e/a/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/e/a/a/a/b;->Y()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/w0;->e()Li/c/j;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/q0;->a()Li/c/y/d;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/j;->o(Li/c/y/d;)Li/c/j;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/r0;->a()Li/c/y/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Li/c/j;->k(Li/c/y/d;)Li/c/o;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/s0;->a()Li/c/y/d;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Li/c/o;->j(Li/c/y/d;)Li/c/o;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Li/c/o;->d(Ljava/lang/Object;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public m(Lg/f/e/a/a/a/e/a;)Li/c/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/w0;->e()Li/c/j;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/j0/w0;->c:Lg/f/e/a/a/a/e/b;

    .line 2
    invoke-virtual {v0, v1}, Li/c/j;->d(Ljava/lang/Object;)Li/c/j;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/n0;->a(Lcom/google/firebase/inappmessaging/j0/w0;Lg/f/e/a/a/a/e/a;)Li/c/y/d;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Li/c/j;->j(Li/c/y/d;)Li/c/b;

    move-result-object p1

    return-object p1
.end method
