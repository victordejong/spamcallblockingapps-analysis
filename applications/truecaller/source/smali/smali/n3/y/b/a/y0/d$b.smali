.class public final Ln3/y/b/a/y0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/y0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/y0/d$b;->a:I

    .line 3
    iput p2, p0, Ln3/y/b/a/y0/d$b;->b:I

    .line 4
    iput p3, p0, Ln3/y/b/a/y0/d$b;->c:I

    return-void
.end method
