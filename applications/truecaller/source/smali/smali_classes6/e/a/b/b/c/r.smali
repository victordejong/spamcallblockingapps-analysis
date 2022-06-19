.class public abstract Le/a/b/b/c/r;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/c/r$a;,
        Le/a/b/b/c/r$b;,
        Le/a/b/b/c/r$d;,
        Le/a/b/b/c/r$e;,
        Le/a/b/b/c/r$c;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILs1/z/c/f;)V
    .locals 0

    const-string p2, "Save profile failed with code "

    .line 1
    invoke-static {p2, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Le/a/b/b/c/r;->a:I

    return-void
.end method
