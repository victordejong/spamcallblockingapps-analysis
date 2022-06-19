.class public final Ls1/a/a/a/a0;
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
.field public final synthetic b:Ls1/a/a/a/z$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a0;->b:Ls1/a/a/a/z$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a0;->b:Ls1/a/a/a/z$a;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    .line 2
    sget-object v1, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    .line 3
    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ls1/a/a/a/a0;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
