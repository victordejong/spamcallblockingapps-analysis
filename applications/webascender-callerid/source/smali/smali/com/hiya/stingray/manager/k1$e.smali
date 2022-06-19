.class final Lcom/hiya/stingray/manager/k1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/k1;->b(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/manager/u3$h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/k1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$h;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {p1}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {p1}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {p1}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/u3;->W(Lcom/hiya/stingray/manager/u3$p;)Lcom/hiya/stingray/manager/u3$i;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$p;->isWithTrial()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {v3}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/d1;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$p;->getTrialLengthDays()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d1;->e()Lcom/hiya/stingray/t/d1$c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hiya/stingray/manager/k1;->g(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/k1$e;->f:Lcom/hiya/stingray/manager/k1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/k1;->a(Lcom/hiya/stingray/manager/k1;)Lcom/hiya/stingray/manager/u3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/d1;->e()Lcom/hiya/stingray/t/d1$c;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hiya/stingray/manager/k1;->f(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 8
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 9
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/k1$e;->a(Lcom/hiya/stingray/manager/u3$h;)V

    return-void
.end method
