.class public final Le/m/a/c/l1/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Le/m/a/c/p1/c;

.field public e:Le/m/a/c/l1/u$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/c/l1/u$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Le/m/a/c/l1/u$a;->b:J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/l1/u$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Le/m/a/c/l1/u$a;->d:Le/m/a/c/p1/c;

    iget p2, p2, Le/m/a/c/p1/c;->b:I

    add-int/2addr p1, p2

    return p1
.end method
