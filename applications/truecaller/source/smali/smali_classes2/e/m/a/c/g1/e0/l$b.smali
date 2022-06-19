.class public final Le/m/a/c/g1/e0/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/e0/l$b$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/s;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/q1/r$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/q1/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/m/a/c/q1/u;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Le/m/a/c/g1/e0/l$b$a;

.field public n:Le/m/a/c/g1/e0/l$b$a;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Le/m/a/c/g1/s;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->a:Le/m/a/c/g1/s;

    .line 3
    iput-boolean p2, p0, Le/m/a/c/g1/e0/l$b;->b:Z

    .line 4
    iput-boolean p3, p0, Le/m/a/c/g1/e0/l$b;->c:Z

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->d:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->e:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Le/m/a/c/g1/e0/l$b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/m/a/c/g1/e0/l$b$a;-><init>(Le/m/a/c/g1/e0/l$a;)V

    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->m:Le/m/a/c/g1/e0/l$b$a;

    .line 8
    new-instance p1, Le/m/a/c/g1/e0/l$b$a;

    invoke-direct {p1, p2}, Le/m/a/c/g1/e0/l$b$a;-><init>(Le/m/a/c/g1/e0/l$a;)V

    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->n:Le/m/a/c/g1/e0/l$b$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Le/m/a/c/g1/e0/l$b;->g:[B

    .line 10
    new-instance p2, Le/m/a/c/q1/u;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Le/m/a/c/q1/u;-><init>([BII)V

    iput-object p2, p0, Le/m/a/c/g1/e0/l$b;->f:Le/m/a/c/q1/u;

    .line 11
    iput-boolean p3, p0, Le/m/a/c/g1/e0/l$b;->k:Z

    .line 12
    iput-boolean p3, p0, Le/m/a/c/g1/e0/l$b;->o:Z

    .line 13
    iget-object p1, p0, Le/m/a/c/g1/e0/l$b;->n:Le/m/a/c/g1/e0/l$b$a;

    .line 14
    iput-boolean p3, p1, Le/m/a/c/g1/e0/l$b$a;->b:Z

    .line 15
    iput-boolean p3, p1, Le/m/a/c/g1/e0/l$b$a;->a:Z

    return-void
.end method
