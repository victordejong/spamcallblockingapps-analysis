.class public Le/i/b/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x1;


# instance fields
.field public final synthetic a:Le/i/b/m2;


# direct methods
.method public constructor <init>(Le/i/b/m2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/j2;->a:Le/i/b/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Le/i/b/j2;->a:Le/i/b/m2;

    sget-object v1, Le/i/b/v2;->b:Le/i/b/v2;

    invoke-virtual {v0, v1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/j2;->a:Le/i/b/m2;

    sget-object v1, Le/i/b/v2;->a:Le/i/b/v2;

    invoke-virtual {v0, v1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    .line 2
    iget-object v0, p0, Le/i/b/j2;->a:Le/i/b/m2;

    invoke-virtual {p1}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/m2;->b(Ljava/lang/String;)V

    return-void
.end method
