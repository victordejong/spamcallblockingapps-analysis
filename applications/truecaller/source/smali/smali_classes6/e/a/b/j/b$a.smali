.class public final Le/a/b/j/b$a;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/j/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/a;Le/a/b/j/c;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/b0/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/j/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/b/j/b;)V
    .locals 0

    iput-object p3, p0, Le/a/b/j/b$a;->b:Le/a/b/j/b;

    .line 1
    invoke-direct {p0, p2}, Ls1/b0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/l<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Le/a/b/j/b$a;->b:Le/a/b/j/b;

    .line 4
    iget-object v0, p1, Le/a/b/j/b;->k:Le/a/x4/a;

    .line 5
    iget-object v1, p1, Le/a/b/j/b;->d:Le/a/b/j/a;

    const-string v2, "config"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    instance-of v1, v1, Le/a/b/j/a$c;

    if-eqz v1, :cond_0

    iget-object v1, p1, Le/a/b/j/b;->m:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->E()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    :cond_0
    iget-object v1, p1, Le/a/b/j/b;->d:Le/a/b/j/a;

    if-eqz v1, :cond_6

    instance-of v1, v1, Le/a/b/j/a$b;

    if-eqz v1, :cond_2

    iget-object p1, p1, Le/a/b/j/b;->m:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->D()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const-string p1, "ShowModularBusinessCallReason"

    goto :goto_1

    :cond_3
    const-string p1, "ShowBusinessCallReason"

    .line 7
    :goto_1
    iget-object v1, p0, Le/a/b/j/b$a;->b:Le/a/b/j/b;

    invoke-static {v1}, Le/a/b/j/b;->Ij(Le/a/b/j/b;)Le/a/b/j/a;

    move-result-object v1

    .line 8
    iget-object v1, v1, Le/a/b/j/a;->a:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    .line 9
    iget-object v2, p0, Le/a/b/j/b$a;->b:Le/a/b/j/b;

    .line 10
    iget-object v2, v2, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    if-ne v2, p2, :cond_4

    .line 12
    sget-object p2, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;->PRIORITY:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Call reason badge should be either verified business or priority"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    sget-object p2, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;->VERIFIED_BUSINESS:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    .line 15
    :goto_2
    invoke-interface {v0, p1, v1, p2, p3}, Le/a/x4/a;->a(Ljava/lang/String;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_6
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_3
    return-void
.end method
