.class public final Ln3/y/b/a/y0/d$d;
.super Ln3/y/b/a/r0/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/y0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ln3/y/b/a/r0/a;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/y/b/a/r0/b$a;-><init>(Ljava/lang/Throwable;Ln3/y/b/a/r0/a;)V

    .line 2
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p1

    :cond_0
    return-void
.end method
