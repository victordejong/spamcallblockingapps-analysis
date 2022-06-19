.class public final synthetic Le/m/a/h/a/g/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/a;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/d;->a:Le/m/a/h/a/g/g/a;

    iput-object p2, p0, Le/m/a/h/a/g/g/d;->b:Ljava/util/List;

    iput-object p3, p0, Le/m/a/h/a/g/g/d;->c:Ljava/util/List;

    iput-object p4, p0, Le/m/a/h/a/g/g/d;->d:Ljava/util/List;

    iput-wide p5, p0, Le/m/a/h/a/g/g/d;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Le/m/a/h/a/g/g/d;->a:Le/m/a/h/a/g/g/a;

    iget-object v1, p0, Le/m/a/h/a/g/g/d;->b:Ljava/util/List;

    iget-object v2, p0, Le/m/a/h/a/g/g/d;->c:Ljava/util/List;

    iget-object v3, p0, Le/m/a/h/a/g/g/d;->d:Ljava/util/List;

    iget-wide v4, p0, Le/m/a/h/a/g/g/d;->e:J

    .line 1
    iget-object v6, v0, Le/m/a/h/a/g/g/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x6

    const/4 v2, -0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    invoke-virtual/range {v0 .. v7}, Le/m/a/h/a/g/g/a;->n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    iget-object v6, v0, Le/m/a/h/a/g/g/a;->i:Le/m/a/h/a/g/e0;

    .line 4
    check-cast v6, Le/m/a/h/a/g/l0;

    invoke-virtual {v6}, Le/m/a/h/a/g/l0;->a()Le/m/a/h/a/g/f0;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 5
    invoke-virtual/range {v0 .. v6}, Le/m/a/h/a/g/g/a;->l(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v5}, Le/m/a/h/a/g/g/a;->m(Ljava/util/List;Ljava/util/List;J)V

    :goto_0
    return-void
.end method
