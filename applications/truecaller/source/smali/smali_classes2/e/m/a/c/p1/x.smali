.class public abstract Le/m/a/c/p1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l$a;


# instance fields
.field public final a:Le/m/a/c/p1/a0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/p1/a0;

    invoke-direct {v0}, Le/m/a/c/p1/a0;-><init>()V

    iput-object v0, p0, Le/m/a/c/p1/x;->a:Le/m/a/c/p1/a0;

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/p1/l;
    .locals 8

    .line 1
    iget-object v5, p0, Le/m/a/c/p1/x;->a:Le/m/a/c/p1/a0;

    move-object v6, p0

    check-cast v6, Le/m/a/c/p1/t;

    .line 2
    new-instance v7, Le/m/a/c/p1/s;

    iget-object v1, v6, Le/m/a/c/p1/t;->b:Ljava/lang/String;

    iget v2, v6, Le/m/a/c/p1/t;->d:I

    iget v3, v6, Le/m/a/c/p1/t;->e:I

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Le/m/a/c/p1/s;-><init>(Ljava/lang/String;IIZLe/m/a/c/p1/a0;)V

    .line 3
    iget-object v0, v6, Le/m/a/c/p1/t;->c:Le/m/a/c/p1/f0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v7, v0}, Le/m/a/c/p1/g;->c(Le/m/a/c/p1/f0;)V

    :cond_0
    return-object v7
.end method
