.class final Lg/g/b/a/j/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/k;->f(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)Li/c/b0/b/e;
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
        "Ljava/util/List<",
        "+",
        "Lg/g/a/a/i/k/d;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/k;


# direct methods
.method constructor <init>(Lg/g/b/a/j/k;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/k$b;->f:Lg/g/b/a/j/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/k/d;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/k$b;->f:Lg/g/b/a/j/k;

    invoke-static {v0}, Lg/g/b/a/j/k;->e(Lg/g/b/a/j/k;)Lcom/hiya/client/callerid/dao/y;

    move-result-object v0

    const-string v1, "events"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/dao/y;->a(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/a/j/k$b$a;

    invoke-direct {v1, p0, p1}, Lg/g/b/a/j/k$b$a;-><init>(Lg/g/b/a/j/k$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->B(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/k$b;->a(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
