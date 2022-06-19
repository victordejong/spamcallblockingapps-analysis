.class public abstract Le/a/b/a/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/a/i/a$b;,
        Le/a/b/a/i/a$a;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/a/i/a;->a:I

    return-void
.end method

.method public constructor <init>(ILs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/a/i/a;->a:I

    return-void
.end method
