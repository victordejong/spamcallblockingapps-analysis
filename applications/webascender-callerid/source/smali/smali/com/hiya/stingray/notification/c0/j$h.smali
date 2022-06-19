.class final Lcom/hiya/stingray/notification/c0/j$h;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/j;->s(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/notification/c0/j;

.field final synthetic g:Z

.field final synthetic h:Lcom/hiya/stingray/notification/p;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/j;ZLcom/hiya/stingray/notification/p;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$h;->f:Lcom/hiya/stingray/notification/c0/j;

    iput-boolean p2, p0, Lcom/hiya/stingray/notification/c0/j$h;->g:Z

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/j$h;->h:Lcom/hiya/stingray/notification/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/notification/c0/j$h;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$h;->f:Lcom/hiya/stingray/notification/c0/j;

    invoke-static {v0}, Lcom/hiya/stingray/notification/c0/j;->k(Lcom/hiya/stingray/notification/c0/j;)Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "notification"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    iget-boolean v2, p0, Lcom/hiya/stingray/notification/c0/j$h;->g:Z

    if-eqz v2, :cond_0

    const-string v2, "is_spam"

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/notification/c0/j$h;->h:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Locale.ROOT"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 8
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_view"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
