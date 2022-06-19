.class public final Le/a/p5/s0/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/f;


# direct methods
.method public constructor <init>(Lu3/f;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/o;->b:Lu3/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/p5/s0/o;->b:Lu3/f;

    invoke-interface {p1}, Lu3/f;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
