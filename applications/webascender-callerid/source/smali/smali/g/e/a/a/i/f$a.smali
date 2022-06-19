.class Lg/e/a/a/i/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:F


# direct methods
.method public constructor <init>(Lg/e/a/a/i/f;JF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lg/e/a/a/i/f$a;->a:J

    .line 3
    iput p4, p0, Lg/e/a/a/i/f$a;->b:F

    return-void
.end method
