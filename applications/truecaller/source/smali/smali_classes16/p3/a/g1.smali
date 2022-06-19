.class public final Lp3/a/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/g1$d;,
        Lp3/a/g1$c;,
        Lp3/a/g1$b;
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/g1;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lp3/a/g1;

.field public static final g:Lp3/a/g1;

.field public static final h:Lp3/a/g1;

.field public static final i:Lp3/a/g1;

.field public static final j:Lp3/a/g1;

.field public static final k:Lp3/a/g1;

.field public static final l:Lp3/a/g1;

.field public static final m:Lp3/a/g1;

.field public static final n:Lp3/a/g1;

.field public static final o:Lp3/a/g1;

.field public static final p:Lp3/a/g1;

.field public static final q:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Lp3/a/g1;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lp3/a/o0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp3/a/g1$b;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lp3/a/g1;->d:Z

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    invoke-static {}, Lp3/a/g1$b;->values()[Lp3/a/g1$b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x11

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    .line 4
    iget v6, v4, Lp3/a/g1$b;->a:I

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lp3/a/g1;

    .line 6
    invoke-direct {v7, v4, v5, v5}, Lp3/a/g1;-><init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp3/a/g1;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code value duplication between "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v2, v5, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    sput-object v0, Lp3/a/g1;->e:Ljava/util/List;

    .line 13
    sget-object v0, Lp3/a/g1$b;->c:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->f:Lp3/a/g1;

    .line 14
    sget-object v0, Lp3/a/g1$b;->d:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->g:Lp3/a/g1;

    .line 15
    sget-object v0, Lp3/a/g1$b;->e:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    .line 16
    sget-object v0, Lp3/a/g1$b;->f:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 17
    sget-object v0, Lp3/a/g1$b;->g:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->i:Lp3/a/g1;

    .line 18
    sget-object v0, Lp3/a/g1$b;->h:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->j:Lp3/a/g1;

    .line 19
    sget-object v0, Lp3/a/g1$b;->i:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 20
    sget-object v0, Lp3/a/g1$b;->j:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->k:Lp3/a/g1;

    .line 21
    sget-object v0, Lp3/a/g1$b;->s:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->l:Lp3/a/g1;

    .line 22
    sget-object v0, Lp3/a/g1$b;->k:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->m:Lp3/a/g1;

    .line 23
    sget-object v0, Lp3/a/g1$b;->l:Lp3/a/g1$b;

    .line 24
    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->n:Lp3/a/g1;

    .line 25
    sget-object v0, Lp3/a/g1$b;->m:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 26
    sget-object v0, Lp3/a/g1$b;->n:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 27
    sget-object v0, Lp3/a/g1$b;->o:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 28
    sget-object v0, Lp3/a/g1$b;->p:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    .line 29
    sget-object v0, Lp3/a/g1$b;->q:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->p:Lp3/a/g1;

    .line 30
    sget-object v0, Lp3/a/g1$b;->r:Lp3/a/g1$b;

    invoke-virtual {v0}, Lp3/a/g1$b;->a()Lp3/a/g1;

    .line 31
    new-instance v0, Lp3/a/g1$c;

    invoke-direct {v0, v5}, Lp3/a/g1$c;-><init>(Lp3/a/g1$a;)V

    const-string v1, "grpc-status"

    .line 32
    invoke-static {v1, v2, v0}, Lp3/a/o0$f;->b(Ljava/lang/String;ZLp3/a/o0$i;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->q:Lp3/a/o0$f;

    .line 33
    new-instance v0, Lp3/a/g1$d;

    invoke-direct {v0, v5}, Lp3/a/g1$d;-><init>(Lp3/a/g1$a;)V

    sput-object v0, Lp3/a/g1;->r:Lp3/a/o0$i;

    const-string v1, "grpc-message"

    .line 34
    invoke-static {v1, v2, v0}, Lp3/a/o0$f;->b(Ljava/lang/String;ZLp3/a/o0$i;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/g1;->s:Lp3/a/o0$f;

    return-void
.end method

.method public constructor <init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/g1$b;

    iput-object p1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 3
    iput-object p2, p0, Lp3/a/g1;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static c(Lp3/a/g1;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lp3/a/g1;
    .locals 3

    if-ltz p0, :cond_1

    .line 1
    sget-object v0, Lp3/a/g1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp3/a/g1;

    return-object p0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Lp3/a/g1;
    .locals 2

    const-string v0, "t"

    .line 1
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Lp3/a/h1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lp3/a/h1;

    .line 4
    iget-object p0, v0, Lp3/a/h1;->a:Lp3/a/g1;

    return-object p0

    .line 5
    :cond_0
    instance-of v1, v0, Lp3/a/i1;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lp3/a/i1;

    .line 7
    iget-object p0, v0, Lp3/a/i1;->a:Lp3/a/g1;

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    invoke-virtual {v0, p0}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lp3/a/i1;
    .locals 2

    .line 1
    new-instance v0, Lp3/a/i1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lp3/a/g1;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lp3/a/g1;

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    iget-object v2, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lp3/a/g1;-><init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lp3/a/g1;

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v4, "\n"

    invoke-static {v2, v3, v4, p1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lp3/a/g1;-><init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lp3/a/g1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    sget-object v0, Lp3/a/g1$b;->c:Lp3/a/g1$b;

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Ljava/lang/Throwable;)Lp3/a/g1;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lp3/a/g1;

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    iget-object v2, p0, Lp3/a/g1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lp3/a/g1;-><init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)Lp3/a/g1;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lp3/a/g1;

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    iget-object v2, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lp3/a/g1;-><init>(Lp3/a/g1$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 4
    iget-object v1, p0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v2, "description"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 6
    iget-object v1, p0, Lp3/a/g1;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 7
    sget-object v2, Lcom/google/common/base/Throwables;->jla:Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 9
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 12
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
