.class public final Le/m/a/c/p1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/c/p1/f0;

.field public final c:Le/m/a/c/p1/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/c/p1/t;

    invoke-direct {v0, p2, p3}, Le/m/a/c/p1/t;-><init>(Ljava/lang/String;Le/m/a/c/p1/f0;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/p1/r;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Le/m/a/c/p1/r;->b:Le/m/a/c/p1/f0;

    .line 5
    iput-object v0, p0, Le/m/a/c/p1/r;->c:Le/m/a/c/p1/l$a;

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/p1/l;
    .locals 3

    .line 1
    new-instance v0, Le/m/a/c/p1/q;

    iget-object v1, p0, Le/m/a/c/p1/r;->a:Landroid/content/Context;

    iget-object v2, p0, Le/m/a/c/p1/r;->c:Le/m/a/c/p1/l$a;

    .line 2
    invoke-interface {v2}, Le/m/a/c/p1/l$a;->a()Le/m/a/c/p1/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/m/a/c/p1/q;-><init>(Landroid/content/Context;Le/m/a/c/p1/l;)V

    .line 3
    iget-object v1, p0, Le/m/a/c/p1/r;->b:Le/m/a/c/p1/f0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Le/m/a/c/p1/q;->c(Le/m/a/c/p1/f0;)V

    :cond_0
    return-object v0
.end method
