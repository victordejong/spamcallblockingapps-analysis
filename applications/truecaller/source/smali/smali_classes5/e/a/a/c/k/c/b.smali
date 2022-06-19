.class public final Le/a/a/c/k/c/b;
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
.field public final synthetic b:Le/a/a/c/k/c/d;


# direct methods
.method public constructor <init>(Le/a/a/c/k/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k/c/b;->b:Le/a/a/c/k/c/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/c/b;->b:Le/a/a/c/k/c/d;

    .line 2
    iget-object v0, v0, Le/a/a/c/k/c/d;->d:Le/a/a/c/c5;

    .line 3
    invoke-virtual {v0}, Le/a/a/c/c5;->Nj()V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
