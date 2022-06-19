.class public Lg/g/a/b/r;
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
.method a(Lretrofit2/Retrofit;)Lg/g/a/a/g/h/a;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/h/a;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/h/a;

    return-object p1
.end method

.method b(Lg/g/a/d/a;Lg/g/a/a/g/h/a;Lg/g/a/b/j1/e;Lg/g/a/b/j1/k;Lg/g/a/b/j1/a;Landroid/content/Context;Lg/g/a/a/l/b;Lg/g/a/a/f;)Lg/g/a/a/h/a;
    .locals 10

    .line 1
    new-instance v9, Lg/g/a/a/h/b;

    move-object v0, v9

    move-object/from16 v1, p6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lg/g/a/a/h/b;-><init>(Landroid/content/Context;Lg/g/a/a/g/h/a;Lg/g/a/b/j1/e;Lg/g/a/d/a;Lg/g/a/b/j1/k;Lg/g/a/b/j1/a;Lg/g/a/a/l/b;Lg/g/a/a/f;)V

    return-object v9
.end method

.method c(Lretrofit2/Retrofit;)Lg/g/a/a/g/c;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/c;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/c;

    return-object p1
.end method

.method d(Lretrofit2/Retrofit;)Lg/g/a/a/g/h/b;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/h/b;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/h/b;

    return-object p1
.end method

.method e(Lretrofit2/Retrofit;)Lg/g/a/a/g/b;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/b;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/b;

    return-object p1
.end method

.method f(Lretrofit2/Retrofit;)Lg/g/a/a/g/h/c;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/g/h/c;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/a/g/h/c;

    return-object p1
.end method
