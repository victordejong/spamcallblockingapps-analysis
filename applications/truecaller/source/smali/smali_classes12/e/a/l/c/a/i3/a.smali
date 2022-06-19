.class public final Le/a/l/c/a/i3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/l/c/a/i3/a;->a:I

    iput p2, p0, Le/a/l/c/a/i3/a;->b:I

    iput-boolean p3, p0, Le/a/l/c/a/i3/a;->c:Z

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 2
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/l/c/a/i3/a;->a:I

    iput p2, p0, Le/a/l/c/a/i3/a;->b:I

    iput-boolean p3, p0, Le/a/l/c/a/i3/a;->c:Z

    return-void
.end method
