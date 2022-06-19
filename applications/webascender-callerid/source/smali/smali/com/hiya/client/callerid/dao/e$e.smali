.class final Lcom/hiya/client/callerid/dao/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e;->b()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$e;->a:Lcom/hiya/client/callerid/dao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$e;->a:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lg/g/b/c/q;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3
    sget-object v3, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    aput-object v3, v1, v2

    .line 4
    invoke-static {v1}, Lkotlin/s/h0;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lg/g/b/b/d/c;->a(Ljava/util/Set;)V

    .line 6
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    const-string v2, "Failed to delete spam and fraud"

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
