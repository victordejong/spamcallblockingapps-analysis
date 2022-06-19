.class public final Le/a/b/o/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/o/b/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Ljava/net/URL;

.field public final b:Le/m/e/k;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/b/o/c/a/a;

.field public final e:Le/a/b/o/c/a/e;

.field public final f:Le/a/b/o/c/a/c;

.field public final g:Le/a/b/p/c;

.field public final h:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/m/e/k;Le/a/u3/g;Le/a/b/o/c/a/a;Le/a/b/o/c/a/e;Le/a/b/o/c/a/c;Le/a/b/p/c;Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb;Ls1/w/f;)V
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

    const-string v0, "contactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "districtDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizMonSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/o/b/d;->b:Le/m/e/k;

    iput-object p2, p0, Le/a/b/o/b/d;->c:Le/a/u3/g;

    iput-object p3, p0, Le/a/b/o/b/d;->d:Le/a/b/o/c/a/a;

    iput-object p4, p0, Le/a/b/o/b/d;->e:Le/a/b/o/c/a/e;

    iput-object p5, p0, Le/a/b/o/b/d;->f:Le/a/b/o/c/a/c;

    iput-object p6, p0, Le/a/b/o/b/d;->g:Le/a/b/p/c;

    iput-object p7, p0, Le/a/b/o/b/d;->h:Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb;

    iput-object p8, p0, Le/a/b/o/b/d;->i:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/o/b/d;->i:Ls1/w/f;

    return-object v0
.end method
