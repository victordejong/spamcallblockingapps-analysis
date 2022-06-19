.class public Lw3/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[C

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lw3/e/a/a;->a:[C

    .line 3
    iput p2, p0, Lw3/e/a/a;->b:I

    .line 4
    iput p3, p0, Lw3/e/a/a;->c:I

    return-void
.end method
