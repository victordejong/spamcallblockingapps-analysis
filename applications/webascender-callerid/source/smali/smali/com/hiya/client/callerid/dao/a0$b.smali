.class final Lcom/hiya/client/callerid/dao/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/a0;->d(Ljava/util/List;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/a0;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/a0;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/a0$b;->a:Lcom/hiya/client/callerid/dao/a0;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/a0$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$b;->a:Lcom/hiya/client/callerid/dao/a0;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/a0;->b(Lcom/hiya/client/callerid/dao/a0;)Lg/g/b/b/d/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lg/g/b/b/d/g;->c(Ljava/util/List;)V

    .line 2
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lcom/hiya/client/database/db/DatabaseException;

    const-string v2, "Failed to storeTranslatedStrings"

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/database/db/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
