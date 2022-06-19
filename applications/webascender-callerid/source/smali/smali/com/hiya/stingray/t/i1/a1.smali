.class public Lcom/hiya/stingray/t/i1/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/hiya/stingray/q/b/x;

.field private final c:Lcom/hiya/stingray/t/i1/e0;

.field private final d:Lcom/hiya/stingray/manager/s2;


# direct methods
.method public constructor <init>(Lh/a;Lcom/hiya/stingray/q/b/x;Lcom/hiya/stingray/t/i1/e0;Lcom/hiya/stingray/manager/s2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/q/b/x;",
            "Lcom/hiya/stingray/t/i1/e0;",
            "Lcom/hiya/stingray/manager/s2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/i1/a1;->a:Lh/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/t/i1/a1;->b:Lcom/hiya/stingray/q/b/x;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/t/i1/a1;->c:Lcom/hiya/stingray/t/i1/e0;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/t/i1/a1;->d:Lcom/hiya/stingray/manager/s2;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/t/i1/a1;)Lcom/hiya/stingray/manager/s2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/t/i1/a1;->d:Lcom/hiya/stingray/manager/s2;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hiya/stingray/t/i1/a1;->c(Ljava/lang/String;Lg/g/a/a/i/o/c;J)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Lg/g/a/a/i/o/c;J)Lg/g/a/a/i/o/y;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/t/i1/a1;->d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/i1/a1;->a:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hiya/stingray/t/i1/a1;->b:Lcom/hiya/stingray/q/b/x;

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/util/y;->e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->j(Lg/g/c/a/c/a/b;)Lg/g/a/a/i/h;

    move-result-object p1

    .line 3
    invoke-static {}, Lg/g/a/a/i/o/y;->newBuilder()Lg/g/a/a/i/o/y$b;

    move-result-object v0

    new-instance v1, Lorg/joda/time/k;

    invoke-direct {v1, p3, p4}, Lorg/joda/time/k;-><init>(J)V

    .line 4
    invoke-virtual {v1}, Lorg/joda/time/x/b;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lg/g/a/a/i/o/y$b;->withTimestamp(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p1}, Lg/g/a/a/i/o/y$b;->withPhoneDTO(Lg/g/a/a/i/h;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/y$b;->withFeedbackDTO(Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/t/i1/a1;->c:Lcom/hiya/stingray/t/i1/e0;

    .line 7
    invoke-virtual {p2, p5}, Lcom/hiya/stingray/t/i1/e0;->a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/o;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/y$b;->withLastInteractionDTO(Lg/g/a/a/i/o/o;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/t/i1/a1$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/t/i1/a1$a;-><init>(Lcom/hiya/stingray/t/i1/a1;)V

    .line 8
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/y$b;->withClientTag(Ljava/util/Map;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lg/g/a/a/i/o/y$b;->build()Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/c;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/t/i1/a1;->g(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/d;

    move-result-object p1

    .line 2
    new-instance p2, Lg/g/a/a/i/o/c;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p1}, Lg/g/a/a/i/o/c;-><init>(Lg/g/a/a/i/m/f;Lg/g/a/a/i/o/e;Lg/g/a/a/i/o/d;)V

    return-object p2
.end method

.method private f()Lg/g/a/a/i/o/c;
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/i/o/e;

    invoke-direct {v0}, Lg/g/a/a/i/o/e;-><init>()V

    .line 2
    new-instance v1, Lg/g/a/a/i/o/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lg/g/a/a/i/o/c;-><init>(Lg/g/a/a/i/m/f;Lg/g/a/a/i/o/e;Lg/g/a/a/i/o/d;)V

    return-object v1
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/d;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/o/d;

    invoke-direct {v0}, Lg/g/a/a/i/o/d;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lg/g/a/a/i/o/d;->setDisplayName(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Lg/g/a/a/i/o/d;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 5
    invoke-virtual {v0, p1}, Lg/g/a/a/i/o/d;->setName(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public h(Ljava/lang/String;)Lg/g/a/a/i/o/y;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/t/i1/a1;->f()Lg/g/a/a/i/o/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/t/i1/a1;->b(Ljava/lang/String;Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/t/i1/a1;->f()Lg/g/a/a/i/o/c;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/t/i1/a1;->d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/y;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/t/i1/a1;->e(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/t/i1/a1;->b(Ljava/lang/String;Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/t/i1/a1;->e(Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/o/c;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/t/i1/a1;->d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/hiya/stingray/t/c1;)Lg/g/a/a/i/o/y;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/t/i1/a1;->m(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/m;->u(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v0, Lg/g/a/a/i/o/e;

    sget-object v1, Lg/g/a/a/i/j/b;->ABSTAIN:Lg/g/a/a/i/j/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lg/g/a/a/i/o/e;-><init>(Lg/g/a/a/i/j/b;I)V

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lg/g/a/a/i/m/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lg/g/a/a/i/m/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 7
    :goto_2
    new-instance v4, Lg/g/a/a/i/o/c;

    invoke-direct {v4, v1, v0, v2}, Lg/g/a/a/i/o/c;-><init>(Lg/g/a/a/i/m/f;Lg/g/a/a/i/o/e;Lg/g/a/a/i/o/d;)V

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->f()J

    move-result-wide v5

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/hiya/stingray/t/i1/a1;->d(Ljava/lang/String;Lg/g/a/a/i/o/c;JLcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method
