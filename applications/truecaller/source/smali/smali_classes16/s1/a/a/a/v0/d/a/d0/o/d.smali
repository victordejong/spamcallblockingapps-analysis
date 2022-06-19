.class public final Ls1/a/a/a/v0/d/a/d0/o/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/o/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/o/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/d;->b:Ls1/a/a/a/v0/d/a/d0/o/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/d;->b:Ls1/a/a/a/v0/d/a/d0/o/e;

    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/o/e;->d:Ls1/a/a/a/v0/m/v0;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v1, "constructor.declarationDescriptor!!"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    return-object v0
.end method
