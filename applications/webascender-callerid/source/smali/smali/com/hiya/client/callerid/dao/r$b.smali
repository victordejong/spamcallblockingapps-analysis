.class final Lcom/hiya/client/callerid/dao/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/r;->f(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;
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
        "Li/c/b0/b/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/r;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/r$b;->a:Lcom/hiya/client/callerid/dao/r;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/r$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/r$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/q<",
            "Lg/g/b/c/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$b;->a:Lcom/hiya/client/callerid/dao/r;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$b;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/r$b;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/hiya/client/callerid/dao/r;->c(Lcom/hiya/client/callerid/dao/r;)Lg/g/a/a/h/g;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/hiya/client/callerid/dao/r;->a(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$b;->a:Lcom/hiya/client/callerid/dao/r;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/r;->b(Lcom/hiya/client/callerid/dao/r;)Lg/g/b/b/d/d;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$b;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v0}, Lg/g/b/b/d/d;->c(Ljava/lang/String;)Lg/g/b/c/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1, v0}, Li/c/b0/b/q;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1}, Li/c/b0/b/q;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getLocalOverrideId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hiya/client/callerid/dao/r$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Li/c/b0/b/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
