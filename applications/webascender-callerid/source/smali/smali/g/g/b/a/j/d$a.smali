.class final Lg/g/b/a/j/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/d;->a(Lg/g/b/c/j;ZZ)Li/c/b0/b/e0;
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
        "Li/c/b0/b/i0<",
        "+",
        "Lg/g/b/c/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/d;

.field final synthetic g:Lg/g/b/c/j;


# direct methods
.method constructor <init>(Lg/g/b/a/j/d;ZLg/g/b/c/j;Z)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/d$a;->f:Lg/g/b/a/j/d;

    iput-object p3, p0, Lg/g/b/a/j/d$a;->g:Lg/g/b/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lg/g/b/a/j/d$a;->f:Lg/g/b/a/j/d;

    invoke-static {p1}, Lg/g/b/a/j/d;->c(Lg/g/b/a/j/d;)Lcom/hiya/client/callerid/dao/c;

    move-result-object p1

    iget-object v0, p0, Lg/g/b/a/j/d$a;->g:Lg/g/b/c/j;

    invoke-virtual {v0}, Lg/g/b/c/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/client/callerid/dao/c;->e(Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/d$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
