.class public final Lg/g/a/a/j/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/c;


# instance fields
.field private final a:Lg/g/a/a/j/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/g/a/a/j/c/d;

    invoke-direct {v0, p1}, Lg/g/a/a/j/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/g/a/a/j/c/e;->a:Lg/g/a/a/j/c/d;

    return-void
.end method

.method public static final synthetic h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/j/c/e;->a:Lg/g/a/a/j/c/d;

    return-object p0
.end method


# virtual methods
.method public a()Lg/g/a/b/j1/m;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/j/c/e$e;

    invoke-direct {v0, p0}, Lg/g/a/a/j/c/e$e;-><init>(Lg/g/a/a/j/c/e;)V

    return-object v0
.end method

.method public b()Lg/g/a/b/j1/i;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/j/c/e$c;

    invoke-direct {v0, p0}, Lg/g/a/a/j/c/e$c;-><init>(Lg/g/a/a/j/c/e;)V

    return-object v0
.end method

.method public c()Lg/g/a/b/j1/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/j/c/e$a;

    invoke-direct {v0, p0}, Lg/g/a/a/j/c/e$a;-><init>(Lg/g/a/a/j/c/e;)V

    return-object v0
.end method

.method public synthetic d()Lg/g/a/a/f;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/b;->a(Lg/g/a/b/j1/c;)Lg/g/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lg/g/a/b/j1/j;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/b;->b(Lg/g/a/b/j1/c;)Lg/g/a/b/j1/j;

    move-result-object v0

    return-object v0
.end method

.method public f()Lg/g/a/b/j1/k;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/j/c/e$d;

    invoke-direct {v0}, Lg/g/a/a/j/c/e$d;-><init>()V

    return-object v0
.end method

.method public g()Lg/g/a/b/j1/g;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/j/c/e$b;

    invoke-direct {v0, p0}, Lg/g/a/a/j/c/e$b;-><init>(Lg/g/a/a/j/c/e;)V

    return-object v0
.end method
