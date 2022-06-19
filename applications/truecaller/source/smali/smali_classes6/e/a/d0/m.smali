.class public final synthetic Le/a/d0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/d0/f0;

.field public final synthetic b:Le/a/d0/v;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;Le/a/d0/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/m;->a:Le/a/d0/f0;

    iput-object p2, p0, Le/a/d0/m;->b:Le/a/d0/v;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Le/a/d0/m;->a:Le/a/d0/f0;

    iget-object v1, p0, Le/a/d0/m;->b:Le/a/d0/v;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v1, Le/a/d0/v;->k:Z

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, v1, Le/a/d0/v;->o:Z

    .line 4
    iput-object p1, v1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 5
    :cond_0
    invoke-virtual {v0, v1, v2}, Le/a/d0/f0;->t(Le/a/d0/v;Z)V

    .line 6
    invoke-virtual {v0, v1}, Le/a/d0/f0;->f(Le/a/d0/v;)V

    .line 7
    iget-object p1, v0, Le/a/d0/f0;->C:Le/a/d0/v;

    if-eqz p1, :cond_1

    iget-wide v2, v1, Le/a/d0/v;->c:J

    iget-wide v4, p1, Le/a/d0/v;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 8
    iget-object p1, v0, Le/a/d0/f0;->I:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    iget-wide v4, v1, Le/a/d0/v;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Le/a/d0/f0;->W:J

    :cond_1
    return-void
.end method
