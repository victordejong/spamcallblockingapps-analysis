.class public final synthetic Le/a/d0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/d0/f0$a;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/f;->a:Le/a/d0/f0$a;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Le/a/d0/f;->a:Le/a/d0/f0$a;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, v0, Le/a/d0/f0$a;->b:Le/a/d0/f0;

    iget-object v2, v1, Le/a/d0/f0;->C:Le/a/d0/v;

    if-eqz v2, :cond_1

    iget-object v0, v0, Le/a/d0/f0$a;->a:Le/a/d0/v;

    iget-wide v3, v0, Le/a/d0/v;->c:J

    iget-wide v5, v2, Le/a/d0/v;->c:J

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v1, v0, p1}, Le/a/d0/f0;->t(Le/a/d0/v;Z)V

    :cond_1
    :goto_0
    return-void
.end method
