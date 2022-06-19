.class public final Ls1/a/a/a/v0/d/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/j/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/j/h$a;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/h$a;->c:Ls1/a/a/a/v0/j/h$a;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/j/h$b;
    .locals 2

    sget-object p3, Ls1/a/a/a/v0/j/h$b;->d:Ls1/a/a/a/v0/j/h$b;

    const-string v0, "superDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Ls1/a/a/a/v0/b/k0;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ls1/a/a/a/v0/b/k0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p2, Ls1/a/a/a/v0/b/k0;

    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    check-cast p1, Ls1/a/a/a/v0/b/k0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-object p3

    .line 3
    :cond_1
    invoke-static {p2}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ls1/a/a/a/v0/j/h$b;->a:Ls1/a/a/a/v0/j/h$b;

    return-object p1

    .line 4
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p3

    :cond_4
    :goto_0
    sget-object p1, Ls1/a/a/a/v0/j/h$b;->c:Ls1/a/a/a/v0/j/h$b;

    return-object p1

    :cond_5
    :goto_1
    return-object p3
.end method
