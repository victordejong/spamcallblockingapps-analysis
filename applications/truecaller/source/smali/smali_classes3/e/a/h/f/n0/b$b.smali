.class public final Le/a/h/f/n0/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/n0/b;->b(Ljava/util/Set;ZLs1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.contacts_list.data.SortedContactsRepositoryImpl$getContactsByNumbers$2"
    f = "SortedContactsRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/f/n0/b;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/h/f/n0/b;Ljava/util/Set;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/n0/b$b;->e:Le/a/h/f/n0/b;

    iput-object p2, p0, Le/a/h/f/n0/b$b;->f:Ljava/util/Set;

    iput-boolean p3, p0, Le/a/h/f/n0/b$b;->g:Z

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

    new-instance p1, Le/a/h/f/n0/b$b;

    iget-object v0, p0, Le/a/h/f/n0/b$b;->e:Le/a/h/f/n0/b;

    iget-object v1, p0, Le/a/h/f/n0/b$b;->f:Ljava/util/Set;

    iget-boolean v2, p0, Le/a/h/f/n0/b$b;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/h/f/n0/b$b;-><init>(Le/a/h/f/n0/b;Ljava/util/Set;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/f/n0/b$b;->e:Le/a/h/f/n0/b;

    iget-object v0, p0, Le/a/h/f/n0/b$b;->f:Ljava/util/Set;

    iget-boolean v1, p0, Le/a/h/f/n0/b$b;->g:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->c(Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/f/n0/b$b;->e:Le/a/h/f/n0/b;

    .line 3
    iget-object p1, p1, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 4
    iget-object v0, p0, Le/a/h/f/n0/b$b;->f:Ljava/util/Set;

    iget-boolean v1, p0, Le/a/h/f/n0/b$b;->g:Z

    invoke-interface {p1, v0, v1}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->c(Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
