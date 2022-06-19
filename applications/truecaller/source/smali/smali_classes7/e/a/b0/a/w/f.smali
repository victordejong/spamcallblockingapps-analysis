.class public abstract Le/a/b0/a/w/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 1
    iget v0, p0, Le/a/b0/a/w/f;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Le/a/b0/a/w/f;->b:I

    .line 3
    :cond_0
    iget p1, p0, Le/a/b0/a/w/f;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq v2, p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Le/a/b0/a/w/f;->a:I

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 6
    :goto_1
    move-object p1, p0

    check-cast p1, Le/a/e/u1;

    .line 7
    iget-object p1, p1, Le/a/e/u1;->c:Lcom/truecaller/ui/TruecallerInit;

    invoke-virtual {p1, v0}, Lcom/truecaller/ui/TruecallerInit;->v7(Z)V

    .line 8
    :cond_3
    iput p2, p0, Le/a/b0/a/w/f;->a:I

    return-void
.end method
