.class public final Le/a/d/m$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->I(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/m;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/truecaller/voip/util/VoipSearchDirection;


# direct methods
.method public constructor <init>(Le/a/d/m;ZLjava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$f;->b:Le/a/d/m;

    iput-boolean p2, p0, Le/a/d/m$f;->c:Z

    iput-object p3, p0, Le/a/d/m$f;->d:Ljava/lang/String;

    iput-object p4, p0, Le/a/d/m$f;->e:Lcom/truecaller/voip/util/VoipSearchDirection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/d/m$f;->b:Le/a/d/m;

    .line 2
    iget-object v1, v1, Le/a/d/m;->d:Lo3/a;

    .line 3
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "UUID.randomUUID()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "voip"

    invoke-interface {v1, v2, v3}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Le/a/d/m$f;->c:Z

    .line 5
    iput-boolean v2, v1, Le/a/f4/g/p;->g:Z

    .line 6
    iget-object v2, p0, Le/a/d/m$f;->d:Ljava/lang/String;

    .line 7
    iput-object v2, v1, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    .line 9
    sget-object v2, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    iget-object v3, p0, Le/a/d/m$f;->e:Lcom/truecaller/voip/util/VoipSearchDirection;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 10
    :goto_0
    iput v2, v1, Le/a/f4/g/p;->o:I

    .line 11
    invoke-virtual {v1}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
