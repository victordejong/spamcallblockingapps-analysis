.class public final Le/a/v/p/e$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/e;->a(Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.util.ContactUtilHelperImpl$setFavorite$2"
    f = "ContactUtilHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/p/e;

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/p/e$f;->e:Le/a/v/p/e;

    iput-object p2, p0, Le/a/v/p/e$f;->f:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/v/p/e$f;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/v/p/e$f;

    iget-object v0, p0, Le/a/v/p/e$f;->e:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$f;->f:Lcom/truecaller/data/entity/Contact;

    iget-boolean v2, p0, Le/a/v/p/e$f;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v/p/e$f;-><init>(Le/a/v/p/e;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/v/p/e$f;->e:Le/a/v/p/e;

    iget-object v1, p0, Le/a/v/p/e$f;->f:Lcom/truecaller/data/entity/Contact;

    iget-boolean v2, p0, Le/a/v/p/e$f;->g:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, v0, Le/a/v/p/e;->b:Landroid/content/Context;

    .line 7
    invoke-static {v0, p2, v3, v4, v2}, Le/a/e/a2;->e0(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/p/e$f;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    iget-object p1, p0, Le/a/v/p/e$f;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v3, p0, Le/a/v/p/e$f;->e:Le/a/v/p/e;

    .line 5
    iget-object v3, v3, Le/a/v/p/e;->b:Landroid/content/Context;

    .line 6
    iget-boolean v4, p0, Le/a/v/p/e$f;->g:Z

    invoke-static {v3, p1, v1, v2, v4}, Le/a/e/a2;->e0(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_0
    return-object v0
.end method
