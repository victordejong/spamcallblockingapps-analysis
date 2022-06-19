.class public abstract Le/a/b0/n/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/n/h$e;,
        Le/a/b0/n/h$b;,
        Le/a/b0/n/h$a;,
        Le/a/b0/n/h$c;,
        Le/a/b0/n/h$d;,
        Le/a/b0/n/h$f;,
        Le/a/b0/n/h$g;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b0/n/h;->b:I

    const/16 p2, 0xc8

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12b

    if-lt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    :goto_1
    iput-boolean p1, p0, Le/a/b0/n/h;->a:Z

    return-void
.end method
