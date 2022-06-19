.class public final Le/a/o/a/a/a/c;
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
.field public final synthetic b:Le/a/o/a/a/a/a$e;


# direct methods
.method public constructor <init>(Le/a/o/a/a/a/a$e;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/a/a/c;->b:Le/a/o/a/a/a/a$e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/a/a/c;->b:Le/a/o/a/a/a/a$e;

    iget-object v0, v0, Le/a/o/a/a/a/a$e;->b:Le/a/o/a/a/a/a;

    invoke-virtual {v0}, Le/a/o/a/a/a/a;->SA()Le/a/o/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Le/a/o/a/a/a/e;->O3()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
