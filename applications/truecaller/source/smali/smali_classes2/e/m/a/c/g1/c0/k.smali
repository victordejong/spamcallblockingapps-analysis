.class public final Le/m/a/c/g1/c0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/m/a/c/g1/c0/c;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[J

.field public k:[Z

.field public l:Z

.field public m:[Z

.field public n:Le/m/a/c/g1/c0/j;

.field public o:I

.field public p:Le/m/a/c/q1/t;

.field public q:Z

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/c/q1/t;->c:I

    if-ge v0, p1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0, p1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/c0/k;->p:Le/m/a/c/q1/t;

    .line 4
    :cond_1
    iput p1, p0, Le/m/a/c/g1/c0/k;->o:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/m/a/c/g1/c0/k;->l:Z

    .line 6
    iput-boolean p1, p0, Le/m/a/c/g1/c0/k;->q:Z

    return-void
.end method
