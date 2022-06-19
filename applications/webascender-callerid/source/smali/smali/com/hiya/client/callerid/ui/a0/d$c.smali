.class final Lcom/hiya/client/callerid/ui/a0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/d;->g(Lcom/hiya/client/callerid/ui/b0/j;)Li/c/b0/b/v;
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
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/d;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d$c;->f:Lcom/hiya/client/callerid/ui/a0/d;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/d$c;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hiya/client/callerid/ui/b0/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/d$c;->f:Lcom/hiya/client/callerid/ui/a0/d;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/d;->b(Lcom/hiya/client/callerid/ui/a0/d;)Lcom/hiya/client/callerid/ui/y/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/d$c;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/y/d;->d(Lcom/hiya/client/callerid/ui/b0/j;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/d$c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
