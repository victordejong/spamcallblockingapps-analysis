.class public final Le/a/a/h1/o/p;
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
.field public final synthetic b:Le/a/a/h1/o/n$b;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n$b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/p;->b:Le/a/a/h1/o/n$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/p;->b:Le/a/a/h1/o/n$b;

    iget-object v0, v0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 2
    iget-object v0, v0, Le/a/a/h1/o/n;->o:Le/a/a/h1/o/i;

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/a/h1/o/i;->qg(Z)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
