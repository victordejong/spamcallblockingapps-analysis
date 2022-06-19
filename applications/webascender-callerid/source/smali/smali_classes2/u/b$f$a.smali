.class Lu/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/b$f;->b(Lu/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lu/c;

.field final synthetic b:Lu/b$f;


# direct methods
.method constructor <init>(Lu/b$f;Lu/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/b$f$a;->b:Lu/b$f;

    iput-object p2, p0, Lu/b$f$a;->a:Lu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/b$f$a;->a:Lu/c;

    invoke-interface {v0, p1}, Lu/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lu/b$f$a;->b:Lu/b$f;

    iget-object v1, v0, Lu/b$f;->h:Lu/b$e;

    invoke-interface {v1, p1}, Lu/b$e;->a(Ljava/lang/Object;)Lu/b;

    move-result-object p1

    iput-object p1, v0, Lu/b$f;->j:Lu/b;

    iget-object v0, p0, Lu/b$f$a;->a:Lu/c;

    invoke-virtual {p1, v0}, Lu/b;->enqueue(Lu/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lu/b;->propagateIfFatal(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lu/b$f$a;->a:Lu/c;

    invoke-interface {v0, p1}, Lu/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
