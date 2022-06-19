.class public final Le/a/a/k/a/y0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:[B

.field public final c:I


# direct methods
.method public constructor <init>(J[BII)V
    .locals 0

    const-string p4, "data"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/a/k/a/y0$a;->a:J

    iput-object p3, p0, Le/a/a/k/a/y0$a;->b:[B

    iput p5, p0, Le/a/a/k/a/y0$a;->c:I

    return-void
.end method
