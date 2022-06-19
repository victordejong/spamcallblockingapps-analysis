.class public final Le/a/v/a/d0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/d0/d;->a(Le/a/v/a/r0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/d0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/d0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/d0/d$a;->a:Le/a/v/a/d0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/v/a/d0/d$a;->a:Le/a/v/a/d0/d;

    invoke-virtual {p1}, Le/a/v/a/d0/d;->getPresenter()Le/a/v/a/d0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/d0/c;

    .line 2
    iget-object v0, p1, Le/a/v/a/d0/c;->e:Le/a/v/a/z/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/d0/b;

    if-eqz v0, :cond_1

    iget-object p1, p1, Le/a/v/a/d0/c;->b:Le/a/v/a/s;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-interface {v0, p1}, Le/a/v/a/d0/b;->f(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    :cond_0
    const-string p1, "detailsViewModel"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
