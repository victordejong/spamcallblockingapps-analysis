.class public final Le/a/a/h1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/p4/b;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/p4/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/g;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/a/h1/g;->b:Le/a/p4/b;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/h1/g;->b:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->q1()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-wide v0, Le/a/a/h1/h;->b:J

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/h1/g;->a:Le/a/u3/g;

    .line 4
    iget-object v1, v0, Le/a/u3/g;->o3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xdf

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 5
    sget-wide v1, Le/a/a/h1/h;->a:J

    .line 6
    invoke-interface {v0, v1, v2}, Le/a/u3/i;->d(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
