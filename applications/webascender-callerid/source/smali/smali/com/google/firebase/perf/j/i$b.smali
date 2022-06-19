.class public final Lcom/google/firebase/perf/j/i$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/j/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/i;",
        "Lcom/google/firebase/perf/j/i$b;",
        ">;",
        "Lcom/google/firebase/perf/j/j;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/i;->W()Lcom/google/firebase/perf/j/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/firebase/perf/j/c$b;)Lcom/google/firebase/perf/j/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/j/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/i;->X(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/c;)V

    return-object p0
.end method

.method public H(Lcom/google/firebase/perf/j/g;)Lcom/google/firebase/perf/j/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/i;->Y(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/g;)V

    return-object p0
.end method

.method public I(Lcom/google/firebase/perf/j/h;)Lcom/google/firebase/perf/j/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/i;->a0(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/h;)V

    return-object p0
.end method

.method public J(Lcom/google/firebase/perf/j/m;)Lcom/google/firebase/perf/j/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/i;->Z(Lcom/google/firebase/perf/j/i;Lcom/google/firebase/perf/j/m;)V

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->a()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->g()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/google/firebase/perf/j/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->h()Lcom/google/firebase/perf/j/m;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->k()Z

    move-result v0

    return v0
.end method

.method public l()Lcom/google/firebase/perf/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->l()Lcom/google/firebase/perf/j/h;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/firebase/perf/j/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/i;->n()Lcom/google/firebase/perf/j/g;

    move-result-object v0

    return-object v0
.end method
