.class public final Le/a/s/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/s/a/a$a;->a:I

    iput-object p2, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Le/a/s/a/a$a;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string v1, "requireActivity()"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/a;

    invoke-virtual {p1}, Le/a/s/a/a;->QA()Le/a/s/a/d;

    move-result-object p1

    iget-object v0, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/s/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/s/a/d;->Ij(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/a;

    invoke-virtual {p1}, Le/a/s/a/a;->QA()Le/a/s/a/d;

    move-result-object p1

    iget-object v0, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/s/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/s/a/d;->Ij(Landroid/app/Activity;)V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/s/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/a;

    invoke-virtual {p1}, Le/a/s/a/a;->QA()Le/a/s/a/d;

    move-result-object p1

    .line 5
    iget-object v1, p1, Le/a/s/a/d;->h:Le/a/u3/g;

    .line 6
    iget-object v2, v1, Le/a/u3/g;->k6:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x17e

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 7
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string p1, "Truecaller Assistant introduction video link is empty"

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/a/c;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Le/a/s/a/c;->Pz(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
