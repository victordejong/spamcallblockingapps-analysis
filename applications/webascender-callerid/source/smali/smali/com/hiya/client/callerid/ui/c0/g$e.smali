.class final Lcom/hiya/client/callerid/ui/c0/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/c0/g;->r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/c0/g$e;->f:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/c0/g$e;->f:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/c0/g$e;->f:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-interface {v1, v3, v0}, Lcom/hiya/client/callerid/ui/a;->a(Lcom/hiya/client/callerid/ui/b0/j;Z)Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/c0/g$e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
