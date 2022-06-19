.class public final Le/a/q5/k/b;
.super Le/a/l/l2/b;
.source "SourceFile"

# interfaces
.implements Le/a/q5/k/a;


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
    iget-object v0, p1, Le/a/u3/g;->t:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 2
    invoke-direct {p0, p1, p3, p4}, Le/a/l/l2/b;-><init>(Le/a/u3/i;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V

    iput-object p2, p0, Le/a/q5/k/b;->d:Le/a/l/a/v;

    return-void
.end method


# virtual methods
.method public b(ZLcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/a/q5/k/c/h;

    invoke-direct {p1, p2, p3}, Le/a/q5/k/c/h;-><init>(Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Le/a/q5/k/c/g;

    invoke-direct {p1, p2, p3}, Le/a/q5/k/c/g;-><init>(Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    .line 3
    :goto_0
    invoke-static {p1, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q5/k/c/d;

    invoke-direct {v0, p1}, Le/a/q5/k/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q5/k/c/e;

    invoke-direct {v0, p1}, Le/a/q5/k/c/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q5/k/c/c;

    invoke-direct {v0, p1}, Le/a/q5/k/c/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public k(Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q5/k/c/b;

    invoke-direct {v0, p1, p2}, Le/a/q5/k/c/b;-><init>(Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    new-instance v0, Le/a/q5/k/c/a;

    iget-object v1, p0, Le/a/q5/k/b;->d:Le/a/l/a/v;

    invoke-virtual {v1}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/a/q5/k/c/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q5/k/c/f;

    invoke-direct {v0, p1}, Le/a/q5/k/c/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method
