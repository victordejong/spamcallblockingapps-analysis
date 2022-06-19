.class public final Ln3/z/g2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/o1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g2;-><init>(Ln3/z/x;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g2;


# direct methods
.method public constructor <init>(Ln3/z/g2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 2
    iget-object v0, v0, Ln3/z/g2;->j:Ln3/z/x;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/z/x;->a(II)V

    return-void
.end method

.method public b(Ln3/z/t0;ZLn3/z/r0;)V
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadState"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 2
    iget-object v0, v0, Ln3/z/g2;->c:Ln3/z/x0;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln3/z/x0;->b(Ln3/z/t0;Z)Ln3/z/r0;

    move-result-object v0

    .line 4
    invoke-static {v0, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 6
    iget-object v0, v0, Ln3/z/g2;->c:Ln3/z/x0;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ln3/z/x0;->d(Ln3/z/t0;ZLn3/z/r0;)Z

    .line 8
    iget-object p1, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 9
    iget-object p1, p1, Ln3/z/g2;->c:Ln3/z/x0;

    .line 10
    invoke-virtual {p1}, Ln3/z/x0;->e()Ln3/z/q;

    move-result-object p1

    .line 11
    iget-object p2, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 12
    iget-object p2, p2, Ln3/z/g2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls1/z/b/l;

    .line 14
    invoke-interface {p3, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 2
    iget-object v0, v0, Ln3/z/g2;->j:Ln3/z/x;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/z/x;->onInserted(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/g2$b;->a:Ln3/z/g2;

    .line 2
    iget-object v0, v0, Ln3/z/g2;->j:Ln3/z/x;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/z/x;->onRemoved(II)V

    return-void
.end method
