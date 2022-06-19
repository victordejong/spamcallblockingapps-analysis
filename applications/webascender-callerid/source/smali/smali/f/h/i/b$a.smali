.class Lf/h/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/i/b;->g(Landroid/content/Context;Lf/h/i/a;Landroidx/core/content/c/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lf/h/i/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lf/h/i/a;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lf/h/i/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/h/i/b$a;->f:Landroid/content/Context;

    iput-object p2, p0, Lf/h/i/b$a;->g:Lf/h/i/a;

    iput p3, p0, Lf/h/i/b$a;->h:I

    iput-object p4, p0, Lf/h/i/b$a;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lf/h/i/b$g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/h/i/b$a;->f:Landroid/content/Context;

    iget-object v1, p0, Lf/h/i/b$a;->g:Lf/h/i/a;

    iget v2, p0, Lf/h/i/b$a;->h:I

    invoke-static {v0, v1, v2}, Lf/h/i/b;->f(Landroid/content/Context;Lf/h/i/a;I)Lf/h/i/b$g;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/h/i/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lf/h/i/b;->a:Lf/e/e;

    iget-object v3, p0, Lf/h/i/b$a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lf/e/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/h/i/b$a;->a()Lf/h/i/b$g;

    move-result-object v0

    return-object v0
.end method
