.class public final Ln3/y/b/a/t0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT"
        }
    .end annotation
.end field

.field public b:Ln3/y/b/a/t0/c0$a;

.field public final synthetic c:Ln3/y/b/a/t0/g;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ln3/y/b/a/t0/b;->j(Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/c0$a;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/g$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p0, p3}, Ln3/y/b/a/t0/g$a;->b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/y/b/a/t0/c0$a;->c(Ln3/y/b/a/t0/c0$c;)V

    :cond_0
    return-void
.end method

.method public final a(ILn3/y/b/a/t0/t$a;)Z
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object v1, p0, Ln3/y/b/a/t0/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ln3/y/b/a/t0/g;->p(Ljava/lang/Object;Ln3/y/b/a/t0/t$a;)Ln3/y/b/a/t0/t$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    move-object v3, p2

    .line 2
    iget-object p2, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object v0, p0, Ln3/y/b/a/t0/g$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Ln3/y/b/a/t0/g;->r(Ljava/lang/Object;I)I

    move-result v2

    .line 3
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    iget p2, p1, Ln3/y/b/a/t0/c0$a;->a:I

    if-ne p2, v2, :cond_2

    iget-object p1, p1, Ln3/y/b/a/t0/c0$a;->b:Ln3/y/b/a/t0/t$a;

    .line 4
    invoke-static {p1, v3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    const-wide/16 v4, 0x0

    .line 6
    iget-object p1, p1, Ln3/y/b/a/t0/b;->c:Ln3/y/b/a/t0/c0$a;

    .line 7
    new-instance p2, Ln3/y/b/a/t0/c0$a;

    iget-object v1, p1, Ln3/y/b/a/t0/c0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/t0/c0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILn3/y/b/a/t0/t$a;J)V

    .line 8
    iput-object p2, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;
    .locals 14

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object v1, p0, Ln3/y/b/a/t0/g$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Ln3/y/b/a/t0/c0$c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/b/a/t0/g;->q(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object v1, p0, Ln3/y/b/a/t0/g$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Ln3/y/b/a/t0/c0$c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/b/a/t0/g;->q(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 3
    iget-wide v0, p1, Ln3/y/b/a/t0/c0$c;->f:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Ln3/y/b/a/t0/c0$c;->g:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ln3/y/b/a/t0/c0$c;

    iget v5, p1, Ln3/y/b/a/t0/c0$c;->a:I

    iget v6, p1, Ln3/y/b/a/t0/c0$c;->b:I

    iget-object v7, p1, Ln3/y/b/a/t0/c0$c;->c:Landroidx/media2/exoplayer/external/Format;

    iget v8, p1, Ln3/y/b/a/t0/c0$c;->d:I

    iget-object v9, p1, Ln3/y/b/a/t0/c0$c;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Ln3/y/b/a/t0/c0$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public l(ILn3/y/b/a/t0/t$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object p2, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    iget-object p2, p2, Ln3/y/b/a/t0/c0$a;->b:Ln3/y/b/a/t0/t$a;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Ln3/y/b/a/t0/g;->u(Ln3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->p()V

    :cond_0
    return-void
.end method

.method public m(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p0, p4}, Ln3/y/b/a/t0/g$a;->b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ln3/y/b/a/t0/c0$a;->d(Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    :cond_0
    return-void
.end method

.method public r(ILn3/y/b/a/t0/t$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->c:Ln3/y/b/a/t0/g;

    iget-object p2, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    iget-object p2, p2, Ln3/y/b/a/t0/c0$a;->b:Ln3/y/b/a/t0/t$a;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Ln3/y/b/a/t0/g;->u(Ln3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->q()V

    :cond_0
    return-void
.end method

.method public s(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p0, p4}, Ln3/y/b/a/t0/g$a;->b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ln3/y/b/a/t0/c0$a;->m(Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    :cond_0
    return-void
.end method

.method public t(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p0, p4}, Ln3/y/b/a/t0/g$a;->b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ln3/y/b/a/t0/c0$a;->g(Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;)V

    :cond_0
    return-void
.end method

.method public w(ILn3/y/b/a/t0/t$a;Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    .line 3
    invoke-virtual {p0, p4}, Ln3/y/b/a/t0/g$a;->b(Ln3/y/b/a/t0/c0$c;)Ln3/y/b/a/t0/c0$c;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Ln3/y/b/a/t0/c0$a;->j(Ln3/y/b/a/t0/c0$b;Ln3/y/b/a/t0/c0$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public z(ILn3/y/b/a/t0/t$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/t0/g$a;->a(ILn3/y/b/a/t0/t$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/g$a;->b:Ln3/y/b/a/t0/c0$a;

    invoke-virtual {p1}, Ln3/y/b/a/t0/c0$a;->s()V

    :cond_0
    return-void
.end method
