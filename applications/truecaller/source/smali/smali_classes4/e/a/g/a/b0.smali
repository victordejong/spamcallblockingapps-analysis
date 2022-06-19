.class public final Le/a/g/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/b/s;


# instance fields
.field public final synthetic a:Le/a/g/a/m;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/g/a/m;Lcom/truecaller/data/entity/Contact;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/b0;->a:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/b0;->b:Lcom/truecaller/data/entity/Contact;

    iput p3, p0, Le/a/g/a/b0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g/a/b0;->a:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/b0;->b:Lcom/truecaller/data/entity/Contact;

    iget v2, p0, Le/a/g/a/b0;->c:I

    .line 2
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/g/a/h;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1, v2}, Le/a/g/a/h;->r8(Lcom/truecaller/data/entity/Contact;I)V

    .line 3
    :cond_0
    iget-object v0, v0, Le/a/g/a/m;->h:Lq3/a/w2/j;

    sget-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->CHANGE_TAG:Lcom/truecaller/acs/analytics/ClickEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method
