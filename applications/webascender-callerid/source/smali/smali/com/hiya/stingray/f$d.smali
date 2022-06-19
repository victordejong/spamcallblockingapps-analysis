.class final Lcom/hiya/stingray/f$d;
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


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$d;->f:Lcom/hiya/stingray/f;

    iput-object p2, p0, Lcom/hiya/stingray/f$d;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
    .locals 2
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
    iget-object v0, p0, Lcom/hiya/stingray/f$d;->f:Lcom/hiya/stingray/f;

    invoke-static {v0}, Lcom/hiya/stingray/f;->e(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/y1;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/f$d;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/y1;->c(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/f$d$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/f$d$a;-><init>(Lcom/hiya/stingray/f$b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/f$d$b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/f$d$b;-><init>(Lcom/hiya/stingray/f$b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->onErrorReturn(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/f$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$d;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
