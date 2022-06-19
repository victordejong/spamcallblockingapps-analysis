.class public final synthetic Le/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Le/j/e;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance p1, Lcom/facebook/internal/u0/n/d;

    invoke-direct {p1, v0}, Lcom/facebook/internal/u0/n/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/facebook/internal/u0/n/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/facebook/internal/u0/n/d;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/facebook/internal/u0/n/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/internal/u0/n/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/internal/u0/j;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
