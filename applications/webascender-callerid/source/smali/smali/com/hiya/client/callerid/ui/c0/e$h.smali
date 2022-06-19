.class final Lcom/hiya/client/callerid/ui/c0/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/e;->k(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/a/e/e/n;JZLg/g/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/client/callerid/ui/b0/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/c0/e;

.field final synthetic g:Lkotlin/w/c/n;

.field final synthetic h:Lg/g/d/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/c0/e;Lkotlin/w/c/n;Lg/g/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->f:Lcom/hiya/client/callerid/ui/c0/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->g:Lkotlin/w/c/n;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->h:Lg/g/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->g:Lkotlin/w/c/n;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/w/c/n;->f:Z

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->f:Lcom/hiya/client/callerid/ui/c0/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/c0/e;->h(Lcom/hiya/client/callerid/ui/c0/e;Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->h:Lg/g/d/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lg/g/d/e;->g(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->h:Lg/g/d/e;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/c0/e$h;->f:Lcom/hiya/client/callerid/ui/c0/e;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/c0/e;->f(Lcom/hiya/client/callerid/ui/c0/e;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/hiya/client/callerid/ui/e0/e;->b(Lg/g/d/e;ZLg/g/b/c/f;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/c0/e$h;->a(Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void
.end method
