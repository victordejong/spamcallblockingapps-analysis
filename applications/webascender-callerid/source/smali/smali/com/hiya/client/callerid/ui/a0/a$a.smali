.class final Lcom/hiya/client/callerid/ui/a0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/a;->d(Lcom/hiya/client/callerid/ui/b0/j;J)Li/c/b0/b/p;
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
.field final synthetic a:Lcom/hiya/client/callerid/ui/a0/a;

.field final synthetic b:J

.field final synthetic c:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/a;JLcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->a:Lcom/hiya/client/callerid/ui/a0/a;

    iput-wide p2, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->b:J

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->c:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/q<",
            "Lcom/hiya/client/callerid/ui/b0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->a:Lcom/hiya/client/callerid/ui/a0/a;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->c:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {v0, v1}, Lcom/hiya/client/callerid/ui/a0/a;->b(Lcom/hiya/client/callerid/ui/a0/a;Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/b0/c;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->a:Lcom/hiya/client/callerid/ui/a0/a;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/a$a;->c:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {v2, v3, v0, v1}, Lcom/hiya/client/callerid/ui/a0/a;->a(Lcom/hiya/client/callerid/ui/a0/a;Lcom/hiya/client/callerid/ui/b0/j;J)Lcom/hiya/client/callerid/ui/b0/c;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Li/c/b0/b/q;->onComplete()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v0}, Li/c/b0/b/q;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-interface {p1, v0}, Li/c/b0/b/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
