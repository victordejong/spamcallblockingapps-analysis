.class public final Le/m/a/c/p1/h0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l$a;


# instance fields
.field public final a:Le/m/a/c/p1/h0/c;

.field public final b:Le/m/a/c/p1/l$a;

.field public final c:Le/m/a/c/p1/l$a;

.field public final d:I

.field public final e:Le/m/a/c/p1/j$a;

.field public final f:Le/m/a/c/p1/h0/f$a;

.field public final g:Le/m/a/c/p1/h0/k;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V
    .locals 8

    .line 1
    new-instance v3, Le/m/a/c/p1/w$a;

    invoke-direct {v3}, Le/m/a/c/p1/w$a;-><init>()V

    new-instance v4, Le/m/a/c/p1/h0/e;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Le/m/a/c/p1/h0/e;-><init>(Le/m/a/c/p1/h0/c;J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Le/m/a/c/p1/h0/g;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;Le/m/a/c/p1/l$a;Le/m/a/c/p1/j$a;ILe/m/a/c/p1/h0/f$a;Le/m/a/c/p1/h0/k;)V

    return-void
.end method

.method public constructor <init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;Le/m/a/c/p1/l$a;Le/m/a/c/p1/j$a;ILe/m/a/c/p1/h0/f$a;Le/m/a/c/p1/h0/k;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Le/m/a/c/p1/h0/g;->a:Le/m/a/c/p1/h0/c;

    .line 5
    iput-object p2, p0, Le/m/a/c/p1/h0/g;->b:Le/m/a/c/p1/l$a;

    .line 6
    iput-object p3, p0, Le/m/a/c/p1/h0/g;->c:Le/m/a/c/p1/l$a;

    .line 7
    iput-object p4, p0, Le/m/a/c/p1/h0/g;->e:Le/m/a/c/p1/j$a;

    .line 8
    iput p5, p0, Le/m/a/c/p1/h0/g;->d:I

    .line 9
    iput-object p6, p0, Le/m/a/c/p1/h0/g;->f:Le/m/a/c/p1/h0/f$a;

    .line 10
    iput-object p7, p0, Le/m/a/c/p1/h0/g;->g:Le/m/a/c/p1/h0/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Le/m/a/c/p1/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/p1/h0/g;->b()Le/m/a/c/p1/h0/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/m/a/c/p1/h0/f;
    .locals 9

    .line 1
    new-instance v8, Le/m/a/c/p1/h0/f;

    iget-object v1, p0, Le/m/a/c/p1/h0/g;->a:Le/m/a/c/p1/h0/c;

    iget-object v0, p0, Le/m/a/c/p1/h0/g;->b:Le/m/a/c/p1/l$a;

    .line 2
    invoke-interface {v0}, Le/m/a/c/p1/l$a;->a()Le/m/a/c/p1/l;

    move-result-object v2

    iget-object v0, p0, Le/m/a/c/p1/h0/g;->c:Le/m/a/c/p1/l$a;

    .line 3
    invoke-interface {v0}, Le/m/a/c/p1/l$a;->a()Le/m/a/c/p1/l;

    move-result-object v3

    iget-object v0, p0, Le/m/a/c/p1/h0/g;->e:Le/m/a/c/p1/j$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Le/m/a/c/p1/h0/e;

    .line 5
    new-instance v4, Le/m/a/c/p1/h0/d;

    iget-object v0, v0, Le/m/a/c/p1/h0/e;->a:Le/m/a/c/p1/h0/c;

    const-wide/32 v5, 0x500000

    const/16 v7, 0x5000

    invoke-direct {v4, v0, v5, v6, v7}, Le/m/a/c/p1/h0/d;-><init>(Le/m/a/c/p1/h0/c;JI)V

    .line 6
    :goto_0
    iget v5, p0, Le/m/a/c/p1/h0/g;->d:I

    iget-object v6, p0, Le/m/a/c/p1/h0/g;->f:Le/m/a/c/p1/h0/f$a;

    iget-object v7, p0, Le/m/a/c/p1/h0/g;->g:Le/m/a/c/p1/h0/k;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le/m/a/c/p1/h0/f;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l;Le/m/a/c/p1/l;Le/m/a/c/p1/j;ILe/m/a/c/p1/h0/f$a;Le/m/a/c/p1/h0/k;)V

    return-object v8
.end method
