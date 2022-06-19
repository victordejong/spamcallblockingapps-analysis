.class public final Le/m/a/c/g1/a0/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/a0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Le/m/a/c/g1/a0/d$d;->a:[B

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/g1/a0/d$c;)V
    .locals 8

    .line 1
    iget v0, p0, Le/m/a/c/g1/a0/d$d;->c:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p1, Le/m/a/c/g1/a0/d$c;->V:Le/m/a/c/g1/s;

    iget-wide v2, p0, Le/m/a/c/g1/a0/d$d;->d:J

    iget v4, p0, Le/m/a/c/g1/a0/d$d;->e:I

    iget v5, p0, Le/m/a/c/g1/a0/d$d;->f:I

    iget v6, p0, Le/m/a/c/g1/a0/d$d;->g:I

    iget-object v7, p1, Le/m/a/c/g1/a0/d$c;->i:Le/m/a/c/g1/s$a;

    invoke-interface/range {v1 .. v7}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/m/a/c/g1/a0/d$d;->c:I

    :cond_0
    return-void
.end method
