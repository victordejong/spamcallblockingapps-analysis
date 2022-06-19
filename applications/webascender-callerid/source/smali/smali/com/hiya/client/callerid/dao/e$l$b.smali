.class final Lcom/hiya/client/callerid/dao/e$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e$l;->a(Ljava/lang/String;)Li/c/b0/b/e0;
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
        "Lg/g/b/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/e$l;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e$l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$l$b;->f:Lcom/hiya/client/callerid/dao/e$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$l$b;->f:Lcom/hiya/client/callerid/dao/e$l;

    iget-object v0, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->o(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$l$b;->f:Lcom/hiya/client/callerid/dao/e$l;

    iget-object v0, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/g/b/b/d/c;->h(Lg/g/b/c/f;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$l$b;->a(Lg/g/b/c/f;)V

    return-void
.end method
