.class public final Le/a/d/c0/j0;
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
.field public final synthetic b:Lq3/a/w2/z;


# direct methods
.method public constructor <init>(Lq3/a/w2/z;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/j0;->b:Lq3/a/w2/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Le/a/d/c0/j0;->b:Lq3/a/w2/z;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
