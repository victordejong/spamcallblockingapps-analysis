.class public final Ls1/a/a/a/v0/d/a/d0/o/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/f0/j;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/f0/j;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/f;->b:Ls1/a/a/a/v0/d/a/f0/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ls1/a/a/a/v0/m/l0;
    .locals 2

    const-string v0, "Unresolved java class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/f;->b:Ls1/a/a/a/v0/d/a/f0/j;

    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "ErrorUtils.createErrorTy\u2026vaType.presentableText}\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/o/f;->a()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method
