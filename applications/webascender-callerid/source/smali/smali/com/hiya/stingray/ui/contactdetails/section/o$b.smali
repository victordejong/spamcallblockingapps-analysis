.class final Lcom/hiya/stingray/ui/contactdetails/section/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/section/o;->b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/b/a;

.field final synthetic g:Lcom/hiya/stingray/ui/contactdetails/section/o;

.field final synthetic h:Lcom/hiya/stingray/t/d0;


# direct methods
.method constructor <init>(Lkotlin/w/b/a;Lcom/hiya/stingray/ui/contactdetails/section/o;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->f:Lkotlin/w/b/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->h:Lcom/hiya/stingray/t/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/contactdetails/section/o$b$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/o$b;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/section/o;->d(Lcom/hiya/stingray/ui/contactdetails/section/o;)Li/c/b0/c/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {v1}, Lcom/hiya/stingray/ui/contactdetails/section/o;->f(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/r/a;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->h:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callLogItem.phone"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/r/a;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object v1

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 5
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/section/o$b$b;

    invoke-direct {v2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/o$b$b;-><init>(Lkotlin/w/b/a;)V

    new-instance v3, Lcom/hiya/stingray/ui/contactdetails/section/o$b$c;

    invoke-direct {v3, p1}, Lcom/hiya/stingray/ui/contactdetails/section/o$b$c;-><init>(Lkotlin/w/b/a;)V

    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$b;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/section/o;->c(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "is_spam_yes"

    .line 10
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "is_spam"

    .line 11
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 12
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
