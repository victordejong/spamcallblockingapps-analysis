.class final Lcom/hiya/client/callerid/dao/e$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->c(Ljava/util/List;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/e;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$m;->a:Lcom/hiya/client/callerid/dao/e;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$m;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$m;->a:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/e$m;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lg/g/b/b/d/c;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$m;->a:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/b/d/c;->c()V

    .line 3
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save CallerIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hiya/client/callerid/dao/e$m;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
