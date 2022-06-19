.class public Lcom/google/firebase/inappmessaging/j0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/j0/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/analytics/a/a;

.field private final b:Li/c/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/x/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/firebase/analytics/a/a$a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c;->a:Lcom/google/firebase/analytics/a/a;

    .line 3
    new-instance p1, Lcom/google/firebase/inappmessaging/j0/c$a;

    invoke-direct {p1, p0}, Lcom/google/firebase/inappmessaging/j0/c$a;-><init>(Lcom/google/firebase/inappmessaging/j0/c;)V

    .line 4
    sget-object v0, Li/c/a;->BUFFER:Li/c/a;

    invoke-static {p1, v0}, Li/c/f;->e(Li/c/h;Li/c/a;)Li/c/f;

    move-result-object p1

    invoke-virtual {p1}, Li/c/f;->C()Li/c/x/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c;->b:Li/c/x/a;

    .line 5
    invoke-virtual {p1}, Li/c/x/a;->K()Li/c/w/b;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/c;Lcom/google/firebase/analytics/a/a$a;)Lcom/google/firebase/analytics/a/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c;->c:Lcom/google/firebase/analytics/a/a$a;

    return-object p1
.end method

.method static synthetic b(Lcom/google/firebase/inappmessaging/j0/c;)Lcom/google/firebase/analytics/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/c;->a:Lcom/google/firebase/analytics/a/a;

    return-object p0
.end method

.method static c(Lg/f/e/a/a/a/e/e;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/e/a/a/a/e/e;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lg/f/e/a/a/a/e/e;->a0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/e/a/a/a/c;

    .line 3
    invoke-virtual {v1}, Lg/f/e/a/a/a/c;->d0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/h;

    .line 4
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/h;->X()Lcom/google/firebase/inappmessaging/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/d;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/h;->X()Lcom/google/firebase/inappmessaging/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/d;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    const/16 v1, 0x32

    if-le p0, v1, :cond_3

    const-string p0, "Too many contextual triggers defined - limiting to 50"

    .line 7
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/l2;->c(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public d()Li/c/x/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/x/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/c;->b:Li/c/x/a;

    return-object v0
.end method

.method public e(Lg/f/e/a/a/a/e/e;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/c;->c(Lg/f/e/a/a/a/e/e;)Ljava/util/Set;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating contextual triggers for the following analytics events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/c;->c:Lcom/google/firebase/analytics/a/a$a;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/a/a$a;->a(Ljava/util/Set;)V

    return-void
.end method
