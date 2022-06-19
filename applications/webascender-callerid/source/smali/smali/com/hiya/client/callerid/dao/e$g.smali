.class final Lcom/hiya/client/callerid/dao/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->s(Ljava/util/List;)Li/c/b0/b/e0;
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

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$g;->f:Lcom/hiya/client/callerid/dao/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$g;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg/g/b/a/g/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$g;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/b/a/g/b/d;

    .line 4
    invoke-virtual {v1}, Lg/g/b/a/g/b/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lg/g/b/a/g/b/d;->a()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/hiya/client/callerid/dao/e$g;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v4}, Lcom/hiya/client/callerid/dao/e;->m(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/dao/g;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/hiya/client/callerid/dao/e$g;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v5}, Lcom/hiya/client/callerid/dao/e;->q(Lcom/hiya/client/callerid/dao/e;)Lg/g/a/a/h/g;

    move-result-object v5

    invoke-virtual {v5}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v2, v3, v4, v5}, Lg/g/b/a/k/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$g;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
