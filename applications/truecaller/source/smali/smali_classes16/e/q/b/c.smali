.class public Le/q/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/q/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/q/b/c;->c:Z

    .line 3
    iput-char p1, p0, Le/q/b/c;->a:C

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le/q/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/q/b/c;->b:Ljava/util/List;

    return-void
.end method
