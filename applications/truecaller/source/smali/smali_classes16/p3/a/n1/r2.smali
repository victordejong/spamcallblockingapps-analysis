.class public final Lp3/a/n1/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lp3/a/n1/r2;


# instance fields
.field public final a:[Lp3/a/j1;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/r2;

    const/4 v1, 0x0

    new-array v1, v1, [Lp3/a/j1;

    invoke-direct {v0, v1}, Lp3/a/n1/r2;-><init>([Lp3/a/j1;)V

    sput-object v0, Lp3/a/n1/r2;->c:Lp3/a/n1/r2;

    return-void
.end method

.method public constructor <init>([Lp3/a/j1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lp3/a/n1/r2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
