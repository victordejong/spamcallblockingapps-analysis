.class public final Le/a/b/k/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/k/a/a;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/b/k/b/a/a;

.field public final d:Le/a/b/k/b/a/e;

.field public final e:Le/a/b/k/b/a/c;

.field public final f:Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;

.field public final g:Le/a/b/p/c;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/m/e/k;Le/a/u3/g;Le/a/b/k/b/a/a;Le/a/b/k/b/a/e;Le/a/b/k/b/a/c;Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;Le/a/b/p/c;Ls1/w/f;)V
    .locals 1
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "covidDirectoryContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "covidDirectoryStateDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "covidDirectoryDistrictDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizMonSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/k/a/d;->a:Le/m/e/k;

    iput-object p2, p0, Le/a/b/k/a/d;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/b/k/a/d;->c:Le/a/b/k/b/a/a;

    iput-object p4, p0, Le/a/b/k/a/d;->d:Le/a/b/k/b/a/e;

    iput-object p5, p0, Le/a/b/k/a/d;->e:Le/a/b/k/b/a/c;

    iput-object p6, p0, Le/a/b/k/a/d;->f:Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;

    iput-object p7, p0, Le/a/b/k/a/d;->g:Le/a/b/p/c;

    iput-object p8, p0, Le/a/b/k/a/d;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/b/k/a/d;->a:Le/m/e/k;

    iget-object v1, p0, Le/a/b/k/a/d;->b:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->G4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x12a

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 3
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b/k/a/d;->a:Le/m/e/k;

    iget-object v1, p0, Le/a/b/k/a/d;->b:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->M4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x130

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 3
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;

    invoke-virtual {v0, v1, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/k/a/d;->h:Ls1/w/f;

    return-object v0
.end method
