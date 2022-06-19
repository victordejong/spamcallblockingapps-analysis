.class final Lcom/hiya/client/callerid/ui/incallui/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V
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
        "Lcom/hiya/client/callerid/ui/a0/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/l;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/l$a;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/l$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/l$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/l$a;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->g(Lcom/hiya/client/callerid/ui/incallui/l;Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/l$a;->a(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method
