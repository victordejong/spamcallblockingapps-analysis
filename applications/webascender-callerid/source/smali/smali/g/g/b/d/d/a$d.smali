.class final Lg/g/b/d/d/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/d/a;->f(Lg/g/b/d/e/a;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/g/b/d/d/a;

.field final synthetic b:Lg/g/b/d/e/a;


# direct methods
.method constructor <init>(Lg/g/b/d/d/a;Lg/g/b/d/e/a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/d/a$d;->a:Lg/g/b/d/d/a;

    iput-object p2, p0, Lg/g/b/d/d/a$d;->b:Lg/g/b/d/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lg/g/b/d/d/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Storing StoredRequest: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lg/g/b/d/d/a$d;->b:Lg/g/b/d/e/a;

    invoke-virtual {v4}, Lg/g/b/d/e/a;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lg/g/b/d/d/a$d;->a:Lg/g/b/d/d/a;

    invoke-static {v0}, Lg/g/b/d/d/a;->b(Lg/g/b/d/d/a;)Lcom/hiya/client/repost/db/b;

    move-result-object v0

    iget-object v1, p0, Lg/g/b/d/d/a$d;->b:Lg/g/b/d/e/a;

    invoke-virtual {v0, v1}, Lcom/hiya/client/repost/db/b;->c(Lg/g/b/d/e/a;)V

    .line 3
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/hiya/client/repost/db/RepostDatabaseException;

    const-string v2, "Failed to save request."

    invoke-direct {v1, v2, v0}, Lcom/hiya/client/repost/db/RepostDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
