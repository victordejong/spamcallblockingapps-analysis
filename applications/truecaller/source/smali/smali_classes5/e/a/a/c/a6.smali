.class public final Le/a/a/c/a6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/c/a6;->a:I

    iput p2, p0, Le/a/a/c/a6;->b:I

    iput p3, p0, Le/a/a/c/a6;->c:I

    iput p4, p0, Le/a/a/c/a6;->d:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const p3, 0x7f04068f

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const p4, 0x7f04068d

    .line 2
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/c/a6;->a:I

    iput p2, p0, Le/a/a/c/a6;->b:I

    iput p3, p0, Le/a/a/c/a6;->c:I

    iput p4, p0, Le/a/a/c/a6;->d:I

    return-void
.end method
