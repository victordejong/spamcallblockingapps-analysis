.class public final Le/m/a/c/g1/e0/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/g1/e0/j;

.field public final b:Le/m/a/c/q1/c0;

.field public final c:Le/m/a/c/q1/s;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Le/m/a/c/g1/e0/j;Le/m/a/c/q1/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/u$a;->a:Le/m/a/c/g1/e0/j;

    .line 3
    iput-object p2, p0, Le/m/a/c/g1/e0/u$a;->b:Le/m/a/c/q1/c0;

    .line 4
    new-instance p1, Le/m/a/c/q1/s;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    return-void
.end method
