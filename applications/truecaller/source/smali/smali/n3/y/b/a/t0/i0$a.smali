.class public final Ln3/y/b/a/t0/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Ln3/y/b/a/w0/a;

.field public e:Ln3/y/b/a/t0/i0$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ln3/y/b/a/t0/i0$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Ln3/y/b/a/t0/i0$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/i0$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Ln3/y/b/a/t0/i0$a;->d:Ln3/y/b/a/w0/a;

    iget p2, p2, Ln3/y/b/a/w0/a;->b:I

    add-int/2addr p1, p2

    return p1
.end method
