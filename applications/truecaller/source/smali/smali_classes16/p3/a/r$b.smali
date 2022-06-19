.class public Lp3/a/r$b;
.super Lp3/a/r$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/r$c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp3/a/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lp3/a/r$c;-><init>()V

    return-void
.end method
