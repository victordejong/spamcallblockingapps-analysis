.class public abstract Le/m/a/b/j/y/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/b/j/y/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/m/a/b/j/y/g;
    .locals 4

    .line 1
    new-instance v0, Le/m/a/b/j/y/b;

    sget-object v1, Le/m/a/b/j/y/g$a;->c:Le/m/a/b/j/y/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Le/m/a/b/j/y/b;-><init>(Le/m/a/b/j/y/g$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Le/m/a/b/j/y/g$a;
.end method
