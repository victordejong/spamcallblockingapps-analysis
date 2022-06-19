.class public Le/f/a/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/f/a/n/o/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/u<",
            "***>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Le/f/a/t/i;",
            "Le/f/a/n/o/u<",
            "***>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/f/a/t/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Le/f/a/n/o/u;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    new-instance v0, Le/f/a/n/o/j;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Le/f/a/n/q/i/g;

    invoke-direct {v12}, Le/f/a/n/q/i/g;-><init>()V

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Le/f/a/n/o/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Le/f/a/n/q/i/e;Ln3/k/h/e;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/f/a/n/o/u;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ln3/k/h/e;)V

    sput-object v6, Le/f/a/q/c;->c:Le/f/a/n/o/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Le/f/a/q/c;->a:Ln3/g/a;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/f/a/q/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
