.class public final Ln3/k/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/a/i$e;


# instance fields
.field public final a:Ln3/k/a/i$e;


# direct methods
.method public constructor <init>(Ln3/k/a/i$e;)V
    .locals 1

    const-string v0, "workItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/k/a/h;->a:Ln3/k/a/i$e;

    return-void
.end method


# virtual methods
.method public O5()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/k/a/h;->a:Ln3/k/a/i$e;

    invoke-interface {v0}, Ln3/k/a/i$e;->O5()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Ln3/k/a/h;->a:Ln3/k/a/i$e;

    invoke-interface {v0}, Ln3/k/a/i$e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
