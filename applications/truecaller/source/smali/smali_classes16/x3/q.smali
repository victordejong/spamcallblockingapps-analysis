.class public final Lx3/q;
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
.field public final synthetic b:Lx3/b;


# direct methods
.method public constructor <init>(Lx3/b;)V
    .locals 0

    iput-object p1, p0, Lx3/q;->b:Lx3/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object p1, p0, Lx3/q;->b:Lx3/b;

    invoke-interface {p1}, Lx3/b;->cancel()V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
