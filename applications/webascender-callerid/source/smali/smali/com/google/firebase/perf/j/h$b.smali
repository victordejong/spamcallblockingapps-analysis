.class public final Lcom/google/firebase/perf/j/h$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/h;",
        "Lcom/google/firebase/perf/j/h$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/h;->W()Lcom/google/firebase/perf/j/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Iterable;)Lcom/google/firebase/perf/j/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/j/k;",
            ">;)",
            "Lcom/google/firebase/perf/j/h$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->g0(Lcom/google/firebase/perf/j/h;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public H()Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0}, Lcom/google/firebase/perf/j/h;->b0(Lcom/google/firebase/perf/j/h;)V

    return-object p0
.end method

.method public I()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/h;->x0()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/h;->z0()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/h;->B0()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/h;->F0()Z

    move-result v0

    return v0
.end method

.method public O(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->c0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public P(Lcom/google/firebase/perf/j/h$d;)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->h0(Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/h$d;)V

    return-object p0
.end method

.method public Q(I)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->Z(Lcom/google/firebase/perf/j/h;I)V

    return-object p0
.end method

.method public R(Lcom/google/firebase/perf/j/h$e;)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->Y(Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/h$e;)V

    return-object p0
.end method

.method public S(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->i0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public T(Ljava/lang/String;)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->a0(Lcom/google/firebase/perf/j/h;Ljava/lang/String;)V

    return-object p0
.end method

.method public U(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->j0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public V(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->d0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public W(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->f0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public X(J)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/h;->e0(Lcom/google/firebase/perf/j/h;J)V

    return-object p0
.end method

.method public Y(Ljava/lang/String;)Lcom/google/firebase/perf/j/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/h;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/h;->X(Lcom/google/firebase/perf/j/h;Ljava/lang/String;)V

    return-object p0
.end method
