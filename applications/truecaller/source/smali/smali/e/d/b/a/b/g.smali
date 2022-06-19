.class public Le/d/b/a/b/g;
.super Le/d/b/a/b/f;
.source "SourceFile"


# instance fields
.field public b:Le/d/b/a/b/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/d/b/a/b/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Le/d/b/a/b/f;-><init>(Le/d/b/a/b/m;)V

    .line 3
    iput-object p2, p0, Le/d/b/a/b/g;->b:Le/d/b/a/b/j;

    return-void
.end method
