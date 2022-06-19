.class final Lcom/hiya/client/callerid/dao/e$l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


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
.field final synthetic f:Lcom/hiya/client/callerid/dao/e$l;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e$l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$l$c;->f:Lcom/hiya/client/callerid/dao/e$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/f;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$l$c;->f:Lcom/hiya/client/callerid/dao/e$l;

    iget-object v0, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->p(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/dao/a0;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/dao/a0;->e(Lg/g/b/c/f;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$l$c;->a(Lg/g/b/c/f;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
