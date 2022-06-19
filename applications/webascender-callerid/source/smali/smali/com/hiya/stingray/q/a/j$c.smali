.class Lcom/hiya/stingray/q/a/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/a/j;->q(Ljava/lang/String;ZZ)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;",
        "Li/c/b0/b/v<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Z

.field final synthetic g:Lcom/hiya/stingray/q/a/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/a/j;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/a/j$c;->g:Lcom/hiya/stingray/q/a/j;

    iput-boolean p2, p0, Lcom/hiya/stingray/q/a/j$c;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j$c;->g:Lcom/hiya/stingray/q/a/j;

    invoke-static {v0}, Lcom/hiya/stingray/q/a/j;->n(Lcom/hiya/stingray/q/a/j;)Lcom/hiya/stingray/q/b/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hiya/stingray/q/a/j$c;->f:Z

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/q/b/j;->a(ZLjava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/a/j$c$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/a/j$c$a;-><init>(Lcom/hiya/stingray/q/a/j$c;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    iget-boolean v1, p0, Lcom/hiya/stingray/q/a/j$c;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Lg/g/a/a/c;->GET_DENY_LIST:Lg/g/a/a/c;

    goto :goto_0

    :cond_0
    sget-object v1, Lg/g/a/a/c;->GET_ALLOW_LIST:Lg/g/a/a/c;

    :goto_0
    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j$c;->a(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
