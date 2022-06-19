.class public final synthetic Ln3/y/b/a/w0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/w0/n$b;

.field public final b:Ln3/y/b/a/w0/n;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/n$b;Ln3/y/b/a/w0/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/w0/o;->a:Ln3/y/b/a/w0/n$b;

    iput-object p2, p0, Ln3/y/b/a/w0/o;->b:Ln3/y/b/a/w0/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/w0/o;->a:Ln3/y/b/a/w0/n$b;

    iget-object v1, p0, Ln3/y/b/a/w0/o;->b:Ln3/y/b/a/w0/n;

    .line 1
    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/n$b;->b(Ln3/y/b/a/w0/n;)V

    return-void
.end method
