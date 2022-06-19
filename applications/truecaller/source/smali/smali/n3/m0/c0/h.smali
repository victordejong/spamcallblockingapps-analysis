.class public Ln3/m0/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e0/a/c$c;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/c$b;)Ln3/e0/a/c;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/m0/c0/h;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p1, Ln3/e0/a/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Ln3/e0/a/c$b;->c:Ln3/e0/a/c$a;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ln3/e0/a/c$b;

    invoke-direct {v3, v0, v1, p1, v2}, Ln3/e0/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ln3/e0/a/c$a;Z)V

    .line 5
    new-instance p1, Ln3/e0/a/g/b;

    iget-object v0, v3, Ln3/e0/a/c$b;->a:Landroid/content/Context;

    iget-object v1, v3, Ln3/e0/a/c$b;->b:Ljava/lang/String;

    iget-object v2, v3, Ln3/e0/a/c$b;->c:Ln3/e0/a/c$a;

    iget-boolean v3, v3, Ln3/e0/a/c$b;->d:Z

    invoke-direct {p1, v0, v1, v2, v3}, Ln3/e0/a/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ln3/e0/a/c$a;Z)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a callback to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
