.class public final Le/a/h/b/y$h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y$h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$saveSuggestNameAndBlock$1$1"
    f = "DialerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/b/y$h;


# direct methods
.method public constructor <init>(Le/a/h/b/y$h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/y$h$a;->e:Le/a/h/b/y$h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/y$h$a;

    iget-object v0, p0, Le/a/h/b/y$h$a;->e:Le/a/h/b/y$h;

    invoke-direct {p1, v0, p2}, Le/a/h/b/y$h$a;-><init>(Le/a/h/b/y$h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/b/y$h$a;->e:Le/a/h/b/y$h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    .line 6
    iget-object v0, p2, Le/a/h/b/y;->Y:Le/a/h0/j;

    .line 7
    iget-object v1, p1, Le/a/h/b/y$h;->g:Ljava/util/List;

    const/4 v4, 0x0

    .line 8
    sget-object v5, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 9
    iget-object v6, p1, Le/a/h/b/y$h;->h:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 10
    iget-object v7, p1, Le/a/h/b/y$h;->i:Ljava/lang/Long;

    const-string v2, "PHONE_NUMBER"

    const-string v3, "callHistory"

    .line 11
    invoke-interface/range {v0 .. v7}, Le/a/h0/j;->h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    move-result p1

    .line 12
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/b/y$h$a;->e:Le/a/h/b/y$h;

    iget-object v0, p1, Le/a/h/b/y$h;->f:Le/a/h/b/y;

    .line 3
    iget-object v1, v0, Le/a/h/b/y;->Y:Le/a/h0/j;

    .line 4
    iget-object v2, p1, Le/a/h/b/y$h;->g:Ljava/util/List;

    const/4 v5, 0x0

    .line 5
    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 6
    iget-object v7, p1, Le/a/h/b/y$h;->h:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 7
    iget-object v8, p1, Le/a/h/b/y$h;->i:Ljava/lang/Long;

    const-string v3, "PHONE_NUMBER"

    const-string v4, "callHistory"

    .line 8
    invoke-interface/range {v1 .. v8}, Le/a/h0/j;->h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    move-result p1

    .line 9
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
