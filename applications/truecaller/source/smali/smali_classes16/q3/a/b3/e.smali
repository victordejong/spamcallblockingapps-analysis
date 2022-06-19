.class public final Lq3/a/b3/e;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/b3/d;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq3/a/b3/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq3/a/b3/e;->b:Lq3/a/b3/d;

    iput-object p2, p0, Lq3/a/b3/e;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lq3/a/b3/e;->b:Lq3/a/b3/d;

    iget-object v0, p0, Lq3/a/b3/e;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lq3/a/b3/d;->c(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
