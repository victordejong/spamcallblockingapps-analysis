.class public abstract Ln3/y/b/a/w0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h$a;


# instance fields
.field public final a:Ln3/y/b/a/w0/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/w0/y;

    invoke-direct {v0}, Ln3/y/b/a/w0/y;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/w0/v;->a:Ln3/y/b/a/w0/y;

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/w0/h;
    .locals 8

    .line 1
    iget-object v5, p0, Ln3/y/b/a/w0/v;->a:Ln3/y/b/a/w0/y;

    move-object v6, p0

    check-cast v6, Ln3/y/b/a/w0/s;

    .line 2
    new-instance v7, Ln3/y/b/a/w0/r;

    iget-object v1, v6, Ln3/y/b/a/w0/s;->b:Ljava/lang/String;

    iget v2, v6, Ln3/y/b/a/w0/s;->d:I

    iget v3, v6, Ln3/y/b/a/w0/s;->e:I

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Ln3/y/b/a/w0/r;-><init>(Ljava/lang/String;IIZLn3/y/b/a/w0/y;)V

    .line 3
    iget-object v0, v6, Ln3/y/b/a/w0/s;->c:Ln3/y/b/a/w0/e0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v7, v0}, Ln3/y/b/a/w0/e;->c(Ln3/y/b/a/w0/e0;)V

    :cond_0
    return-object v7
.end method
