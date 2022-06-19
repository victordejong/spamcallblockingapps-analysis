.class public final Le/a/l/f0;
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
.field public final synthetic b:Le/a/l/e0$c;


# direct methods
.method public constructor <init>(Le/a/l/e0$c;)V
    .locals 0

    iput-object p1, p0, Le/a/l/f0;->b:Le/a/l/e0$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/f0;->b:Le/a/l/e0$c;

    iget-object v0, v0, Le/a/l/e0$c;->b:Le/a/l/e0;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/t1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/l/t1;->nm()V

    .line 4
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
