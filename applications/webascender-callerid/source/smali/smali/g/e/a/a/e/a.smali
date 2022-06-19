.class public Lg/e/a/a/e/a;
.super Lg/e/a/a/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/e/c<",
        "Lg/e/a/a/h/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/e/a/a/e/c;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 2
    iput v0, p0, Lg/e/a/a/e/a;->j:F

    return-void
.end method


# virtual methods
.method public u()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/a;->j:F

    return v0
.end method
