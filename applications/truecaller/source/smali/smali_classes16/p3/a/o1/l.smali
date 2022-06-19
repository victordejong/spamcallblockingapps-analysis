.class public Lp3/a/o1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/z2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lp3/a/n1/y2;
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Lp3/a/o1/k;

    new-instance v1, Lv3/f;

    invoke-direct {v1}, Lv3/f;-><init>()V

    invoke-direct {v0, v1, p1}, Lp3/a/o1/k;-><init>(Lv3/f;I)V

    return-object v0
.end method
