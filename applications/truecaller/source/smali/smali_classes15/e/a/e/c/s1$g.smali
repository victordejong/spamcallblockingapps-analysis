.class public Le/a/e/c/s1$g;
.super Le/a/b0/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic d:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$g;->d:Le/a/e/c/s1;

    const/4 p1, 0x0

    const-wide/16 v0, 0x12c

    .line 2
    invoke-direct {p0, p1, v0, v1}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$g;->d:Le/a/e/c/s1;

    .line 2
    iget-object v1, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x12c

    .line 4
    invoke-virtual {p0, v0, v1}, Le/a/b0/i/b;->b(J)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Le/a/e/c/s1$q;

    iget-object v2, p0, Le/a/e/c/s1$g;->d:Le/a/e/c/s1;

    invoke-direct {v1, v2, v0}, Le/a/e/c/s1$q;-><init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V

    :cond_1
    :goto_0
    return-void
.end method
