.class final Lcom/hiya/client/callerid/ui/a0/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/c;->I(Landroid/telecom/Call;)V
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
        "Li/c/b0/b/i0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/c;

.field final synthetic g:Landroid/telecom/Call;

.field final synthetic h:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic i:Lg/g/b/c/k;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/c;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->f:Lcom/hiya/client/callerid/ui/a0/c;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->g:Landroid/telecom/Call;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->h:Lcom/hiya/client/callerid/ui/b0/j;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->i:Lg/g/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Li/c/b0/b/e0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Li/c/b0/b/e0<",
            "Lcom/hiya/client/callerid/ui/a0/c$c;",
            ">;"
        }
    .end annotation

    const-string v0, "shouldBlock"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/c$c;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/hiya/client/callerid/ui/a0/c$c;-><init>(ZLcom/hiya/client/callerid/ui/b0/e;)V

    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->g:Landroid/telecom/Call;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/a;->e(Landroid/telecom/Call;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-object p1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 5
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->i:Lg/g/b/c/k;

    .line 6
    invoke-interface {p1, v2, v3}, Lcom/hiya/client/callerid/ui/d;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->f:Lcom/hiya/client/callerid/ui/a0/c;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/c;->c(Lcom/hiya/client/callerid/ui/a0/c;)Lcom/hiya/client/callerid/ui/a0/d;

    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 9
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->i:Lg/g/b/c/k;

    .line 10
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->g:Landroid/telecom/Call;

    invoke-static {v4}, Lcom/hiya/client/callerid/ui/e0/a;->d(Landroid/telecom/Call;)Lg/g/b/c/t;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/a0/c$g;->f:Lcom/hiya/client/callerid/ui/a0/c;

    invoke-static {v5}, Lcom/hiya/client/callerid/ui/a0/c;->d(Lcom/hiya/client/callerid/ui/a0/c;)Lcom/hiya/client/callerid/ui/a0/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hiya/client/callerid/ui/a0/k;->b()Z

    move-result v5

    .line 12
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/hiya/client/callerid/ui/a0/d;->f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;

    move-result-object p1

    .line 13
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {p1, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 14
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {p1, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 15
    new-instance v2, Lcom/hiya/client/callerid/ui/a0/c$g$a;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/a0/c$g$a;-><init>(Lcom/hiya/client/callerid/ui/a0/c$g;)V

    invoke-virtual {p1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 16
    new-instance v2, Lcom/hiya/client/callerid/ui/a0/c$c;

    invoke-direct {v2, v1, v0}, Lcom/hiya/client/callerid/ui/a0/c$c;-><init>(ZLcom/hiya/client/callerid/ui/b0/e;)V

    invoke-virtual {p1, v2}, Li/c/b0/b/v;->single(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/c$c;

    invoke-direct {p1, v1, v0}, Lcom/hiya/client/callerid/ui/a0/c$c;-><init>(ZLcom/hiya/client/callerid/ui/b0/e;)V

    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c$g;->a(Ljava/lang/Boolean;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
