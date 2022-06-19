.class public final Lcom/facebook/appevents/n0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001b\u0008\u0002\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\u0006J+\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00172\u0006\u0010\u0018\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Model;",
        "",
        "weights",
        "",
        "",
        "Lcom/facebook/appevents/ml/MTensor;",
        "(Ljava/util/Map;)V",
        "convs0Bias",
        "convs0Weight",
        "convs1Bias",
        "convs1Weight",
        "convs2Bias",
        "convs2Weight",
        "embedding",
        "fc1Bias",
        "fc1Weight",
        "fc2Bias",
        "fc2Weight",
        "finalWeights",
        "",
        "predictOnMTML",
        "dense",
        "texts",
        "",
        "task",
        "(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final m:Lcom/facebook/appevents/n0/g;

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/facebook/appevents/n0/f;

.field public final b:Lcom/facebook/appevents/n0/f;

.field public final c:Lcom/facebook/appevents/n0/f;

.field public final d:Lcom/facebook/appevents/n0/f;

.field public final e:Lcom/facebook/appevents/n0/f;

.field public final f:Lcom/facebook/appevents/n0/f;

.field public final g:Lcom/facebook/appevents/n0/f;

.field public final h:Lcom/facebook/appevents/n0/f;

.field public final i:Lcom/facebook/appevents/n0/f;

.field public final j:Lcom/facebook/appevents/n0/f;

