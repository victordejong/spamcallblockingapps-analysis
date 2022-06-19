.class public Le/i/b/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x1;


# instance fields
.field public final synthetic a:Le/i/b/t2;


# direct methods
.method public constructor <init>(Le/i/b/t2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/r2;->a:Le/i/b/t2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Le/i/b/r2;->a:Le/i/b/t2;

    invoke-virtual {v0}, Le/i/b/t2;->b()V

    .line 3
    iget-object v0, p0, Le/i/b/r2;->a:Le/i/b/t2;

    .line 4
    iget-object v0, v0, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 5
    sget-object v1, Le/i/b/s2/o;->c:Le/i/b/s2/o;

    iput-object v1, v0, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/r2;->a:Le/i/b/t2;

    invoke-virtual {p1}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/t2;->a(Ljava/lang/String;)V

    return-void
.end method
