.class public Ls1/a/a/a/v0/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/a0;

.field public final synthetic b:Ls1/a/a/a/v0/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/h1/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/h;->b:Ls1/a/a/a/v0/a/g;

    iput-object p2, p0, Ls1/a/a/a/v0/a/h;->a:Ls1/a/a/a/v0/b/h1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/h;->b:Ls1/a/a/a/v0/a/g;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/a/h;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 4
    iput-object v1, v0, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Built-ins module is already set: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/a/h;->b:Ls1/a/a/a/v0/a/g;

    .line 6
    iget-object v2, v2, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (attempting to reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls1/a/a/a/v0/a/h;->a:Ls1/a/a/a/v0/b/h1/a0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
