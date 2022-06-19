.class final Lcom/hiya/client/callerid/ui/a0/c$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/c$g;->a(Ljava/lang/Boolean;)Li/c/b0/b/e0;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/c$g;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$g$a;->f:Lcom/hiya/client/callerid/ui/a0/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/a0/c$c;
    .locals 6

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c$c;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c$g$a;->f:Lcom/hiya/client/callerid/ui/a0/c$g;

    iget-object v1, v1, Lcom/hiya/client/callerid/ui/a0/c$g;->i:Lg/g/b/c/k;

    sget-object v2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c$g$a;->f:Lcom/hiya/client/callerid/ui/a0/c$g;

    iget-object v2, v2, Lcom/hiya/client/callerid/ui/a0/c$g;->h:Lcom/hiya/client/callerid/ui/b0/j;

    const-string v5, "callerId"

    .line 5
    invoke-static {p1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v2, p1}, Lcom/hiya/client/callerid/ui/a;->b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-direct {v0, v3, p1}, Lcom/hiya/client/callerid/ui/a0/c$c;-><init>(ZLcom/hiya/client/callerid/ui/b0/e;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c$g$a;->a(Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/a0/c$c;

    move-result-object p1

    return-object p1
.end method
