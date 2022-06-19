.class public final Le/a/x/h0/a;
.super Le/a/l/l2/b;
.source "SourceFile"


# instance fields
.field public final d:Le/a/l/a/v;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/a/v;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proStatusGenerator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/u3/g;->u:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 2
    invoke-direct {p0, p1, p3, p4}, Le/a/l/l2/b;-><init>(Le/a/u3/i;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V

    iput-object p2, p0, Le/a/x/h0/a;->d:Le/a/l/a/v;

    return-void
.end method


# virtual methods
.method public q(ILcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;Z)V
    .locals 2

    const-string v0, "ghostCallCardAction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/x/h0/b/a;

    .line 2
    iget-object v1, p0, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v1}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, p1, p2, v1, p3}, Le/a/x/h0/b/a;-><init>(ILcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;Ljava/lang/String;Z)V

    .line 4
    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method
