.class final Lg/g/b/a/j/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/k$b;->a(Ljava/util/List;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/k$b;

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Lg/g/b/a/j/k$b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/k$b$a;->f:Lg/g/b/a/j/k$b;

    iput-object p2, p0, Lg/g/b/a/j/k$b$a;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object p1, p0, Lg/g/b/a/j/k$b$a;->f:Lg/g/b/a/j/k$b;

    iget-object p1, p1, Lg/g/b/a/j/k$b;->f:Lg/g/b/a/j/k;

    invoke-static {p1}, Lg/g/b/a/j/k;->d(Lg/g/b/a/j/k;)Lh/a;

    move-result-object p1

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/b/d/g/a;

    iget-object v0, p0, Lg/g/b/a/j/k$b$a;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/i/k/d;

    invoke-virtual {p1, v0}, Lg/g/b/d/g/a;->c(Lg/g/a/a/i/k/d;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/k$b$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
