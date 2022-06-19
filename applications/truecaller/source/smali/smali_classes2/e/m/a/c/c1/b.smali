.class public final synthetic Le/m/a/c/c1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/c1/m$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/c1/m$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/c1/b;->a:Le/m/a/c/c1/m$a;

    iput p2, p0, Le/m/a/c/c1/b;->b:I

    iput-wide p3, p0, Le/m/a/c/c1/b;->c:J

    iput-wide p5, p0, Le/m/a/c/c1/b;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/m/a/c/c1/b;->a:Le/m/a/c/c1/m$a;

    iget v2, p0, Le/m/a/c/c1/b;->b:I

    iget-wide v3, p0, Le/m/a/c/c1/b;->c:J

    iget-wide v5, p0, Le/m/a/c/c1/b;->d:J

    .line 1
    iget-object v1, v0, Le/m/a/c/c1/m$a;->b:Le/m/a/c/c1/m;

    .line 2
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface/range {v1 .. v6}, Le/m/a/c/c1/m;->h(IJJ)V

    return-void
.end method
