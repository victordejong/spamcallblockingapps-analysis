.class public Lx3/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/s;->enqueue(Lx3/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx3/d;

.field public final synthetic b:Lx3/s;


# direct methods
.method public constructor <init>(Lx3/s;Lx3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/s$a;->b:Lx3/s;

    iput-object p2, p0, Lx3/s$a;->a:Lx3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lx3/s$a;->a:Lx3/d;

    iget-object v0, p0, Lx3/s$a;->b:Lx3/s;

    invoke-interface {p1, v0, p2}, Lx3/d;->onFailure(Lx3/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lx3/s$a;->b:Lx3/s;

    invoke-virtual {p1, p2}, Lx3/s;->b(Lu3/k0;)Lx3/a0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p2, p0, Lx3/s$a;->a:Lx3/d;

    iget-object v0, p0, Lx3/s$a;->b:Lx3/s;

    invoke-interface {p2, v0, p1}, Lx3/d;->onResponse(Lx3/b;Lx3/a0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 6
    :try_start_2
    iget-object p2, p0, Lx3/s$a;->a:Lx3/d;

    iget-object v0, p0, Lx3/s$a;->b:Lx3/s;

    invoke-interface {p2, v0, p1}, Lx3/d;->onFailure(Lx3/b;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {p1}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
