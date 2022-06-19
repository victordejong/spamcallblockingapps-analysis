.class public final Le/a/c/a/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/b/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/b/b/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/l/a/a;


# direct methods
.method public constructor <init>(Le/a/c/l/a/a;Le/a/c/a/b/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/b/b/b;->a:Le/a/c/l/a/a;

    return-void
.end method

.method public static a()Le/a/c/a/b/b/b$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/c/a/b/b/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/b/b/b$b;-><init>(Le/a/c/a/b/b/b$a;)V

    return-object v0
.end method
