.class final Lcom/hiya/client/callerid/dao/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->f(Lg/g/b/c/j;Z)Li/c/b0/b/e0;
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
.field final synthetic f:Lcom/hiya/client/callerid/dao/e;

.field final synthetic g:Lg/g/b/c/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;Lg/g/b/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$j;->f:Lcom/hiya/client/callerid/dao/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$j;->g:Lg/g/b/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/dao/e$j;->g:Lg/g/b/c/j;

    invoke-virtual {p1}, Lg/g/b/c/j;->e()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$j;->g:Lg/g/b/c/j;

    invoke-virtual {v0}, Lg/g/b/c/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/e$j;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/e;->m(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/dao/g;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/e$j;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v2}, Lcom/hiya/client/callerid/dao/e;->q(Lcom/hiya/client/callerid/dao/e;)Lg/g/a/a/h/g;

    move-result-object v2

    invoke-virtual {v2}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v0, v1, v2}, Lg/g/b/a/k/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
