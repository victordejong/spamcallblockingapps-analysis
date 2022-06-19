.class public Lcom/hiya/stingray/manager/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/a/o;

.field private final b:Lcom/hiya/stingray/t/i1/w;

.field private final c:Lcom/hiya/stingray/t/i1/y;

.field private final d:Lcom/hiya/stingray/t/i1/v;

.field private final e:Lcom/hiya/stingray/ui/login/o;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/a/o;Lcom/hiya/stingray/t/i1/w;Lcom/hiya/stingray/t/i1/y;Lcom/hiya/stingray/t/i1/v;Lcom/hiya/stingray/ui/login/o;Landroid/content/Context;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/g2;->a:Lcom/hiya/stingray/q/a/o;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/g2;->b:Lcom/hiya/stingray/t/i1/w;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/g2;->c:Lcom/hiya/stingray/t/i1/y;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/g2;->d:Lcom/hiya/stingray/t/i1/v;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/g2;->e:Lcom/hiya/stingray/ui/login/o;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/manager/g2;->f:Landroid/content/Context;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/manager/g2;->g:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method private synthetic b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/hiya/stingray/manager/a1;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/a1;-><init>(Lcom/hiya/stingray/manager/g2;)V

    invoke-static {p1, p2}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    sget-object v1, Lcom/hiya/stingray/manager/g2$a;->a:[I

    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->d()Lcom/hiya/stingray/q/c/g/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/g2;->c:Lcom/hiya/stingray/t/i1/y;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/i1/y;->a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/manager/g2;->d:Lcom/hiya/stingray/t/i1/v;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/i1/v;->a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/manager/g2;->b:Lcom/hiya/stingray/t/i1/w;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/i1/w;->a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/k/d;->getEventProfileEvent()Lg/g/a/a/i/k/c;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hiya/stingray/manager/g2;->g:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o2;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hiya/stingray/manager/g2;->e:Lcom/hiya/stingray/ui/login/o;

    iget-object v2, p0, Lcom/hiya/stingray/manager/g2;->f:Landroid/content/Context;

    sget-object v3, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p1}, Lg/g/a/a/i/k/d;->getEventProfileEvent()Lg/g/a/a/i/k/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/g/a/a/i/k/c;->setContact(Ljava/lang/Boolean;)V

    :cond_5
    return-object p1
.end method

.method public synthetic c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/g2;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/p0;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/p0;-><init>(Lcom/hiya/stingray/manager/g2;Ljava/util/List;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/o0;->f:Lcom/hiya/stingray/manager/o0;

    .line 3
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/manager/g2;->a:Lcom/hiya/stingray/q/a/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/hiya/stingray/manager/b;

    invoke-direct {v1, v0}, Lcom/hiya/stingray/manager/b;-><init>(Lcom/hiya/stingray/q/a/o;)V

    .line 4
    invoke-virtual {p1, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
