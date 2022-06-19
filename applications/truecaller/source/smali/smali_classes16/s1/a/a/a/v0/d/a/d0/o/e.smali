.class public final Ls1/a/a/a/v0/d/a/d0/o/e;
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
.field public final synthetic b:Ls1/a/a/a/v0/b/w0;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/o/a;

.field public final synthetic d:Ls1/a/a/a/v0/m/v0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/g;Ls1/a/a/a/v0/d/a/d0/o/a;Ls1/a/a/a/v0/m/v0;Z)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/e;->b:Ls1/a/a/a/v0/b/w0;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/o/e;->c:Ls1/a/a/a/v0/d/a/d0/o/a;

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/d0/o/e;->d:Ls1/a/a/a/v0/m/v0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/e;->b:Ls1/a/a/a/v0/b/w0;

    const-string v1, "parameter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/e;->c:Ls1/a/a/a/v0/d/a/d0/o/a;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    .line 3
    new-instance v2, Ls1/a/a/a/v0/d/a/d0/o/d;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/d/a/d0/o/d;-><init>(Ls1/a/a/a/v0/d/a/d0/o/e;)V

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/o/i;->a(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;Ls1/z/b/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    return-object v0
.end method
