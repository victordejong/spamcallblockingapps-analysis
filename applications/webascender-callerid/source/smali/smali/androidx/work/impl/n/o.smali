.class public final Landroidx/work/impl/n/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/n/n;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/p;

.field private final c:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    .line 3
    new-instance v0, Landroidx/work/impl/n/o$a;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$a;-><init>(Landroidx/work/impl/n/o;Landroidx/room/j;)V

    .line 4
    new-instance v0, Landroidx/work/impl/n/o$b;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$b;-><init>(Landroidx/work/impl/n/o;Landroidx/room/j;)V

    iput-object v0, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/p;

    .line 5
    new-instance v0, Landroidx/work/impl/n/o$c;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/n/o$c;-><init>(Landroidx/work/impl/n/o;Landroidx/room/j;)V

    iput-object v0, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lf/t/a/d;->M0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lf/t/a/d;->x(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 7
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 9
    iget-object p1, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 11
    iget-object v1, p0, Landroidx/work/impl/n/o;->b:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 12
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->a()Lf/t/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lf/t/a/f;->F()I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 7
    iget-object v1, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Landroidx/work/impl/n/o;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->g()V

    .line 9
    iget-object v2, p0, Landroidx/work/impl/n/o;->c:Landroidx/room/p;

    invoke-virtual {v2, v0}, Landroidx/room/p;->f(Lf/t/a/f;)V

    .line 10
    throw v1
.end method
