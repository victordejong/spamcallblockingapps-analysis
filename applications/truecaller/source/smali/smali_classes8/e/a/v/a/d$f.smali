.class public abstract Le/a/v/a/d$f;
.super Le/a/v/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v/a/d$f$b;,
        Le/a/v/a/d$f$c;,
        Le/a/v/a/d$f$d;,
        Le/a/v/a/d$f$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZLs1/z/c/f;)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p3}, Le/a/v/a/d;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/v/a/d$f;->a:I

    iput-boolean p2, p0, Le/a/v/a/d$f;->b:Z

    return-void
.end method
