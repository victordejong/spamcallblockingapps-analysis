.class public Le/q/f/a/f/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Le/q/f/a/c/d;

.field public e:I


# direct methods
.method public constructor <init>(IIILe/q/f/a/c/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/q/f/a/f/l;->a:I

    .line 3
    iput p2, p0, Le/q/f/a/f/l;->b:I

    .line 4
    iput p3, p0, Le/q/f/a/f/l;->c:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/q/f/a/f/l;->d:Le/q/f/a/c/d;

    .line 6
    iput p5, p0, Le/q/f/a/f/l;->e:I

    return-void
.end method
