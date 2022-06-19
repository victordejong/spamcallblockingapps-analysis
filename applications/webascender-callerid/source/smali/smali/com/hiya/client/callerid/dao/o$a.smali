.class final Lcom/hiya/client/callerid/dao/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/o;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lg/g/b/c/d;)Li/c/b0/b/e0;
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
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/i0<",
        "+",
        "Lretrofit2/Response<",
        "Lm/h0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/o;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/o;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o$a;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/e0<",
            "Lretrofit2/Response<",
            "Lm/h0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o$a;->f:Lcom/hiya/client/callerid/dao/o;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/dao/o;->g(Lcom/hiya/client/callerid/dao/o;Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/o$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
