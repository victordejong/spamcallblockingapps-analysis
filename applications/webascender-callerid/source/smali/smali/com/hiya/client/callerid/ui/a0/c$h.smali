.class final Lcom/hiya/client/callerid/ui/a0/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


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
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/client/callerid/ui/a0/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/c;

.field final synthetic g:Lcom/hiya/client/callerid/ui/a0/c$b;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->f:Lcom/hiya/client/callerid/ui/a0/c;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->g:Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/a0/c$c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->f:Lcom/hiya/client/callerid/ui/a0/c;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->g:Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$c;->a()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/client/callerid/ui/a0/c;->i(Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->f:Lcom/hiya/client/callerid/ui/a0/c;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c$h;->g:Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$c;->a()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/hiya/client/callerid/ui/a0/c;->g(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$c;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c$h;->a(Lcom/hiya/client/callerid/ui/a0/c$c;)V

    return-void
.end method
