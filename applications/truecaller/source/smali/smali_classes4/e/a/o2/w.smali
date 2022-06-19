.class public final Le/a/o2/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/z/b/a<",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/o2/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/o2/w;

    invoke-direct {v0}, Le/a/o2/w;-><init>()V

    sput-object v0, Le/a/o2/w;->b:Le/a/o2/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 2
    new-instance v1, Le/a/o2/v;

    invoke-direct {v1, v0}, Le/a/o2/v;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
