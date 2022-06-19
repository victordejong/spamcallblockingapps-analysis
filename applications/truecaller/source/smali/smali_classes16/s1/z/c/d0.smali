.class public Ls1/z/c/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/z/c/e0;

.field public static final b:[Ls1/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "s1.a.a.a.n0"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/z/c/e0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ls1/z/c/e0;

    invoke-direct {v0}, Ls1/z/c/e0;-><init>()V

    :goto_1
    sput-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    const/4 v0, 0x0

    new-array v0, v0, [Ls1/a/c;

    .line 4
    sput-object v0, Ls1/z/c/d0;->b:[Ls1/a/c;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ls1/a/c;
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    invoke-virtual {v0, p0}, Ls1/z/c/e0;->b(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ls1/z/c/p;)Ls1/a/h;
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    invoke-virtual {v0, p0}, Ls1/z/c/e0;->e(Ls1/z/c/p;)Ls1/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ls1/z/c/t;)Ls1/a/j;
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    invoke-virtual {v0, p0}, Ls1/z/c/e0;->f(Ls1/z/c/t;)Ls1/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ls1/z/c/v;)Ls1/a/k;
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    invoke-virtual {v0, p0}, Ls1/z/c/e0;->g(Ls1/z/c/v;)Ls1/a/k;

    move-result-object p0

    return-object p0
.end method
