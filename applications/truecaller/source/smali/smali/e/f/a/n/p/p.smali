.class public Le/f/a/n/p/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/p/p$a;
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/p/r;

.field public final b:Le/f/a/n/p/p$a;


# direct methods
.method public constructor <init>(Ln3/k/h/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/k/h/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/n/p/r;

    invoke-direct {v0, p1}, Le/f/a/n/p/r;-><init>(Ln3/k/h/e;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Le/f/a/n/p/p$a;

    invoke-direct {p1}, Le/f/a/n/p/p$a;-><init>()V

    iput-object p1, p0, Le/f/a/n/p/p;->b:Le/f/a/n/p/p$a;

    .line 4
    iput-object v0, p0, Le/f/a/n/p/p;->a:Le/f/a/n/p/r;

    return-void
.end method
