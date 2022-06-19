.class public abstract Le/a/t/b/c/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/android/sdk/clients/VerificationCallback;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    .line 3
    iput-boolean p2, p0, Le/a/t/b/c/l/b;->c:Z

    .line 4
    iput p3, p0, Le/a/t/b/c/l/b;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v0, p0, Le/a/t/b/c/l/b;->b:I

    new-instance v1, Lcom/truecaller/android/sdk/TrueException;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TT;>;",
            "Lx3/a0<",
            "TT;>;)V"
        }
    .end annotation

    const-string p1, "Unknown error"

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p2, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Le/a/t/b/c/l/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p2, Lx3/a0;->c:Lu3/l0;

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p2}, Le/m/d/y/n;->N0(Lu3/l0;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-boolean p2, p0, Le/a/t/b/c/l/b;->c:Z

    if-eqz p2, :cond_1

    const-string p2, "internal service error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le/a/t/b/c/l/b;->c:Z

    .line 8
    invoke-virtual {p0}, Le/a/t/b/c/l/b;->a()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v0, p0, Le/a/t/b/c/l/b;->b:I

    new-instance v1, Lcom/truecaller/android/sdk/TrueException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v1, p0, Le/a/t/b/c/l/b;->b:I

    new-instance v2, Lcom/truecaller/android/sdk/TrueException;

    invoke-direct {v2, v0, p1}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v1, p0, Le/a/t/b/c/l/b;->b:I

    new-instance v2, Lcom/truecaller/android/sdk/TrueException;

    invoke-direct {v2, v0, p1}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    :goto_0
    return-void
.end method
