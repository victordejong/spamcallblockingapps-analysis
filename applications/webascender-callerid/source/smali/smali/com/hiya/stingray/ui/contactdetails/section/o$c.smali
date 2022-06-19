.class final Lcom/hiya/stingray/ui/contactdetails/section/o$c;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->f:Lkotlin/w/b/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->h:Lcom/hiya/stingray/t/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->f:Lkotlin/w/b/a;

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/section/o;->d(Lcom/hiya/stingray/ui/contactdetails/section/o;)Li/c/b0/c/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/section/o;->e(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/manager/j4;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->h:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callLogItem.phone"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/j4;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/hiya/stingray/ui/contactdetails/section/p;->f:Lcom/hiya/stingray/ui/contactdetails/section/p;

    sget-object v3, Lcom/hiya/stingray/ui/contactdetails/section/q;->f:Lcom/hiya/stingray/ui/contactdetails/section/q;

    invoke-virtual {v0, v1, v3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/section/o;->d(Lcom/hiya/stingray/ui/contactdetails/section/o;)Li/c/b0/c/a;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/section/o;->f(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/r/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->h:Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/r/a;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object v0

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 11
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/hiya/stingray/ui/contactdetails/section/r;->f:Lcom/hiya/stingray/ui/contactdetails/section/r;

    sget-object v2, Lcom/hiya/stingray/ui/contactdetails/section/s;->f:Lcom/hiya/stingray/ui/contactdetails/section/s;

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 14
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/o$c;->g:Lcom/hiya/stingray/ui/contactdetails/section/o;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/section/o;->c(Lcom/hiya/stingray/ui/contactdetails/section/o;)Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "is_spam_no"

    .line 16
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "is_spam"

    .line 17
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 18
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "user_prompt_action"

    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
