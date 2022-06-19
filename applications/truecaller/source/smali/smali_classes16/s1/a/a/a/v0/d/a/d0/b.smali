.class public final Ls1/a/a/a/v0/d/a/d0/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/d/a/d0/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/h;

.field public final synthetic c:Ls1/a/a/a/v0/b/f1/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/b;->b:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/b;->c:Ls1/a/a/a/v0/b/f1/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/b;->b:Ls1/a/a/a/v0/d/a/d0/h;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/b;->c:Ls1/a/a/a/v0/b/f1/h;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/e;

    move-result-object v0

    return-object v0
.end method
