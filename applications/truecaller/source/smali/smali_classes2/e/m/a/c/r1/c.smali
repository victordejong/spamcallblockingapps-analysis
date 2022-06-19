.class public final synthetic Le/m/a/c/r1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/r1/s$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/r1/s$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/r1/c;->a:Le/m/a/c/r1/s$a;

    iput p2, p0, Le/m/a/c/r1/c;->b:I

    iput-wide p3, p0, Le/m/a/c/r1/c;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/c/r1/c;->a:Le/m/a/c/r1/s$a;

    iget v1, p0, Le/m/a/c/r1/c;->b:I

    iget-wide v2, p0, Le/m/a/c/r1/c;->c:J

    .line 1
    iget-object v0, v0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    .line 2
    sget v4, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface {v0, v1, v2, v3}, Le/m/a/c/r1/s;->e(IJ)V

    return-void
.end method
