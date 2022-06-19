.class public final Le/a/a3/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a3/b;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.blocking.BlockManagerImpl$blockNumbers$2"
    f = "BlockManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a3/b;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z

.field public final synthetic k:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public final synthetic l:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public final synthetic m:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/a3/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a3/b$a;->e:Le/a/a3/b;

    iput-object p2, p0, Le/a/a3/b$a;->f:Ljava/util/List;

    iput-object p3, p0, Le/a/a3/b$a;->g:Ljava/lang/String;

    iput-object p4, p0, Le/a/a3/b$a;->h:Ljava/lang/String;

    iput-object p5, p0, Le/a/a3/b$a;->i:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/a3/b$a;->j:Z

    iput-object p7, p0, Le/a/a3/b$a;->k:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iput-object p8, p0, Le/a/a3/b$a;->l:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iput-object p9, p0, Le/a/a3/b$a;->m:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
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

    new-instance p1, Le/a/a3/b$a;

    iget-object v1, p0, Le/a/a3/b$a;->e:Le/a/a3/b;

    iget-object v2, p0, Le/a/a3/b$a;->f:Ljava/util/List;

    iget-object v3, p0, Le/a/a3/b$a;->g:Ljava/lang/String;

    iget-object v4, p0, Le/a/a3/b$a;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/a3/b$a;->i:Ljava/lang/String;

    iget-boolean v6, p0, Le/a/a3/b$a;->j:Z

    iget-object v7, p0, Le/a/a3/b$a;->k:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v8, p0, Le/a/a3/b$a;->l:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v9, p0, Le/a/a3/b$a;->m:Ljava/lang/Long;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Le/a/a3/b$a;-><init>(Le/a/a3/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a3/b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a3/b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a3/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a3/b$a;->e:Le/a/a3/b;

    .line 3
    iget-object p1, p1, Le/a/a3/b;->a:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/h0/j;

    iget-object v1, p0, Le/a/a3/b$a;->f:Ljava/util/List;

    iget-object v2, p0, Le/a/a3/b$a;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/a3/b$a;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/a3/b$a;->i:Ljava/lang/String;

    iget-boolean v5, p0, Le/a/a3/b$a;->j:Z

    iget-object v6, p0, Le/a/a3/b$a;->k:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v7, p0, Le/a/a3/b$a;->l:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v8, p0, Le/a/a3/b$a;->m:Ljava/lang/Long;

    invoke-interface/range {v0 .. v8}, Le/a/h0/j;->i(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    move-result p1

    .line 5
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
