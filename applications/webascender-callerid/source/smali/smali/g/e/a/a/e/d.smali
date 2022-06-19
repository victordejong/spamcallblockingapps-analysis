.class public abstract Lg/e/a/a/e/d;
.super Lg/e/a/a/e/h;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/i;",
        ">",
        "Lg/e/a/a/e/h<",
        "TT;>;",
        "Lg/e/a/a/h/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected v:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/e/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0xff

    const/16 p2, 0xbb

    const/16 v0, 0x73

    .line 2
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lg/e/a/a/e/d;->v:I

    return-void
.end method


# virtual methods
.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/d;->v:I

    return v0
.end method
