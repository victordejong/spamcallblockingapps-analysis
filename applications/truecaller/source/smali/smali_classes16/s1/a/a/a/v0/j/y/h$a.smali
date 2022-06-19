.class public final Ls1/a/a/a/v0/j/y/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/y/h;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/h$a;->b:Ls1/z/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/h$a;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/j/y/a;

    if-eqz v1, :cond_0

    check-cast v0, Ls1/a/a/a/v0/j/y/a;

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/y/a;->h()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method
