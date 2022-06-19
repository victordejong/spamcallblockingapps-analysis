.class public Ls1/z/c/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/z/c/i;)Ls1/a/f;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ls1/a/c;
    .locals 1

    .line 1
    new-instance v0, Ls1/z/c/d;

    invoke-direct {v0, p1}, Ls1/z/c/d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Ls1/a/e;
    .locals 1

    .line 1
    new-instance v0, Ls1/z/c/s;

    invoke-direct {v0, p1, p2}, Ls1/z/c/s;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ls1/z/c/n;)Ls1/a/g;
    .locals 0

    return-object p1
.end method

.method public e(Ls1/z/c/p;)Ls1/a/h;
    .locals 0

    return-object p1
.end method

.method public f(Ls1/z/c/t;)Ls1/a/j;
    .locals 0

    return-object p1
.end method

.method public g(Ls1/z/c/v;)Ls1/a/k;
    .locals 0

    return-object p1
.end method

.method public h(Ls1/z/c/h;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public i(Ls1/z/c/m;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/z/c/e0;->h(Ls1/z/c/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
