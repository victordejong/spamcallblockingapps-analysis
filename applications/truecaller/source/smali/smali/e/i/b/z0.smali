.class public final synthetic Le/i/b/z0;
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

    iput-object p1, p0, Le/i/b/z0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/i/b/z0;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/h2;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->q()Le/i/b/y1;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Le/i/b/h2;-><init>(Le/i/b/y1;Le/i/b/e2;Le/i/b/w1/c;)V

    return-object v1
.end method
