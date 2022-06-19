.class final Lcom/hiya/client/callerid/dao/r$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/r;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/r$e;->a:Lcom/hiya/client/callerid/dao/r;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/r$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/r$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/client/callerid/dao/r$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/hiya/client/callerid/dao/r$e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/hiya/client/callerid/dao/r$e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/hiya/client/callerid/dao/r$e;->g:Ljava/lang/String;

    iput p8, p0, Lcom/hiya/client/callerid/dao/r$e;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$e;->a:Lcom/hiya/client/callerid/dao/r;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$e;->b:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/r$e;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/hiya/client/callerid/dao/r;->c(Lcom/hiya/client/callerid/dao/r;)Lg/g/a/a/h/g;

    move-result-object v3

    invoke-virtual {v3}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/hiya/client/callerid/dao/r;->a(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/r$e;->a:Lcom/hiya/client/callerid/dao/r;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/r;->b(Lcom/hiya/client/callerid/dao/r;)Lg/g/b/b/d/d;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$e;->b:Ljava/lang/String;

    :cond_1
    move-object v3, v0

    .line 8
    iget-object v6, p0, Lcom/hiya/client/callerid/dao/r$e;->d:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/hiya/client/callerid/dao/r$e;->e:Ljava/lang/String;

    .line 10
    iget-object v8, p0, Lcom/hiya/client/callerid/dao/r$e;->f:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/hiya/client/callerid/dao/r$e;->g:Ljava/lang/String;

    .line 12
    iget v7, p0, Lcom/hiya/client/callerid/dao/r$e;->h:I

    .line 13
    new-instance v0, Lg/g/b/c/m;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lg/g/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Lg/g/b/b/d/d;->e(Lg/g/b/c/m;)V

    .line 15
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    const-string v2, "Failed to save local override"

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
