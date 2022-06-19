.class public final Le/m/a/c/j1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/p1/h0/c;

.field public final b:Le/m/a/c/p1/h0/k;

.field public final c:Le/m/a/c/q1/v;

.field public final d:Le/m/a/c/p1/h0/g;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Le/m/a/c/p1/w$a;

    invoke-direct {v3}, Le/m/a/c/p1/w$a;-><init>()V

    .line 3
    new-instance v4, Le/m/a/c/p1/h0/e;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Le/m/a/c/p1/h0/e;-><init>(Le/m/a/c/p1/h0/c;J)V

    .line 4
    new-instance v8, Le/m/a/c/p1/h0/g;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Le/m/a/c/p1/h0/g;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;Le/m/a/c/p1/l$a;Le/m/a/c/p1/j$a;ILe/m/a/c/p1/h0/f$a;Le/m/a/c/p1/h0/k;)V

    iput-object v8, p0, Le/m/a/c/j1/k;->d:Le/m/a/c/p1/h0/g;

    .line 5
    sget p2, Le/m/a/c/p1/v;->a:I

    .line 6
    iput-object p1, p0, Le/m/a/c/j1/k;->a:Le/m/a/c/p1/h0/c;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/m/a/c/j1/k;->c:Le/m/a/c/q1/v;

    .line 8
    iput-object p1, p0, Le/m/a/c/j1/k;->b:Le/m/a/c/p1/h0/k;

    return-void
.end method
