.class public final Le/a/a/p0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Le/a/c/g/a;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(IILe/a/c/g/a;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/p0/a;->a:I

    iput p2, p0, Le/a/a/p0/a;->b:I

    iput-object p3, p0, Le/a/a/p0/a;->c:Le/a/c/g/a;

    iput-boolean p4, p0, Le/a/a/p0/a;->d:Z

    iput-boolean p5, p0, Le/a/a/p0/a;->e:Z

    return-void
.end method

.method public constructor <init>(IILe/a/c/g/a;ZZI)V
    .locals 2

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p4, v1

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move p5, v1

    .line 2
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/p0/a;->a:I

    iput p2, p0, Le/a/a/p0/a;->b:I

    iput-object p3, p0, Le/a/a/p0/a;->c:Le/a/c/g/a;

    iput-boolean p4, p0, Le/a/a/p0/a;->d:Z

    iput-boolean p5, p0, Le/a/a/p0/a;->e:Z

    return-void
.end method
