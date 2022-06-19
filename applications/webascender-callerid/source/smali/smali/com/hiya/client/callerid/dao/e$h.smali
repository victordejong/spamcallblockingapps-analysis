.class final Lcom/hiya/client/callerid/dao/e$h;
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
        "TT;",
        "Li/c/b0/b/i0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$h;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg/g/b/a/g/b/d;",
            ">;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "Lg/g/b/a/g/b/d;",
            "Lg/g/b/c/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$h;->f:Lcom/hiya/client/callerid/dao/e;

    const-string v1, "formattedPhone"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/dao/e;->t(Ljava/util/Map;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$h;->a(Ljava/util/Map;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
