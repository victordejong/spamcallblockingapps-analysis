.class public final Le/a/t1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$g$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/t1;

.field public final b:Le/a/t1$g;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d0/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$g;->b:Le/a/t1$g;

    .line 3
    iput-object p1, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 4
    new-instance p2, Le/a/t1$g$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$g$a;-><init>(Le/a/t1;Le/a/t1$g;I)V

    iput-object p2, p0, Le/a/t1$g;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$g;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p2, Le/a/t1$g$a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$g$a;-><init>(Le/a/t1;Le/a/t1$g;I)V

    iput-object p2, p0, Le/a/t1$g;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/t1$g;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p2, Le/a/t1$g$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/t1$g$a;-><init>(Le/a/t1;Le/a/t1$g;I)V

    iput-object p2, p0, Le/a/t1$g;->g:Ljavax/inject/Provider;

    .line 9
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/t1$g;->h:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/callerid/callstate/CallStateService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 2
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/CallStateService;->b:Le/a/p5/a0;

    .line 6
    iget-object v0, p0, Le/a/t1$g;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/b/j;

    .line 7
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/CallStateService;->c:Le/a/d0/b/j;

    return-void
.end method

.method public b()Le/a/d0/b/j;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t1$g;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/b/j;

    return-object v0
.end method

.method public c(Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t1$g;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/b/d;

    .line 2
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->a:Le/a/d0/b/d;

    .line 3
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 4
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 5
    invoke-interface {v0}, Le/a/j2;->U5()Le/a/r2/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->b:Le/a/r2/f;

    .line 8
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 9
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 10
    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->c:Le/a/p5/c;

    .line 13
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 14
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 15
    invoke-interface {v0}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 18
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 19
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 20
    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->e:Le/a/q2/a;

    .line 23
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 24
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 25
    invoke-interface {v0}, Le/a/j2;->w()Le/a/e3/a;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->f:Le/a/e3/a;

    .line 28
    iget-object v0, p0, Le/a/t1$g;->a:Le/a/t1;

    .line 29
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 30
    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object v0, p1, Lcom/truecaller/callerid/callstate/TruecallerCallScreeningService;->g:Ls1/w/f;

    return-void
.end method
