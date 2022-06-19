.class final Lcom/hiya/client/callerid/dao/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;
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
        "Li/c/b0/b/t<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/client/callerid/dao/e$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/dao/e$f;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/e$f;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/dao/e$f;->f:Lcom/hiya/client/callerid/dao/e$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lg/g/b/a/g/b/d;",
            "Lg/g/b/c/f;",
            ">;)",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/p;->g()Li/c/b0/b/p;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->I(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/p;->j(Ljava/lang/Object;)Li/c/b0/b/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$f;->a(Ljava/util/Map;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method
