.class public final Le/a/b/a/a/d/d/b;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R0\u0010\r\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00070\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Le/a/b/a/a/d/d/b;",
        "Ln3/v/y0;",
        "Le/a/g5/c0/a;",
        "b",
        "Le/a/g5/c0/a;",
        "tagRepository",
        "Ln3/v/i0;",
        "Ls1/k;",
        "",
        "",
        "Le/a/b0/p/c;",
        "a",
        "Ln3/v/i0;",
        "_tagLiveData",
        "<init>",
        "(Le/a/g5/c0/a;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ln3/v/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/i0<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/g5/c0/a;


# direct methods
.method public constructor <init>(Le/a/g5/c0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tagRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/d/d/b;->b:Le/a/g5/c0/a;

    .line 2
    new-instance p1, Ln3/v/i0;

    invoke-direct {p1}, Ln3/v/i0;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/d/d/b;->a:Ln3/v/i0;

    return-void
.end method

.method public static c(Le/a/b/a/a/d/d/b;JLjava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    iget-object p4, p0, Le/a/b/a/a/d/d/b;->a:Ln3/v/i0;

    iget-object v0, p0, Le/a/b/a/a/d/d/b;->b:Le/a/g5/c0/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/g5/c0/a;->a(JLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Le/a/b/a/a/d/d/a;

    invoke-direct {p2, p0, p3}, Le/a/b/a/a/d/d/a;-><init>(Le/a/b/a/a/d/d/b;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-void
.end method
