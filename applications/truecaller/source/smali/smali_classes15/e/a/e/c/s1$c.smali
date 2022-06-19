.class public Le/a/e/c/s1$c;
.super Le/a/j4/a/a;
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
.field public final synthetic d:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$c;->d:Le/a/e/c/s1;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$c;->d:Le/a/e/c/s1;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 2
    iput-object p1, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {v0}, Le/a/e/c/s1;->UA()V

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c/s1$c;->d:Le/a/e/c/s1;

    .line 2
    iget-object v0, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {p1, v0}, Le/a/e/c/s1;->oB(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method
