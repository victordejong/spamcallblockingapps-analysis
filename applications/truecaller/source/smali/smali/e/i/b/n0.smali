.class public final synthetic Le/i/b/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/n0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le/i/b/n0;->a:Le/i/b/x2;

    .line 1
    new-instance v9, Le/i/b/p1/a;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->d()Le/i/b/i2/g;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->r()Le/i/b/l2/b;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->x()Le/i/b/u2/y;

    move-result-object v7

    .line 8
    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Le/i/b/p1/a;-><init>(Landroid/content/Context;Le/i/b/s2/b;Le/i/b/e2;Le/i/b/i2/g;Le/i/b/l2/b;Le/i/b/u2/y;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method
