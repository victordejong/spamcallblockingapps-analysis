.class public final Le/a/j0/a$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j0/a;->b(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfCallsIdentifiedByTruecaller$2"
    f = "StatsFetcherImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/j0/a;


# direct methods
.method public constructor <init>(Le/a/j0/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

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

    new-instance p1, Le/a/j0/a$f;

    iget-object v0, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

    invoke-direct {p1, v0, p2}, Le/a/j0/a$f;-><init>(Le/a/j0/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Le/a/j0/a;->o(Le/a/j0/a;)Landroid/content/ContentResolver;

    move-result-object p2

    .line 6
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "HistoryTable.getContentWithAggregatedContactUri()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Le/a/j0/a;->r(Le/a/j0/a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Le/a/j0/a;->p(Le/a/j0/a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "COUNT()"

    const-string v2, "contact_phonebook_id IS NULL AND contact_name IS NOT NULL AND contact_name != \'\' AND timestamp BETWEEN ? AND ?"

    .line 8
    invoke-static {p2, v0, p1, v2, v1}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

    invoke-static {p1}, Le/a/j0/a;->o(Le/a/j0/a;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "HistoryTable.getContentWithAggregatedContactUri()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

    invoke-static {v3}, Le/a/j0/a;->r(Le/a/j0/a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Le/a/j0/a$f;->e:Le/a/j0/a;

    invoke-static {v3}, Le/a/j0/a;->p(Le/a/j0/a;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "COUNT()"

    const-string v3, "contact_phonebook_id IS NULL AND contact_name IS NOT NULL AND contact_name != \'\' AND timestamp BETWEEN ? AND ?"

    .line 5
    invoke-static {p1, v0, v2, v3, v1}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
