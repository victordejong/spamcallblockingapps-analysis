.class public final Le/a/k/a/g/l0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/g/y;


# direct methods
.method public constructor <init>(Le/a/k/a/g/y;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/l0;->b:Le/a/k/a/g/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/a/g/l0;->b:Le/a/k/a/g/y;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/a/k/a/g/g0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/k/a/g/g0;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    invoke-virtual {v0, v1}, Le/a/k/a/g/y;->Pj(Ls1/z/b/l;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
