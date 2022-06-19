.class public abstract Le/a/b/a/a/c/e/b$a;
.super Le/a/b/a/a/c/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/a/c/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/a/c/e/b$a$a;,
        Le/a/b/a/a/c/e/b$a$d;,
        Le/a/b/a/a/c/e/b$a$b;,
        Le/a/b/a/a/c/e/b$a$c;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILs1/z/c/f;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Le/a/b/a/a/c/e/b;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/b/a/a/c/e/b$a;->a:I

    return-void
.end method
