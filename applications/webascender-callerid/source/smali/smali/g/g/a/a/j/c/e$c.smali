.class public final Lg/g/a/a/j/c/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/j/c/e;->b()Lg/g/a/b/j1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/g/a/a/j/c/e;


# direct methods
.method constructor <init>(Lg/g/a/a/j/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/j/c/e$c;->a:Lg/g/a/a/j/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$c;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->e()Lg/g/a/a/j/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$c;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->e()Lg/g/a/a/j/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->b(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$c;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->e()Lg/g/a/a/j/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->c(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/h;->a(Lg/g/a/b/j1/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
