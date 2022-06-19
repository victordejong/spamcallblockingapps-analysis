.class public final Le/a/a/c/c/a$c$a;
.super Le/a/b0/a/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/a$c;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/c/a$c;


# direct methods
.method public constructor <init>(Le/a/a/c/c/a$c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/a$c$a;->a:Le/a/a/c/c/a$c;

    .line 1
    invoke-direct {p0}, Le/a/b0/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bf()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/a$c$a;->a:Le/a/a/c/c/a$c;

    iget-object v0, v0, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    .line 2
    iget-object v0, v0, Le/a/a/c/c/a;->l:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "fabOptions"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u0(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/c/c/a$c$a;->a:Le/a/a/c/c/a$c;

    iget-object p1, p1, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    invoke-virtual {p1}, Le/a/a/c/c/a;->PA()Le/a/a/c/c/p;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/c/c/p;->Li()V

    return-void
.end method
