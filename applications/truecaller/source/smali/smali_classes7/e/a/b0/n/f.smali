.class public final Le/a/b0/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/n/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/n/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Le/a/b0/b/m/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/b0/n/f;->a:Landroid/content/Context;

    invoke-static {v1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
