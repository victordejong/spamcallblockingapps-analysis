.class public final Le/a/b/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/a/b/a;


# instance fields
.field public final a:Le/a/b/a/a/b/c/a;

.field public final b:Le/a/b/a/a/b/d/b;

.field public final c:Le/a/b/a/g/g;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/c/a;Le/a/b/a/a/b/d/b;Le/a/b/a/g/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bizProfileLocalDS"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizProfileRemoteDS"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    iput-object p2, p0, Le/a/b/a/a/b/b;->b:Le/a/b/a/a/b/d/b;

    iput-object p3, p0, Le/a/b/a/a/b/b;->c:Le/a/b/a/g/g;

    return-void
.end method


# virtual methods
.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/b/l/q<",
            "Ls1/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/b/a/a/b/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/b/a/a/b/b$a;

    iget v1, v0, Le/a/b/a/a/b/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b/a/a/b/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b/a/a/b/b$a;

    invoke-direct {v0, p0, p1}, Le/a/b/a/a/b/b$a;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/b/a/a/b/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b/a/a/b/b$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/b/a/a/b/b$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/a/b/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/b/a/a/b/b;->b:Le/a/b/a/a/b/d/b;

    iput-object p0, v0, Le/a/b/a/a/b/b$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/b/a/a/b/b$a;->e:I

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Le/a/b/a/a/b/d/c;

    invoke-direct {v2, p1, v4}, Le/a/b/a/a/b/d/c;-><init>(Le/a/b/a/a/b/d/b;Ls1/w/d;)V

    invoke-static {v2, v0}, Le/a/n/g0;->P(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    check-cast p1, Le/a/b/a/a/b/d/a;

    .line 8
    instance-of v1, p1, Le/a/b/a/a/b/d/a$c;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    instance-of v1, p1, Le/a/b/a/a/b/d/a$a;

    if-eqz v1, :cond_a

    .line 10
    :goto_2
    iget-object p1, v0, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    .line 11
    iget-object p1, p1, Le/a/b/a/a/b/c/a;->b:Le/a/m4/c/i/a/b;

    invoke-interface {p1}, Le/a/m4/c/i/a/b;->c()Le/a/m4/c/i/a/h;

    move-result-object p1

    .line 12
    sget-object v0, Le/a/m4/c/i/a/h$b;->a:Le/a/m4/c/i/a/h$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Le/a/b/l/q$c;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-direct {p1, v0}, Le/a/b/l/q$c;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_5
    sget-object v0, Le/a/m4/c/i/a/h$a$c;->a:Le/a/m4/c/i/a/h$a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Storage permission denied. Please try again later."

    const/4 v2, 0x6

    if-eqz v0, :cond_6

    new-instance p1, Le/a/b/l/q$a;

    invoke-direct {p1, v1, v4, v4, v2}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    goto :goto_3

    .line 14
    :cond_6
    sget-object v0, Le/a/m4/c/i/a/h$a$b;->a:Le/a/m4/c/i/a/h$a$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Le/a/b/l/q$a;

    const-string v0, "Error deleting saved profile. Please try again later"

    invoke-direct {p1, v0, v4, v4, v2}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    goto :goto_3

    .line 15
    :cond_7
    sget-object v0, Le/a/m4/c/i/a/h$a$a;->a:Le/a/m4/c/i/a/h$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Le/a/b/l/q$a;

    invoke-direct {p1, v1, v4, v4, v2}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    goto :goto_3

    .line 16
    :cond_8
    sget-object v0, Le/a/m4/c/i/a/h$a$d;->a:Le/a/m4/c/i/a/h$a$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Le/a/b/l/q$a;

    const-string v0, "Unknown error occured while deleting profile. Please try again later."

    invoke-direct {p1, v0, v4, v4, v2}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    :goto_3
    return-object p1

    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :cond_a
    instance-of v0, p1, Le/a/b/a/a/b/d/a$b;

    if-eqz v0, :cond_b

    .line 18
    new-instance v0, Le/a/b/l/q$a;

    check-cast p1, Le/a/b/a/a/b/d/a$b;

    invoke-static {p1}, Le/a/n/g0;->H(Le/a/b/a/a/b/d/a$b;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {v0, v4, p1, v4, v1}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    return-object v0

    :cond_b
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Le/a/b/l/q<",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/b/a/a/b/b$b;

    invoke-direct {v0, p0}, Le/a/b/a/a/b/b$b;-><init>(Le/a/b/a/a/b/b;)V

    .line 2
    new-instance v1, Le/a/b/a/a/b/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/b/a/a/b/b$c;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    .line 3
    new-instance v3, Le/a/b/a/a/b/b$d;

    invoke-direct {v3, p0, v2}, Le/a/b/a/a/b/b$d;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    .line 4
    iget-object v4, p0, Le/a/b/a/a/b/b;->c:Le/a/b/a/g/g;

    const-string v5, "dbQuery"

    .line 5
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "networkQuery"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "saveOnCall"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "dispatchers"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v4}, Le/a/b/a/g/g;->a()Lq3/a/g0;

    move-result-object v4

    new-instance v5, Le/a/b/l/n;

    invoke-direct {v5, v0, v1, v3, v2}, Le/a/b/l/n;-><init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/p;Ls1/w/d;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v4, v0, v1, v5, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Le/a/b/l/q<",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation

    const-string v0, "bizProfileRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/a/b/b;->c:Le/a/b/a/g/g;

    invoke-interface {v0}, Le/a/b/a/g/g;->a()Lq3/a/g0;

    move-result-object v0

    new-instance v1, Le/a/b/a/a/b/b$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b/a/a/b/b$e;-><init>(Le/a/b/a/a/b/b;Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;Ls1/w/d;)V

    const-wide/16 v2, 0x0

    const/4 p1, 0x2

    invoke-static {v0, v2, v3, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->M0(Ls1/w/f;JLs1/z/b/p;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
