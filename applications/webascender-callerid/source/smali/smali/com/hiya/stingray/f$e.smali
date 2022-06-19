.class final Lcom/hiya/stingray/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
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
.field final synthetic f:Lcom/hiya/stingray/f;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic h:Lg/g/b/c/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$e;->f:Lcom/hiya/stingray/f;

    iput-object p2, p0, Lcom/hiya/stingray/f$e;->g:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p3, p0, Lcom/hiya/stingray/f$e;->h:Lg/g/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/f$b;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/f$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f$e;->f:Lcom/hiya/stingray/f;

    invoke-static {v0}, Lcom/hiya/stingray/f;->d(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/w1;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/f$e;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/hiya/stingray/f$e;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v5}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/f$b;->d()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/f$b;->c()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    iget-object v8, p0, Lcom/hiya/stingray/f$e;->h:Lg/g/b/c/k;

    .line 8
    invoke-virtual/range {v1 .. v8}, Lcom/hiya/stingray/manager/w1;->c(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/hiya/stingray/f$e$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/f$e$a;-><init>(Lcom/hiya/stingray/f$b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/f$e$b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/f$e$b;-><init>(Lcom/hiya/stingray/f$b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/f$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$e;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
