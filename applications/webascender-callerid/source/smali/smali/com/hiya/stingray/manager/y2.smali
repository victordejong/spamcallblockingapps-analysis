.class public Lcom/hiya/stingray/manager/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/y2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/q/d/a;

.field private final b:Lcom/hiya/stingray/manager/q2;

.field private final c:Lcom/hiya/stingray/t/i1/e;

.field private final d:Lcom/hiya/stingray/util/a0;

.field private final e:Lcom/hiya/stingray/manager/c2;

.field private final f:Lcom/hiya/stingray/manager/h4;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/hiya/stingray/q/b/p;

.field private final i:Lg/g/b/a/b;

.field private final j:Lcom/hiya/stingray/t/i1/f0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/q2;Lcom/hiya/stingray/t/i1/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/h4;Ljava/lang/String;Lcom/hiya/stingray/q/b/p;Lg/g/b/a/b;Lcom/hiya/stingray/t/i1/f0;Lcom/hiya/stingray/manager/w2;)V
    .locals 1

    const-string v0, "commonSharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventProfileManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogItemMapper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simIso"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdProvider"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyCallerIdMapper"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localOverrideManager"

    invoke-static {p11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/y2;->b:Lcom/hiya/stingray/manager/q2;

    iput-object p3, p0, Lcom/hiya/stingray/manager/y2;->c:Lcom/hiya/stingray/t/i1/e;

    iput-object p4, p0, Lcom/hiya/stingray/manager/y2;->d:Lcom/hiya/stingray/util/a0;

    iput-object p5, p0, Lcom/hiya/stingray/manager/y2;->e:Lcom/hiya/stingray/manager/c2;

    iput-object p6, p0, Lcom/hiya/stingray/manager/y2;->f:Lcom/hiya/stingray/manager/h4;

    iput-object p7, p0, Lcom/hiya/stingray/manager/y2;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/hiya/stingray/manager/y2;->h:Lcom/hiya/stingray/q/b/p;

    iput-object p9, p0, Lcom/hiya/stingray/manager/y2;->i:Lg/g/b/a/b;

    iput-object p10, p0, Lcom/hiya/stingray/manager/y2;->j:Lcom/hiya/stingray/t/i1/f0;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/t/i1/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->c:Lcom/hiya/stingray/t/i1/e;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/q/b/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->h:Lcom/hiya/stingray/q/b/p;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/manager/q2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->b:Lcom/hiya/stingray/manager/q2;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/t/i1/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->j:Lcom/hiya/stingray/t/i1/f0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->d:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/manager/y2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/y2;->g:Ljava/lang/String;

    return-object p0
.end method

.method private final k(Ljava/lang/String;)Lcom/hiya/stingray/t/t0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->r()Ljava/util/List;

    move-result-object v0

    const-string v1, "commonSharedPreferences.lookupHistoryEntries"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hiya/stingray/t/t0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/hiya/stingray/t/t0;

    return-object v1
.end method


# virtual methods
.method public final g(Lcom/hiya/stingray/t/t0;)V
    .locals 3

    const-string v0, "lookupHistoryEntry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->r()Ljava/util/List;

    move-result-object v1

    const-string v2, "commonSharedPreferences.lookupHistoryEntries"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hiya/stingray/manager/y2;->k(Ljava/lang/String;)Lcom/hiya/stingray/t/t0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0x14

    if-le p1, v2, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    new-instance p1, Lcom/hiya/stingray/manager/y2$a;

    invoke-direct {p1}, Lcom/hiya/stingray/manager/y2$a;-><init>()V

    invoke-static {v1, p1}, Lkotlin/s/k;->v(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->e0(Ljava/util/List;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->e0(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->d:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/manager/y2$b;

    invoke-direct {v1}, Lcom/hiya/stingray/manager/y2$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/t0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->r()Ljava/util/List;

    move-result-object v0

    const-string v1, "commonSharedPreferences.lookupHistoryEntries"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->D()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->a:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->D()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->r0(I)V

    return-void
.end method

.method public final m(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y2;->e:Lcom/hiya/stingray/manager/c2;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/y2;->f:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/c2;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/y2;->i:Lg/g/b/a/b;

    .line 4
    new-instance v13, Lg/g/b/c/j;

    .line 5
    sget-object v4, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    .line 6
    sget-object v5, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v3, 0x0

    const-string v7, ""

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v2, v13

    move-object v6, p1

    .line 8
    invoke-direct/range {v2 .. v12}, Lg/g/b/c/j;-><init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;ILkotlin/w/c/g;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v13, v2, v2}, Lg/g/b/a/b;->k(Lg/g/b/c/j;ZZ)Li/c/b0/b/e0;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/manager/y2$d;

    invoke-direct {v2, p0, p1}, Lcom/hiya/stingray/manager/y2$d;-><init>(Lcom/hiya/stingray/manager/y2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/hiya/stingray/manager/y2$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/manager/y2$e;-><init>(Lcom/hiya/stingray/manager/y2;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/hiya/stingray/manager/y2$f;

    invoke-direct {v2, p0, p1}, Lcom/hiya/stingray/manager/y2$f;-><init>(Lcom/hiya/stingray/manager/y2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/hiya/stingray/manager/y2$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/y2$c;-><init>(Lcom/hiya/stingray/manager/y2;)V

    invoke-static {v0, p1, v1}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.zip(blockList\u2026            })\n        })"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
