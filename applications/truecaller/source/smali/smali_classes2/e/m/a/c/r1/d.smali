.class public final synthetic Le/m/a/c/r1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/r1/s$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/r1/s$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/r1/d;->a:Le/m/a/c/r1/s$a;

    iput-object p2, p0, Le/m/a/c/r1/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Le/m/a/c/r1/d;->c:J

    iput-wide p5, p0, Le/m/a/c/r1/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/m/a/c/r1/d;->a:Le/m/a/c/r1/s$a;

    iget-object v2, p0, Le/m/a/c/r1/d;->b:Ljava/lang/String;

    iget-wide v3, p0, Le/m/a/c/r1/d;->c:J

    iget-wide v5, p0, Le/m/a/c/r1/d;->d:J

    .line 1
    iget-object v1, v0, Le/m/a/c/r1/s$a;->b:Le/m/a/c/r1/s;

    .line 2
    sget v0, Le/m/a/c/q1/d0;->a:I

    .line 3
    invoke-interface/range {v1 .. v6}, Le/m/a/c/r1/s;->f(Ljava/lang/String;JJ)V

    return-void
.end method
