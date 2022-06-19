.class public final Ls1/a/a/a/v0/b/h1/z;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/b;",
        "Ls1/a/a/a/v0/b/g0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/a0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/z;->b:Ls1/a/a/a/v0/b/h1/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/b;

    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/a/a/a/v0/b/h1/t;

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/z;->b:Ls1/a/a/a/v0/b/h1/a0;

    .line 4
    iget-object v2, v1, Ls1/a/a/a/v0/b/h1/a0;->i:Ls1/a/a/a/v0/l/m;

    .line 5
    invoke-direct {v0, v1, p1, v2}, Ls1/a/a/a/v0/b/h1/t;-><init>(Ls1/a/a/a/v0/b/h1/a0;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;)V

    return-object v0
.end method
