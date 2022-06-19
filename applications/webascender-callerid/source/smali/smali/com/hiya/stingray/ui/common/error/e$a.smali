.class Lcom/hiya/stingray/ui/common/error/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/t/e1/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroidx/fragment/app/n;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/hiya/stingray/util/a0;

.field final synthetic i:Ljava/lang/Class;

.field final synthetic j:Lcom/hiya/stingray/ui/common/error/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/error/e;Landroidx/fragment/app/n;Ljava/lang/String;Lcom/hiya/stingray/util/a0;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/error/e$a;->f:Landroidx/fragment/app/n;

    iput-object p3, p0, Lcom/hiya/stingray/ui/common/error/e$a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/ui/common/error/e$a;->h:Lcom/hiya/stingray/util/a0;

    iput-object p5, p0, Lcom/hiya/stingray/ui/common/error/e$a;->i:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/e1/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/e1/b;->a()Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    invoke-static {v1, v0}, Lcom/hiya/stingray/ui/common/error/e;->a(Lcom/hiya/stingray/ui/common/error/e;Ljava/lang/Throwable;)Lg/g/a/a/b;

    move-result-object v1

    .line 3
    instance-of p1, p1, Lcom/hiya/stingray/t/e1/a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/common/error/e;->f(Ljava/lang/Throwable;)Lcom/hiya/stingray/exception/a;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    invoke-static {v2}, Lcom/hiya/stingray/ui/common/error/e;->b(Lcom/hiya/stingray/ui/common/error/e;)Lcom/hiya/stingray/ui/common/error/c;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/hiya/stingray/ui/common/error/c;->b(Lcom/hiya/stingray/exception/a;Lg/g/a/a/b;Ljava/lang/Throwable;)Lcom/hiya/stingray/ui/common/error/b;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/e$a;->f:Landroidx/fragment/app/n;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->h:Lcom/hiya/stingray/util/a0;

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/e$a;->i:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/error/e;->c(Lcom/hiya/stingray/ui/common/error/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->j:Lcom/hiya/stingray/ui/common/error/e;

    invoke-static {v1}, Lcom/hiya/stingray/ui/common/error/e;->d(Lcom/hiya/stingray/ui/common/error/e;)Lcom/hiya/stingray/ui/login/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;->t1(ZLjava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/ui/common/error/PermissionNeededDialog;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/e$a;->f:Landroidx/fragment/app/n;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/error/e$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/e1/b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/error/e$a;->a(Lcom/hiya/stingray/t/e1/b;)V

    return-void
.end method
