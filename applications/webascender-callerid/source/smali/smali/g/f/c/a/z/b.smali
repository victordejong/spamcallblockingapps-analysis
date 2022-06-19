.class public final Lg/f/c/a/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/f/c/a/f0/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lg/f/c/a/z/b;->c(I)Lg/f/c/a/f0/u0;

    const/16 v1, 0x20

    .line 2
    invoke-static {v1}, Lg/f/c/a/z/b;->c(I)Lg/f/c/a/f0/u0;

    move-result-object v2

    sput-object v2, Lg/f/c/a/z/b;->a:Lg/f/c/a/f0/u0;

    .line 3
    invoke-static {v0, v0}, Lg/f/c/a/z/b;->b(II)Lg/f/c/a/f0/u0;

    .line 4
    invoke-static {v1, v0}, Lg/f/c/a/z/b;->b(II)Lg/f/c/a/f0/u0;

    .line 5
    sget-object v2, Lg/f/c/a/f0/o0;->SHA256:Lg/f/c/a/f0/o0;

    .line 6
    invoke-static {v0, v0, v1, v0, v2}, Lg/f/c/a/z/b;->a(IIIILg/f/c/a/f0/o0;)Lg/f/c/a/f0/u0;

    .line 7
    invoke-static {v1, v0, v1, v1, v2}, Lg/f/c/a/z/b;->a(IIIILg/f/c/a/f0/o0;)Lg/f/c/a/f0/u0;

    .line 8
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object v0

    new-instance v1, Lg/f/c/a/z/h;

    invoke-direct {v1}, Lg/f/c/a/z/h;-><init>()V

    .line 9
    invoke-virtual {v1}, Lg/f/c/a/z/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    sget-object v1, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 10
    invoke-virtual {v0, v1}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/u0;

    .line 12
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object v0

    new-instance v2, Lg/f/c/a/z/l;

    invoke-direct {v2}, Lg/f/c/a/z/l;-><init>()V

    .line 13
    invoke-virtual {v2}, Lg/f/c/a/z/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    .line 14
    invoke-virtual {v0, v1}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/u0;

    return-void
.end method

.method public static a(IIIILg/f/c/a/f0/o0;)Lg/f/c/a/f0/u0;
    .locals 2

    .line 1
    invoke-static {}, Lg/f/c/a/f0/j;->c0()Lg/f/c/a/f0/j$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lg/f/c/a/f0/k;->a0()Lg/f/c/a/f0/k$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg/f/c/a/f0/k$b;->G(I)Lg/f/c/a/f0/k$b;

    invoke-virtual {v1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/k;

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/j$b;->H(Lg/f/c/a/f0/k;)Lg/f/c/a/f0/j$b;

    .line 3
    invoke-virtual {v0, p0}, Lg/f/c/a/f0/j$b;->G(I)Lg/f/c/a/f0/j$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/j;

    .line 5
    invoke-static {}, Lg/f/c/a/f0/q0;->c0()Lg/f/c/a/f0/q0$b;

    move-result-object p1

    .line 6
    invoke-static {}, Lg/f/c/a/f0/r0;->c0()Lg/f/c/a/f0/r0$b;

    move-result-object v0

    invoke-virtual {v0, p4}, Lg/f/c/a/f0/r0$b;->G(Lg/f/c/a/f0/o0;)Lg/f/c/a/f0/r0$b;

    invoke-virtual {v0, p3}, Lg/f/c/a/f0/r0$b;->H(I)Lg/f/c/a/f0/r0$b;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p3

    check-cast p3, Lg/f/c/a/f0/r0;

    .line 7
    invoke-virtual {p1, p3}, Lg/f/c/a/f0/q0$b;->H(Lg/f/c/a/f0/r0;)Lg/f/c/a/f0/q0$b;

    .line 8
    invoke-virtual {p1, p2}, Lg/f/c/a/f0/q0$b;->G(I)Lg/f/c/a/f0/q0$b;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/q0;

    .line 10
    invoke-static {}, Lg/f/c/a/f0/e;->b0()Lg/f/c/a/f0/e$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lg/f/c/a/f0/e$b;->G(Lg/f/c/a/f0/j;)Lg/f/c/a/f0/e$b;

    .line 12
    invoke-virtual {p2, p1}, Lg/f/c/a/f0/e$b;->H(Lg/f/c/a/f0/q0;)Lg/f/c/a/f0/e$b;

    .line 13
    invoke-virtual {p2}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/e;

    .line 14
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/a;->i()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u0$b;

    new-instance p0, Lg/f/c/a/z/d;

    invoke-direct {p0}, Lg/f/c/a/z/d;-><init>()V

    .line 16
    invoke-virtual {p0}, Lg/f/c/a/z/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    sget-object p0, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 17
    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/u0;

    return-object p0
.end method

.method public static b(II)Lg/f/c/a/f0/u0;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/c/a/f0/m;->b0()Lg/f/c/a/f0/m$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lg/f/c/a/f0/m$b;->G(I)Lg/f/c/a/f0/m$b;

    .line 3
    invoke-static {}, Lg/f/c/a/f0/n;->a0()Lg/f/c/a/f0/n$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg/f/c/a/f0/n$b;->G(I)Lg/f/c/a/f0/n$b;

    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/n;

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/m$b;->H(Lg/f/c/a/f0/n;)Lg/f/c/a/f0/m$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/m;

    .line 5
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/a;->i()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u0$b;

    new-instance p0, Lg/f/c/a/z/f;

    invoke-direct {p0}, Lg/f/c/a/z/f;-><init>()V

    .line 7
    invoke-virtual {p0}, Lg/f/c/a/z/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    sget-object p0, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 8
    invoke-virtual {p1, p0}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/u0;

    return-object p0
.end method

.method public static c(I)Lg/f/c/a/f0/u0;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/c/a/f0/s;->Z()Lg/f/c/a/f0/s$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lg/f/c/a/f0/s$b;->G(I)Lg/f/c/a/f0/s$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/s;

    .line 4
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/a;->i()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u0$b;

    new-instance p0, Lg/f/c/a/z/g;

    invoke-direct {p0}, Lg/f/c/a/z/g;-><init>()V

    .line 6
    invoke-virtual {p0}, Lg/f/c/a/z/g;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    sget-object p0, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 7
    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/u0;

    return-object p0
.end method
