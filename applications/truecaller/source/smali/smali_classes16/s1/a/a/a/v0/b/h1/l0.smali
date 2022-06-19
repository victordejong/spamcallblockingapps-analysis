.class public final Ls1/a/a/a/v0/b/h1/l0;
.super Ls1/a/a/a/v0/b/h1/r;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/h1/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/h1/l0$a;
    }
.end annotation


# static fields
.field public static final synthetic K:[Ls1/a/l;

.field public static final L:Ls1/a/a/a/v0/b/h1/l0$a;


# instance fields
.field public D:Ls1/a/a/a/v0/b/d;

.field public final E:Ls1/a/a/a/v0/l/m;

.field public final J:Ls1/a/a/a/v0/b/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/b/h1/l0;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/b/h1/l0;->K:[Ls1/a/l;

    new-instance v0, Ls1/a/a/a/v0/b/h1/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/h1/l0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/b/h1/l0;->L:Ls1/a/a/a/v0/b/h1/l0$a;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/d;Ls1/a/a/a/v0/b/h1/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V
    .locals 8

    const-string v0, "<init>"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->h(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/b/h1/r;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/l0;->E:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 2
    invoke-interface {p2}, Ls1/a/a/a/v0/b/x;->p0()Z

    move-result p2

    .line 3
    iput-boolean p2, p0, Ls1/a/a/a/v0/b/h1/r;->r:Z

    .line 4
    new-instance p2, Ls1/a/a/a/v0/b/h1/l0$b;

    invoke-direct {p2, p0, p3}, Ls1/a/a/a/v0/b/h1/l0$b;-><init>(Ls1/a/a/a/v0/b/h1/l0;Ls1/a/a/a/v0/b/d;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;

    .line 5
    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    return-void
.end method


# virtual methods
.method public G()Ls1/a/a/a/v0/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    return-object v0
.end method

.method public N()Ls1/a/a/a/v0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/j;->N()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const-string v1, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public N0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/v;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/r;
    .locals 8

    const-string p2, "newOwner"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    .line 3
    new-instance p1, Ls1/a/a/a/v0/b/h1/l0;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/l0;->E:Ls1/a/a/a/v0/l/m;

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    .line 6
    iget-object v3, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p5

    move-object v7, p6

    .line 7
    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/b/h1/l0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/v0;Ls1/a/a/a/v0/b/d;Ls1/a/a/a/v0/b/h1/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    return-object p1
.end method

.method public W0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/h1/k0;
    .locals 1

    const-string v0, "newOwner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/r;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/a/a/a/v0/b/h1/r$c;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/h1/r$c;->o(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/v$a;

    .line 3
    invoke-interface {v0, p2}, Ls1/a/a/a/v0/b/v$a;->n(Ls1/a/a/a/v0/b/y;)Ls1/a/a/a/v0/b/v$a;

    .line 4
    invoke-interface {v0, p3}, Ls1/a/a/a/v0/b/v$a;->m(Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/v$a;

    .line 5
    invoke-interface {v0, p4}, Ls1/a/a/a/v0/b/v$a;->p(Ls1/a/a/a/v0/b/b$a;)Ls1/a/a/a/v0/b/v$a;

    .line 6
    invoke-interface {v0, p5}, Ls1/a/a/a/v0/b/v$a;->h(Z)Ls1/a/a/a/v0/b/v$a;

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/b/h1/k0;

    return-object p1
.end method

.method public X0()Ls1/a/a/a/v0/b/h1/k0;
    .locals 2

    .line 1
    invoke-super {p0}, Ls1/a/a/a/v0/b/h1/r;->a()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/b/h1/k0;

    return-object v0
.end method

.method public Y0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/h1/k0;
    .locals 2

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ls1/a/a/a/v0/b/h1/r;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/v;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/b/h1/l0;

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/b/h1/r;->g:Ls1/a/a/a/v0/m/e0;

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/m/d1;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    const-string v1, "TypeSubstitutor.create(s\u2026asConstructor.returnType)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    .line 6
    invoke-interface {v1}, Ls1/a/a/a/v0/b/d;->a()Ls1/a/a/a/v0/b/d;

    move-result-object v1

    invoke-interface {v1, v0}, Ls1/a/a/a/v0/b/d;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iput-object v0, p1, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/l0;->X0()Ls1/a/a/a/v0/b/h1/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/l0;->X0()Ls1/a/a/a/v0/b/h1/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/l0;->X0()Ls1/a/a/a/v0/b/h1/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/v;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/l0;->X0()Ls1/a/a/a/v0/b/h1/k0;

    move-result-object v0

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0;->J:Ls1/a/a/a/v0/b/v0;

    return-object v0
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/l0;->Y0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/h1/k0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/l0;->Y0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/h1/k0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/v;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/b/h1/l0;->Y0(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/h1/k0;

    move-result-object p1

    return-object p1
.end method

.method public g()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/r;->g:Ls1/a/a/a/v0/m/e0;

    .line 2
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic m0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/b;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ls1/a/a/a/v0/b/h1/l0;->W0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/h1/k0;

    move-result-object p1

    return-object p1
.end method

.method public s0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/l0;->D:Ls1/a/a/a/v0/b/d;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/j;->s0()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic v0()Ls1/a/a/a/v0/b/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/l0;->X0()Ls1/a/a/a/v0/b/h1/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/v;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ls1/a/a/a/v0/b/h1/l0;->W0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ls1/a/a/a/v0/b/b$a;Z)Ls1/a/a/a/v0/b/h1/k0;

    move-result-object p1

    return-object p1
.end method
