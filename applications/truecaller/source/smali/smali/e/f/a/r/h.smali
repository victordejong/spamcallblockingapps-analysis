.class public Le/f/a/r/h;
.super Le/f/a/r/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/a<",
        "Le/f/a/r/h;",
        ">;"
    }
.end annotation


# static fields
.field public static A:Le/f/a/r/h;

.field public static B:Le/f/a/r/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/r/a;-><init>()V

    return-void
.end method

.method public static H()Le/f/a/r/h;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/r/h;->B:Le/f/a/r/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/a/r/h;

    invoke-direct {v0}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v0}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    invoke-virtual {v0}, Le/f/a/r/a;->b()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    sput-object v0, Le/f/a/r/h;->B:Le/f/a/r/h;

    .line 3
    :cond_0
    sget-object v0, Le/f/a/r/h;->B:Le/f/a/r/h;

    return-object v0
.end method

.method public static J(Le/f/a/n/o/k;)Le/f/a/r/h;
    .locals 1

    .line 1
    new-instance v0, Le/f/a/r/h;

    invoke-direct {v0}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v0, p0}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object p0

    check-cast p0, Le/f/a/r/h;

    return-object p0
.end method
