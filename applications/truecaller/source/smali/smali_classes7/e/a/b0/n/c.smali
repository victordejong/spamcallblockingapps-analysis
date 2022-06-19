.class public final Le/a/b0/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b0/n/c;->b:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2
    :goto_1
    iput-boolean p1, p0, Le/a/b0/n/c;->a:Z

    return-void
.end method
