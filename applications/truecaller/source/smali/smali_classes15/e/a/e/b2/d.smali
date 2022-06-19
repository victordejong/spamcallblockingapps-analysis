.class public Le/a/e/b2/d;
.super Le/a/f4/g/p$d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/b2/e;


# direct methods
.method public constructor <init>(Le/a/e/b2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/b2/d;->a:Le/a/e/b2/e;

    invoke-direct {p0}, Le/a/f4/g/p$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b2/d;->a:Le/a/e/b2/e;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Le/a/e/b2/f;

    .line 4
    iget-object v0, v0, Le/a/e/b2/e;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Le/a/e/b2/f;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
