.class final Lcom/hiya/client/callerid/ui/a0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/d;->d(Lcom/hiya/client/callerid/ui/b0/j;Z)Li/c/b0/b/v;
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
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/d;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic h:Z


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->f:Lcom/hiya/client/callerid/ui/a0/d;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->g:Lcom/hiya/client/callerid/ui/b0/j;

    iput-boolean p3, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/hiya/client/callerid/ui/b0/f;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->f:Lcom/hiya/client/callerid/ui/a0/d;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/d;->c(Lcom/hiya/client/callerid/ui/a0/d;)Lg/g/b/a/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->h:Z

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lg/g/b/a/b;->j(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/p;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/d$a$a;->f:Lcom/hiya/client/callerid/ui/a0/d$a$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->f:Lcom/hiya/client/callerid/ui/a0/d;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/d;->a(Lcom/hiya/client/callerid/ui/a0/d;)Lcom/hiya/client/callerid/ui/overlay/g/e;

    move-result-object v0

    const-string v1, "contacts"

    .line 9
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->I(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/f;

    .line 10
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/d$a;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/hiya/client/callerid/ui/overlay/g/e;->b(Lcom/hiya/client/callerid/ui/b0/f;Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object p1

    .line 12
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/d$a$b;->f:Lcom/hiya/client/callerid/ui/a0/d$a$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/d$a;->a(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
