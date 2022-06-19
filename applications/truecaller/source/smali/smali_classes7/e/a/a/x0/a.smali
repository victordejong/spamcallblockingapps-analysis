.class public Le/a/a/x0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/e4/p;

.field public final b:Le/a/p5/c0;

.field public final c:Le/a/q2/a;

.field public d:Le/a/a/x0/b;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e4/p;Le/a/p5/c0;Le/a/q2/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "-1"

    .line 2
    iput-object p4, p0, Le/a/a/x0/a;->e:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/a/a/x0/a;->a:Le/a/e4/p;

    .line 4
    iput-object p2, p0, Le/a/a/x0/a;->b:Le/a/p5/c0;

    .line 5
    iput-object p3, p0, Le/a/a/x0/a;->c:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "-1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/x0/a;->a:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Le/a/a/x0/a;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/a/a/x0/a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/a/x0/a;->a:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le/a/a/x0/a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Le/a/a/x0/a;->b()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/x0/a;->a:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/a/x0/a;->a:Le/a/e4/p;

    iget-object v1, p0, Le/a/a/x0/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0807bd

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    invoke-interface {v0, v2}, Le/a/a/x0/b;->Ui(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    const v2, 0x7f08078d

    invoke-interface {v0, v2}, Le/a/a/x0/b;->Ui(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    const v2, 0x7f08078e

    invoke-interface {v0, v2}, Le/a/a/x0/b;->Ui(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    invoke-interface {v0, v2}, Le/a/a/x0/b;->Ui(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    invoke-interface {v0, v1}, Le/a/a/x0/b;->vm(Z)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/x0/b;->vm(Z)V

    :goto_1
    return-void
.end method
