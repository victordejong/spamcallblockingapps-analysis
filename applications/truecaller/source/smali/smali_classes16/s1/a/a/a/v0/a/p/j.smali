.class public final Ls1/a/a/a/v0/a/p/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/p/h$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/h$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/j;->b:Ls1/a/a/a/v0/a/p/h$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/j;->b:Ls1/a/a/a/v0/a/p/h$b;

    iget-object v0, v0, Ls1/a/a/a/v0/a/p/h$b;->b:Ls1/a/a/a/v0/a/p/h;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/a/p/h;->f:Ls1/a/a/a/v0/b/a0;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v0, v0, Ls1/a/a/a/v0/a/p/h;->g:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
