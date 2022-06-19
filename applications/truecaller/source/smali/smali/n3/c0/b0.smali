.class public Ln3/c0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e0/a/c$c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln3/e0/a/c$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ln3/e0/a/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Ln3/e0/a/c$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/c0/b0;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Ln3/c0/b0;->b:Ln3/e0/a/c$c;

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/c$b;)Ln3/e0/a/c;
    .locals 8

    .line 1
    new-instance v7, Ln3/c0/a0;

    iget-object v1, p1, Ln3/e0/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p0, Ln3/c0/b0;->a:Ljava/lang/String;

    iget-object v0, p1, Ln3/e0/a/c$b;->c:Ln3/e0/a/c$a;

    iget v5, v0, Ln3/e0/a/c$a;->a:I

    iget-object v0, p0, Ln3/c0/b0;->b:Ln3/e0/a/c$c;

    .line 2
    invoke-interface {v0, p1}, Ln3/e0/a/c$c;->a(Ln3/e0/a/c$b;)Ln3/e0/a/c;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ln3/c0/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILn3/e0/a/c;)V

    return-object v7
.end method