.field public final k:Lcom/facebook/appevents/n0/f;

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/n0/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ls1/k;

    .line 1
    new-instance v1, Ls1/k;

    const-string v2, "embedding.weight"

    const-string v3, "embed.weight"

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    new-instance v2, Ls1/k;

    const-string v3, "dense1.weight"

    const-string v4, "fc1.weight"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "dense2.weight"

    const-string v4, "fc2.weight"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    new-instance v2, Ls1/k;

    const-string v3, "dense3.weight"

    const-string v4, "fc3.weight"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    new-instance v2, Ls1/k;

    const-string v3, "dense1.bias"

    const-string v4, "fc1.bias"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 6
    new-instance v2, Ls1/k;

    const-string v3, "dense2.bias"

    const-string v4, "fc2.bias"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 7
    new-instance v2, Ls1/k;

    const-string v3, "dense3.bias"

    const-string v4, "fc3.bias"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 8
    invoke-static {v0}, Ls1/u/i;->I([Ls1/k;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/n0/g;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ls1/z/c/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "embed.weight"

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Required value was null."

    if-eqz p2, :cond_d

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->a:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.0.weight"

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p2, Lcom/facebook/appevents/n0/f;

    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->l(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->b:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.1.weight"

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b

    check-cast p2, Lcom/facebook/appevents/n0/f;

    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->l(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->c:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.2.weight"

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    check-cast p2, Lcom/facebook/appevents/n0/f;

    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->l(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->d:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.0.bias"

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->e:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.1.bias"

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->f:Lcom/facebook/appevents/n0/f;

    const-string p2, "convs.2.bias"

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->g:Lcom/facebook/appevents/n0/f;

    const-string p2, "fc1.weight"

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    check-cast p2, Lcom/facebook/appevents/n0/f;

    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->k(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->h:Lcom/facebook/appevents/n0/f;

    const-string p2, "fc2.weight"

    .line 10
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Lcom/facebook/appevents/n0/f;

    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->k(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->i:Lcom/facebook/appevents/n0/f;

    const-string p2, "fc1.bias"

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->j:Lcom/facebook/appevents/n0/f;

    const-string p2, "fc2.bias"

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Lcom/facebook/appevents/n0/f;

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->k:Lcom/facebook/appevents/n0/f;

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/facebook/appevents/n0/g;->l:Ljava/util/Map;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    sget-object v1, Lcom/facebook/appevents/n0/h$a;->a:Lcom/facebook/appevents/n0/h$a;

    invoke-virtual {v1}, Lcom/facebook/appevents/n0/h$a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    .line 15
    sget-object v1, Lcom/facebook/appevents/n0/h$a;->b:Lcom/facebook/appevents/n0/h$a;

    invoke-virtual {v1}, Lcom/facebook/appevents/n0/h$a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 16
    invoke-static {p2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".weight"

    .line 18
    invoke-static {v0, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bias"

    .line 19
    invoke-static {v0, v2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/n0/f;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/n0/f;

    if-eqz v2, :cond_1

    .line 22
    invoke-static {v2}, Lcom/facebook/appevents/n0/i;->k(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object v2

    .line 23
    iget-object v4, p0, Lcom/facebook/appevents/n0/g;->l:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_0

    .line 24
    iget-object v1, p0, Lcom/facebook/appevents/n0/g;->l:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/facebook/appevents/n0/f;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/n0/f;
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "dense"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "texts"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 1
    iget-object v2, p0, Lcom/facebook/appevents/n0/g;->a:Lcom/facebook/appevents/n0/f;

    invoke-static {p2, v0, v2}, Lcom/facebook/appevents/n0/i;->e([Ljava/lang/String;ILcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->b:Lcom/facebook/appevents/n0/f;

    invoke-static {p2, v0}, Lcom/facebook/appevents/n0/i;->c(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->e:Lcom/facebook/appevents/n0/f;

    invoke-static {p2, v0}, Lcom/facebook/appevents/n0/i;->a(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)V

    .line 4
    invoke-static {p2}, Lcom/facebook/appevents/n0/i;->i(Lcom/facebook/appevents/n0/f;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->c:Lcom/facebook/appevents/n0/f;

    invoke-static {p2, v0}, Lcom/facebook/appevents/n0/i;->c(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/facebook/appevents/n0/g;->f:Lcom/facebook/appevents/n0/f;

    invoke-static {v0, v2}, Lcom/facebook/appevents/n0/i;->a(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)V

    .line 7
    invoke-static {v0}, Lcom/facebook/appevents/n0/i;->i(Lcom/facebook/appevents/n0/f;)V

    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v2}, Lcom/facebook/appevents/n0/i;->g(Lcom/facebook/appevents/n0/f;I)Lcom/facebook/appevents/n0/f;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/facebook/appevents/n0/g;->d:Lcom/facebook/appevents/n0/f;

    invoke-static {v0, v3}, Lcom/facebook/appevents/n0/i;->c(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/facebook/appevents/n0/g;->g:Lcom/facebook/appevents/n0/f;

    invoke-static {v3, v4}, Lcom/facebook/appevents/n0/i;->a(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)V

    .line 11
    invoke-static {v3}, Lcom/facebook/appevents/n0/i;->i(Lcom/facebook/appevents/n0/f;)V

    .line 12
    iget-object v4, p2, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 13
    invoke-static {p2, v4}, Lcom/facebook/appevents/n0/i;->g(Lcom/facebook/appevents/n0/f;I)Lcom/facebook/appevents/n0/f;

    move-result-object p2

    .line 14
    iget-object v4, v0, Lcom/facebook/appevents/n0/f;->a:[I

    aget v4, v4, v5

    .line 15
    invoke-static {v0, v4}, Lcom/facebook/appevents/n0/i;->g(Lcom/facebook/appevents/n0/f;I)Lcom/facebook/appevents/n0/f;

    move-result-object v0

    .line 16
    iget-object v4, v3, Lcom/facebook/appevents/n0/f;->a:[I

    aget v4, v4, v5

    .line 17
    invoke-static {v3, v4}, Lcom/facebook/appevents/n0/i;->g(Lcom/facebook/appevents/n0/f;I)Lcom/facebook/appevents/n0/f;

    move-result-object v3

    .line 18
    invoke-static {p2, v5}, Lcom/facebook/appevents/n0/i;->f(Lcom/facebook/appevents/n0/f;I)V

    .line 19
    invoke-static {v0, v5}, Lcom/facebook/appevents/n0/i;->f(Lcom/facebook/appevents/n0/f;I)V

    .line 20
    invoke-static {v3, v5}, Lcom/facebook/appevents/n0/i;->f(Lcom/facebook/appevents/n0/f;I)V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/facebook/appevents/n0/f;

    const/4 v6, 0x0

    aput-object p2, v4, v6

    aput-object v0, v4, v5

    aput-object v3, v4, v2

    const/4 p2, 0x3

    aput-object p1, v4, p2

    .line 21
    invoke-static {v4}, Lcom/facebook/appevents/n0/i;->b([Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/facebook/appevents/n0/g;->h:Lcom/facebook/appevents/n0/f;

    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->j:Lcom/facebook/appevents/n0/f;

    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/n0/i;->d(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/facebook/appevents/n0/i;->i(Lcom/facebook/appevents/n0/f;)V

    .line 24
    iget-object p2, p0, Lcom/facebook/appevents/n0/g;->i:Lcom/facebook/appevents/n0/f;

    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->k:Lcom/facebook/appevents/n0/f;

    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/n0/i;->d(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/facebook/appevents/n0/i;->i(Lcom/facebook/appevents/n0/f;)V

    .line 26
    iget-object p2, p0, Lcom/facebook/appevents/n0/g;->l:Ljava/util/Map;

    const-string v0, ".weight"

    invoke-static {p3, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/appevents/n0/f;

    .line 27
    iget-object v0, p0, Lcom/facebook/appevents/n0/g;->l:Ljava/util/Map;

    const-string v2, ".bias"

    invoke-static {p3, v2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/appevents/n0/f;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/n0/i;->d(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/facebook/appevents/n0/i;->j(Lcom/facebook/appevents/n0/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 30
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
