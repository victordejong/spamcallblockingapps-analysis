.class public final Ls1/a/a/a/v0/b/o0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/o0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/o0;

.field public final synthetic c:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/o0;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/o0$b;->b:Ls1/a/a/a/v0/b/o0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/o0$b;->c:Ls1/a/a/a/v0/m/l1/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/o0$b;->b:Ls1/a/a/a/v0/b/o0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/o0;->c:Ls1/z/b/l;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/b/o0$b;->c:Ls1/a/a/a/v0/m/l1/e;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
