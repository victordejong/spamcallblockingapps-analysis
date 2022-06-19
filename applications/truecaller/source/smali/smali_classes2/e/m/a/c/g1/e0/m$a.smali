.class public final Le/m/a/c/g1/e0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/s;

.field public b:J

.field public c:Z

.field public d:I

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Le/m/a/c/g1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/m$a;->a:Le/m/a/c/g1/s;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .line 1
    iget-boolean v3, p0, Le/m/a/c/g1/e0/m$a;->m:Z

    .line 2
    iget-wide v0, p0, Le/m/a/c/g1/e0/m$a;->b:J

    iget-wide v4, p0, Le/m/a/c/g1/e0/m$a;->k:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/e0/m$a;->a:Le/m/a/c/g1/s;

    iget-wide v1, p0, Le/m/a/c/g1/e0/m$a;->l:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    return-void
.end method
