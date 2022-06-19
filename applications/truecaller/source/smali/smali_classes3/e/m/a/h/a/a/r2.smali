.class public final synthetic Le/m/a/h/a/a/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/s2;

.field public final synthetic b:Le/m/a/h/a/a/q2;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/s2;Le/m/a/h/a/a/q2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/r2;->a:Le/m/a/h/a/a/s2;

    iput-object p2, p0, Le/m/a/h/a/a/r2;->b:Le/m/a/h/a/a/q2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/m/a/h/a/a/r2;->a:Le/m/a/h/a/a/s2;

    iget-object v1, p0, Le/m/a/h/a/a/r2;->b:Le/m/a/h/a/a/q2;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/a/s2;->a:Le/m/a/h/a/a/e0;

    iget-object v2, v1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v3, v1, Le/m/a/h/a/a/q2;->d:I

    iget-wide v4, v1, Le/m/a/h/a/a/q2;->e:J

    .line 2
    invoke-virtual {v0, v2, v3, v4, v5}, Le/m/a/h/a/a/e0;->b(Ljava/lang/String;IJ)V

    return-void
.end method
