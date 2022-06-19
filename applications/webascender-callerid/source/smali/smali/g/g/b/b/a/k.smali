.class public final Lg/g/b/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/b/a/j;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lg/g/b/b/e/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Lg/g/b/b/a/k$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/k$a;-><init>(Lg/g/b/b/a/k;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/k;->b:Landroidx/room/c;

    .line 4
    new-instance v0, Lg/g/b/b/a/k$b;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/k$b;-><init>(Lg/g/b/b/a/k;Landroidx/room/j;)V

    .line 5
    new-instance v0, Lg/g/b/b/a/k$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/k$c;-><init>(Lg/g/b/b/a/k;Landroidx/room/j;)V

    iput-object v0, p0, Lg/g/b/b/a/k;->c:Landroidx/room/p;

    .line 6
    new-instance v0, Lg/g/b/b/a/k$d;

    invoke-direct {v0, p0, p1}, Lg/g/b/b/a/k$d;-><init>(Lg/g/b/b/a/k;Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/k;->c:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 5
    iget-object v1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 7
    iget-object v1, p0, Lg/g/b/b/a/k;->c:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->g()V

    .line 9
    iget-object v2, p0, Lg/g/b/b/a/k;->c:Landroidx/room/p;

    invoke-virtual {v2, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 10
    throw v1
.end method

.method public h(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lg/g/b/b/e/a/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/g/b/b/a/k;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->h(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 6
    throw p1
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT translated_text FROM translated_strings WHERE `key` = ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->c(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->M0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->x(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->b()V

    .line 5
    iget-object p1, p0, Lg/g/b/b/a/k;->a:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/s/c;->b(Landroidx/room/j;Lf/t/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->g()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->g()V

    .line 12
    throw v1
.end method
