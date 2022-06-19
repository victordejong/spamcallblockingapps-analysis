.class public Le/a/r2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/g0$b;
    }
.end annotation


# static fields
.field public static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/content/Context;

.field public final c:Le/a/r2/a0;

.field public final d:Le/a/r2/n;

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Le/a/r2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Le/a/r2/g0;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/r2/a0;Le/a/r2/n;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/r2/a0;",
            "Le/a/r2/n;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r2/i;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/r2/g0;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/r2/g0;->c:Le/a/r2/a0;

    .line 4
    iput-object p3, p0, Le/a/r2/g0;->d:Le/a/r2/n;

    .line 5
    iput-object p4, p0, Le/a/r2/g0;->e:Ljava/lang/Class;

    .line 6
    iput p5, p0, Le/a/r2/g0;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Le/a/r2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Le/a/r2/g0$b;

    iget-object v1, p0, Le/a/r2/g0;->b:Landroid/content/Context;

    iget-object v2, p0, Le/a/r2/g0;->d:Le/a/r2/n;

    iget-object v3, p0, Le/a/r2/g0;->e:Ljava/lang/Class;

    iget v4, p0, Le/a/r2/g0;->a:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Le/a/r2/g0$b;-><init>(Landroid/content/Context;Le/a/r2/n;Ljava/lang/Class;ILjava/lang/Object;Le/a/r2/g0$a;)V

    .line 2
    iget-object p2, p0, Le/a/r2/g0;->c:Le/a/r2/a0;

    invoke-interface {p2, p1, v7}, Le/a/r2/a0;->a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/r2/g;

    invoke-direct {p2, p1}, Le/a/r2/g;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
