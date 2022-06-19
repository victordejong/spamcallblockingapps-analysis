.class public final Ln3/y/b/a/t0/n;
.super Ln3/y/b/a/t0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/y/b/a/t0/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final i:Ln3/y/b/a/t0/g0;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;Ln3/y/b/a/t0/n$a;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/g;-><init>()V

    .line 2
    new-instance v9, Ln3/y/b/a/t0/g0;

    .line 3
    sget-object v4, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 4
    invoke-direct/range {v0 .. v8}, Ln3/y/b/a/t0/g0;-><init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v9, v0, Ln3/y/b/a/t0/n;->i:Ln3/y/b/a/t0/g0;

    return-void
.end method


# virtual methods
.method public c(Ln3/y/b/a/t0/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/n;->i:Ln3/y/b/a/t0/g0;

    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/g0;->c(Ln3/y/b/a/t0/s;)V

    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/n;->i:Ln3/y/b/a/t0/g0;

    invoke-virtual {v0, p1, p2, p3, p4}, Ln3/y/b/a/t0/g0;->e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/n;->i:Ln3/y/b/a/t0/g0;

    .line 2
    iget-object v0, v0, Ln3/y/b/a/t0/g0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/g;->h:Ln3/y/b/a/w0/e0;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/g;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/t0/n;->i:Ln3/y/b/a/t0/g0;

    invoke-virtual {p0, p1, v0}, Ln3/y/b/a/t0/g;->t(Ljava/lang/Object;Ln3/y/b/a/t0/t;)V

    return-void
.end method

.method public s(Ljava/lang/Object;Ln3/y/b/a/t0/t;Ln3/y/b/a/l0;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0, p3}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    return-void
.end method
