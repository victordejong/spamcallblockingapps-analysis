.class public Lg/g/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/a/b/j1/c;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    .line 3
    iput-object p1, p0, Lg/g/a/b/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method b()Lg/g/a/a/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/a;

    invoke-direct {v0}, Lg/g/a/a/a;-><init>()V

    return-object v0
.end method

.method c(Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)Lg/g/a/b/j1/e;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/b/j1/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/g/a/b/j1/e;-><init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)V

    return-object v0
.end method

.method d(Lg/g/a/a/a;)Lg/g/a/b/j1/g;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/a;->a()Lg/g/a/b/j1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/g/a/a/a;->a()Lg/g/a/b/j1/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    .line 2
    invoke-interface {p1}, Lg/g/a/b/j1/c;->g()Lg/g/a/b/j1/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method e()Lg/g/a/b/j1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->c()Lg/g/a/b/j1/a;

    move-result-object v0

    return-object v0
.end method

.method f()Lg/g/a/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->d()Lg/g/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method g()Lg/g/a/b/j1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->b()Lg/g/a/b/j1/i;

    move-result-object v0

    return-object v0
.end method

.method h()Lg/g/a/b/j1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->e()Lg/g/a/b/j1/j;

    move-result-object v0

    return-object v0
.end method

.method i(Lg/g/a/a/a;)Lg/g/a/b/j1/k;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/a;->b()Lg/g/a/b/j1/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/g/a/a/a;->b()Lg/g/a/b/j1/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    .line 2
    invoke-interface {p1}, Lg/g/a/b/j1/c;->f()Lg/g/a/b/j1/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j(Lg/g/a/a/a;)Lg/g/a/b/j1/m;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/a;->c()Lg/g/a/b/j1/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/g/a/a/a;->c()Lg/g/a/b/j1/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/g/a/b/a;->a:Lg/g/a/b/j1/c;

    .line 2
    invoke-interface {p1}, Lg/g/a/b/j1/c;->a()Lg/g/a/b/j1/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method
