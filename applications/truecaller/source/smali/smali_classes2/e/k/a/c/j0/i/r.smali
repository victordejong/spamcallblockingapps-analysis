.class public abstract Le/k/a/c/j0/i/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/j0/f;


# instance fields
.field public final a:Le/k/a/c/m0/o;

.field public final b:Le/k/a/c/i;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/m0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/j0/i/r;->a:Le/k/a/c/m0/o;

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/i;)V
    .locals 0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1, v0}, Le/k/a/c/j0/f;->e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
