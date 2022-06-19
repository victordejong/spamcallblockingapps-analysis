.class public final Lcom/google/firebase/perf/j/m$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/m;",
        "Lcom/google/firebase/perf/j/m$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/m;->W()Lcom/google/firebase/perf/j/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Iterable;)Lcom/google/firebase/perf/j/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/j/k;",
            ">;)",
            "Lcom/google/firebase/perf/j/m$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/m;->d0(Lcom/google/firebase/perf/j/m;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public H(Ljava/lang/Iterable;)Lcom/google/firebase/perf/j/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/j/m;",
            ">;)",
            "Lcom/google/firebase/perf/j/m$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/m;->a0(Lcom/google/firebase/perf/j/m;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public I(Lcom/google/firebase/perf/j/k;)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/m;->c0(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/k;)V

    return-object p0
.end method

.method public J(Lcom/google/firebase/perf/j/m;)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/m;->Z(Lcom/google/firebase/perf/j/m;Lcom/google/firebase/perf/j/m;)V

    return-object p0
.end method

.method public L(Ljava/util/Map;)Lcom/google/firebase/perf/j/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/j/m$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0}, Lcom/google/firebase/perf/j/m;->Y(Lcom/google/firebase/perf/j/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public N(Ljava/util/Map;)Lcom/google/firebase/perf/j/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/j/m$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0}, Lcom/google/firebase/perf/j/m;->b0(Lcom/google/firebase/perf/j/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public O(Ljava/lang/String;J)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0}, Lcom/google/firebase/perf/j/m;->Y(Lcom/google/firebase/perf/j/m;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public P(J)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/m;->e0(Lcom/google/firebase/perf/j/m;J)V

    return-object p0
.end method

.method public Q(J)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/m;->f0(Lcom/google/firebase/perf/j/m;J)V

    return-object p0
.end method

.method public R(Ljava/lang/String;)Lcom/google/firebase/perf/j/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/m;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/m;->X(Lcom/google/firebase/perf/j/m;Ljava/lang/String;)V

    return-object p0
.end method
