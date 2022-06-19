.class final Lcom/hiya/client/callerid/ui/a0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/d;->f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;
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

.field final synthetic g:Lg/g/b/c/k;

.field final synthetic h:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic i:Lg/g/b/c/t;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/d;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/t;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->f:Lcom/hiya/client/callerid/ui/a0/d;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->g:Lg/g/b/c/k;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->h:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->i:Lg/g/b/c/t;

    iput-boolean p5, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Li/c/b0/b/v;
    .locals 10
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
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->f:Lcom/hiya/client/callerid/ui/a0/d;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/d;->c(Lcom/hiya/client/callerid/ui/a0/d;)Lg/g/b/a/b;

    move-result-object p1

    .line 3
    new-instance v9, Lg/g/b/c/j;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    .line 5
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->g:Lg/g/b/c/k;

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->b()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 9
    iget-object v8, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->i:Lg/g/b/c/t;

    move-object v0, v9

    .line 10
    invoke-direct/range {v0 .. v8}, Lg/g/b/c/j;-><init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)V

    const/4 v0, 0x0

    .line 11
    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->j:Z

    .line 12
    invoke-virtual {p1, v9, v0, v1}, Lg/g/b/a/b;->k(Lg/g/b/c/j;ZZ)Li/c/b0/b/e0;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/d$b$a;->f:Lcom/hiya/client/callerid/ui/a0/d$b$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->f:Lcom/hiya/client/callerid/ui/a0/d;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/d;->a(Lcom/hiya/client/callerid/ui/a0/d;)Lcom/hiya/client/callerid/ui/overlay/g/e;

    move-result-object v0

    const-string v1, "contacts"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->I(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/f;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/d$b;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hiya/client/callerid/ui/overlay/g/e;->b(Lcom/hiya/client/callerid/ui/b0/f;Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/d$b$b;->f:Lcom/hiya/client/callerid/ui/a0/d$b$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/d$b;->a(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
