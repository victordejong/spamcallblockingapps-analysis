.class public final Le/m/a/h/a/g/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/d;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Le/m/a/h/a/g/t0;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/t0;Le/m/a/h/a/g/d;II)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/s0;->d:Le/m/a/h/a/g/t0;

    iput-object p2, p0, Le/m/a/h/a/g/s0;->a:Le/m/a/h/a/g/d;

    iput p3, p0, Le/m/a/h/a/g/s0;->b:I

    iput p4, p0, Le/m/a/h/a/g/s0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Le/m/a/h/a/g/s0;->d:Le/m/a/h/a/g/t0;

    iget-object v1, p0, Le/m/a/h/a/g/s0;->a:Le/m/a/h/a/g/d;

    iget v4, p0, Le/m/a/h/a/g/s0;->b:I

    iget v5, p0, Le/m/a/h/a/g/s0;->c:I

    new-instance v14, Le/m/a/h/a/g/h;

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->g()I

    move-result v3

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v6

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v8

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->k()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->j()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->f()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->l()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    .line 1
    invoke-direct/range {v2 .. v13}, Le/m/a/h/a/g/h;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    .line 2
    invoke-virtual {v0, v14}, Le/m/a/h/a/g/t0;->e(Le/m/a/h/a/g/d;)V

    return-void
.end method
