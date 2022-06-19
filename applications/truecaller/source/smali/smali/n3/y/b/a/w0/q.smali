.class public final Ln3/y/b/a/w0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/y/b/a/w0/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ln3/y/b/a/w0/s;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Ln3/y/b/a/w0/s;-><init>(Ljava/lang/String;Ln3/y/b/a/w0/e0;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/w0/q;->a:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Ln3/y/b/a/w0/q;->b:Ln3/y/b/a/w0/h$a;

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/w0/h;
    .locals 3

    .line 1
    new-instance v0, Ln3/y/b/a/w0/p;

    iget-object v1, p0, Ln3/y/b/a/w0/q;->a:Landroid/content/Context;

    iget-object v2, p0, Ln3/y/b/a/w0/q;->b:Ln3/y/b/a/w0/h$a;

    .line 2
    invoke-interface {v2}, Ln3/y/b/a/w0/h$a;->a()Ln3/y/b/a/w0/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/w0/p;-><init>(Landroid/content/Context;Ln3/y/b/a/w0/h;)V

    return-object v0
.end method
