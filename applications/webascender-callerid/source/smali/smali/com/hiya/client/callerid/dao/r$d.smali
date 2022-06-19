.class final Lcom/hiya/client/callerid/dao/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/r;->h(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/r;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/r$d;->a:Lcom/hiya/client/callerid/dao/r;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/r$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/r$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$d;->a:Lcom/hiya/client/callerid/dao/r;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$d;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/r$d;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/hiya/client/callerid/dao/r;->c(Lcom/hiya/client/callerid/dao/r;)Lg/g/a/a/h/g;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/hiya/client/callerid/dao/r;->a(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$d;->a:Lcom/hiya/client/callerid/dao/r;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/r;->b(Lcom/hiya/client/callerid/dao/r;)Lg/g/b/b/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/g/b/b/d/d;->a(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    const-string v2, "Failed to delete local override"

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
