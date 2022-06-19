.class public final Le/k/a/c/d0/y/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/y/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/k/a/c/d0/u;

.field public final b:Le/k/a/c/j0/e;

.field public final c:Ljava/lang/String;

.field public d:Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/u;Le/k/a/c/j0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/g$b;->a:Le/k/a/c/d0/u;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/g$b;->b:Le/k/a/c/j0/e;

    .line 4
    invoke-virtual {p2}, Le/k/a/c/j0/e;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/d0/y/g$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/g$b;->b:Le/k/a/c/j0/e;

    invoke-virtual {v0}, Le/k/a/c/j0/e;->g()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Le/k/a/c/d0/y/g$b;->b:Le/k/a/c/j0/e;

    invoke-virtual {v2}, Le/k/a/c/j0/e;->i()Le/k/a/c/j0/f;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Le/k/a/c/j0/f;->e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
