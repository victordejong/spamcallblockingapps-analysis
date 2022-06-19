.class public Lp3/a/o1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/y2;


# instance fields
.field public final a:Lv3/f;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lv3/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/o1/k;->a:Lv3/f;

    .line 3
    iput p2, p0, Lp3/a/o1/k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lp3/a/o1/k;->b:I

    return v0
.end method

.method public b(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/k;->a:Lv3/f;

    invoke-virtual {v0, p1}, Lv3/f;->B0(I)Lv3/f;

    .line 2
    iget p1, p0, Lp3/a/o1/k;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lp3/a/o1/k;->b:I

    .line 3
    iget p1, p0, Lp3/a/o1/k;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp3/a/o1/k;->c:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lp3/a/o1/k;->c:I

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/k;->a:Lv3/f;

    invoke-virtual {v0, p1, p2, p3}, Lv3/f;->z0([BII)Lv3/f;

    .line 2
    iget p1, p0, Lp3/a/o1/k;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lp3/a/o1/k;->b:I

    .line 3
    iget p1, p0, Lp3/a/o1/k;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lp3/a/o1/k;->c:I

    return-void
.end method
