.class public final Lg/g/a/c/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lg/g/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/g/a/c/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaEventsAccessor"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/c/c/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lg/g/a/c/c/a;->c:Lg/g/a/c/a;

    const-string p1, "X-Hiya-Obfuscated-User-Phones"

    const-string p2, "X-Hiya-User-Phone-Number"

    .line 2
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/h0;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/c/c/a;->a:Ljava/util/Set;

    return-void
.end method

.method private final a(Lm/y;)Z
    .locals 5

    const-string v0, "settings"

    const-string v1, "phone_numbers/events"

    const-string v2, "track_events"

    const-string v3, "phone_numbers/feedback"

    const-string v4, "phone_numbers/eventProfile"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/s/h0;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lm/y;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lkotlin/c0/m;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 7

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lg/g/a/c/c/a;->a(Lm/y;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    new-instance v1, Lcom/google/gson/n;

    invoke-direct {v1}, Lcom/google/gson/n;-><init>()V

    .line 4
    new-instance v2, Lcom/google/gson/n;

    invoke-direct {v2}, Lcom/google/gson/n;-><init>()V

    const-string v3, "data"

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/n;->n(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 6
    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "method"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v3

    invoke-virtual {v3}, Lm/y;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v3, Lcom/google/gson/i;

    invoke-direct {v3}, Lcom/google/gson/i;-><init>()V

    const-string v4, "headers"

    .line 9
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/n;->n(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 10
    sget-object v4, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v4}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    invoke-virtual {v0}, Lm/e0;->a()Lm/f0;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 12
    new-instance v5, Ln/f;

    invoke-direct {v5}, Ln/f;-><init>()V

    .line 13
    invoke-virtual {v4, v5}, Lm/f0;->writeTo(Ln/g;)V

    .line 14
    invoke-virtual {v5}, Ln/f;->S0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/gson/o;->d(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v4

    const-string v6, "body"

    invoke-virtual {v2, v6, v4}, Lcom/google/gson/n;->n(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 15
    invoke-virtual {v5}, Ln/f;->close()V

    :cond_0
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0}, Lm/e0;->f()Lm/x;

    move-result-object v4

    invoke-virtual {v4}, Lm/x;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_3

    .line 17
    iget-object v5, p0, Lg/g/a/c/c/a;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lm/e0;->f()Lm/x;

    move-result-object v6

    invoke-virtual {v6, v2}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v5}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lm/e0;->f()Lm/x;

    move-result-object v6

    invoke-virtual {v6, v2}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lm/e0;->f()Lm/x;

    move-result-object v6

    invoke-virtual {v6, v2}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/i;->p(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lg/g/a/c/c/a;->c:Lg/g/a/c/a;

    .line 20
    iget-object v3, p0, Lg/g/a/c/c/a;->b:Landroid/content/Context;

    .line 21
    new-instance v4, Lg/g/a/c/b;

    invoke-direct {v4, v1}, Lg/g/a/c/b;-><init>(Lcom/google/gson/n;)V

    .line 22
    invoke-virtual {v2, v3, v4}, Lg/g/a/c/a;->b(Landroid/content/Context;Lg/g/a/c/b;)Li/c/b0/b/e;

    move-result-object v1

    .line 23
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 24
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 25
    sget-object v2, Lg/g/a/c/c/a$a;->f:Lg/g/a/c/c/a$a;

    sget-object v3, Lg/g/a/c/c/a$b;->f:Lg/g/a/c/c/a$b;

    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    .line 26
    :cond_4
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
