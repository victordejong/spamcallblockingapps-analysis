.class public final Le/a/a/o/s/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/s/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/o/s/k;",
        ">;",
        "Le/a/a/o/s/j;"
    }
.end annotation


# instance fields
.field public d:Le/a/a/g/j0/m;

.field public e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public final g:Landroid/content/ContentResolver;

.field public final h:Le/a/a/g/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/ContentResolver;Le/a/a/g/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/a/o/s/l;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/a/o/s/l;->g:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/a/o/s/l;->h:Le/a/a/g/g;

    return-void
.end method


# virtual methods
.method public C7(Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Le/a/a/o/s/l;->e:Ljava/lang/String;

    .line 2
    new-instance v3, Le/a/a/o/s/l$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/a/o/s/l$a;-><init>(Le/a/a/o/s/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public X5(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 1

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/s/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/o/s/k;->Px(Lcom/truecaller/messaging/data/types/Conversation;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/a/o/s/l;->d:Le/a/a/g/j0/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/a/o/s/l;->d:Le/a/a/g/j0/m;

    return-void
.end method

.method public k9()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/o/s/l$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/o/s/l$a;-><init>(Le/a/a/o/s/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public nd(Le/a/a/o/s/b;Ls1/a/l;)Le/a/a/g/j0/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/o/s/b;",
            "Ls1/a/l<",
            "*>;)",
            "Le/a/a/g/j0/m;"
        }
    .end annotation

    const-string v0, "itemsPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/o/s/l;->d:Le/a/a/g/j0/m;

    return-object p1
.end method
