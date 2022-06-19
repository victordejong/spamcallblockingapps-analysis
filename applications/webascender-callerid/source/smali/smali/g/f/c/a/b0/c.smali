.class public final Lg/f/c/a/b0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/f/c/a/f0/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-static {v0}, Lg/f/c/a/b0/c;->a(I)Lg/f/c/a/f0/u0;

    move-result-object v0

    sput-object v0, Lg/f/c/a/b0/c;->a:Lg/f/c/a/f0/u0;

    return-void
.end method

.method public static a(I)Lg/f/c/a/f0/u0;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/c/a/f0/u;->Z()Lg/f/c/a/f0/u$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u$b;->G(I)Lg/f/c/a/f0/u$b;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/u;

    .line 2
    invoke-static {}, Lg/f/c/a/f0/u0;->e0()Lg/f/c/a/f0/u0$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/a;->i()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u0$b;

    new-instance p0, Lg/f/c/a/b0/a;

    invoke-direct {p0}, Lg/f/c/a/b0/a;-><init>()V

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/b0/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->H(Ljava/lang/String;)Lg/f/c/a/f0/u0$b;

    sget-object p0, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 5
    invoke-virtual {v0, p0}, Lg/f/c/a/f0/u0$b;->G(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/u0$b;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/u0;

    return-object p0
.end method
