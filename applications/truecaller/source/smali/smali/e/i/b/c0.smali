.class public final synthetic Le/i/b/c0;
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

    iput-object p1, p0, Le/i/b/c0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/i/b/c0;->a:Le/i/b/x2;

    .line 1
    new-instance v7, Le/i/b/u2/c0;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v1, v0, Le/i/b/x2;->c:Ljava/lang/String;

    invoke-static {v1}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v3, v0, Le/i/b/x2;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v5

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/i/b/u2/c0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/i/b/s2/f;Le/i/b/d2/c;Le/i/b/s2/b;)V

    return-object v7

    .line 8
    :cond_0
    new-instance v0, Le/i/b/w2;

    const-string v1, "Criteo Publisher Id is required"

    invoke-direct {v0, v1}, Le/i/b/w2;-><init>(Ljava/lang/String;)V

    throw v0
.end method
