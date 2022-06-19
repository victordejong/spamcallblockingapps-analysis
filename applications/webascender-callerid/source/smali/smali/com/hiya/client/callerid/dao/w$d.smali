.class final Lcom/hiya/client/callerid/dao/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/w;->b(Ljava/lang/String;)Li/c/b0/b/v;
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
        "Ljava/util/List<",
        "Lg/g/b/c/p;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/w;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/w$d;->f:Lcom/hiya/client/callerid/dao/w;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/w$d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/c/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/w$d;->f:Lcom/hiya/client/callerid/dao/w;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/w$d;->g:Ljava/lang/String;

    const-string v2, "categories"

    .line 3
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1, p1}, Lcom/hiya/client/callerid/dao/w;->a(Lcom/hiya/client/callerid/dao/w;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/w$d;->a(Ljava/util/List;)V

    return-void
.end method
