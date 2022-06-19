.class public Le/m/a/c/g1/e0/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/s;

.field public final synthetic b:Le/m/a/c/g1/e0/b0;


# direct methods
.method public constructor <init>(Le/m/a/c/g1/e0/b0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/e0/b0$a;->b:Le/m/a/c/g1/e0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/m/a/c/q1/s;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    return-void
.end method


# virtual methods
.method public b(Le/m/a/c/q1/c0;Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 0

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Le/m/a/c/q1/t;->q()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 3
    invoke-virtual {p1}, Le/m/a/c/q1/t;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v4, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    invoke-virtual {p1, v4, v1}, Le/m/a/c/q1/t;->c(Le/m/a/c/q1/s;I)V

    .line 5
    iget-object v4, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Le/m/a/c/q1/s;->l(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Le/m/a/c/g1/e0/b0$a;->a:Le/m/a/c/q1/s;

    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    .line 9
    iget-object v5, p0, Le/m/a/c/g1/e0/b0$a;->b:Le/m/a/c/g1/e0/b0;

    .line 10
    iget-object v6, v5, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    .line 11
    new-instance v7, Le/m/a/c/g1/e0/w;

    new-instance v8, Le/m/a/c/g1/e0/b0$b;

    invoke-direct {v8, v5, v4}, Le/m/a/c/g1/e0/b0$b;-><init>(Le/m/a/c/g1/e0/b0;I)V

    invoke-direct {v7, v8}, Le/m/a/c/g1/e0/w;-><init>(Le/m/a/c/g1/e0/v;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v4, p0, Le/m/a/c/g1/e0/b0$a;->b:Le/m/a/c/g1/e0/b0;

    .line 13
    iget v5, v4, Le/m/a/c/g1/e0/b0;->l:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Le/m/a/c/g1/e0/b0;->l:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Le/m/a/c/g1/e0/b0$a;->b:Le/m/a/c/g1/e0/b0;

    .line 15
    iget v0, p1, Le/m/a/c/g1/e0/b0;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 16
    iget-object p1, p1, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method
