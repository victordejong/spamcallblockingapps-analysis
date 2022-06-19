.class public Le/a/e/c/s1$b;
.super Le/a/o5/t$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/c/s1;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$b;->f:Le/a/e/c/s1;

    invoke-direct {p0, p2, p3}, Le/a/o5/t$a;-><init>(Lcom/truecaller/data/entity/Contact;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$b;->f:Le/a/e/c/s1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/e/c/s1;->V0:Z

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 4
    iput-object p1, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {v0}, Le/a/e/c/s1;->UA()V

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/a/o5/t$a;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/e/c/s1$b;->f:Le/a/e/c/s1;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 3
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p1}, Le/a/e/c/s1;->oB(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
