.class public final Lm/k0/i/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm/k0/i/h$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lm/k0/i/h$a;)Lm/k0/i/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/k0/i/h$a;->f()Lm/k0/i/h;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lm/k0/i/h;
    .locals 1

    .line 1
    sget-object v0, Lm/k0/i/i/c;->c:Lm/k0/i/i/c;

    invoke-virtual {v0}, Lm/k0/i/i/c;->b()V

    .line 2
    sget-object v0, Lm/k0/i/a;->f:Lm/k0/i/a$a;

    invoke-virtual {v0}, Lm/k0/i/a$a;->a()Lm/k0/i/h;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lm/k0/i/b;->g:Lm/k0/i/b$a;

    invoke-virtual {v0}, Lm/k0/i/b$a;->a()Lm/k0/i/h;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final e()Lm/k0/i/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lm/k0/i/h$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lm/k0/i/d;->f:Lm/k0/i/d$a;

    invoke-virtual {v0}, Lm/k0/i/d$a;->b()Lm/k0/i/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lm/k0/i/h$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lm/k0/i/c;->f:Lm/k0/i/c$a;

    invoke-virtual {v0}, Lm/k0/i/c$a;->a()Lm/k0/i/c;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lm/k0/i/h$a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lm/k0/i/g;->f:Lm/k0/i/g$a;

    invoke-virtual {v0}, Lm/k0/i/g$a;->a()Lm/k0/i/g;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lm/k0/i/f;->e:Lm/k0/i/f$a;

    invoke-virtual {v0}, Lm/k0/i/f$a;->a()Lm/k0/i/f;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Lm/k0/i/e;->i:Lm/k0/i/e$b;

    invoke-virtual {v0}, Lm/k0/i/e$b;->a()Lm/k0/i/h;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lm/k0/i/h;

    invoke-direct {v0}, Lm/k0/i/h;-><init>()V

    return-object v0
.end method

.method private final f()Lm/k0/i/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm/k0/i/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lm/k0/i/h$a;->d()Lm/k0/i/h;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lm/k0/i/h$a;->e()Lm/k0/i/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final i()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    .line 2
    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final j()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    .line 2
    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final k()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenJSSE"

    .line 2
    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lm/d0;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lm/d0;

    .line 3
    sget-object v3, Lm/d0;->HTTP_1_0:Lm/d0;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lm/d0;

    .line 7
    invoke-virtual {v1}, Lm/d0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public final c(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lm/d0;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lm/k0/i/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ln/f;->O0(I)Ln/f;

    .line 4
    invoke-virtual {v0, v1}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ln/f;->P()[B

    move-result-object p1

    return-object p1
.end method

.method public final g()Lm/k0/i/h;
    .locals 1

    .line 1
    invoke-static {}, Lm/k0/i/h;->a()Lm/k0/i/h;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    const-string v0, "java.vm.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
