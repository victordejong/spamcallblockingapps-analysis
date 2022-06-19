.class public final Le/a/a/m/k3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/l1;",
        ">;",
        "Le/a/a/m/f0;"
    }
.end annotation


# instance fields
.field public c:Z

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/a/m/l1$a;

.field public final f:Le/a/d/f;

.field public final g:Le/a/q2/a;

.field public final h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/l1$a;Le/a/d/f;Le/a/q2/a;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/m/j2;",
            "Le/a/p5/c0;",
            "Le/a/a/m/l1$a;",
            "Le/a/d/f;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/k3/a;->d:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/m/k3/a;->e:Le/a/a/m/l1$a;

    iput-object p4, p0, Le/a/a/m/k3/a;->f:Le/a/d/f;

    iput-object p5, p0, Le/a/a/m/k3/a;->g:Le/a/q2/a;

    iput-object p6, p0, Le/a/a/m/k3/a;->h:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$i;

    return p1
.end method

.method public final B(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/m/k3/a;->g:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Le/a/q2/g$b$a;

    const-string v3, "GroupVoicePromoBannerInteraction"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 5
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 7
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v3}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 9
    invoke-virtual {v0, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 10
    invoke-virtual {v0}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 11
    iget-object v0, p0, Le/a/a/m/k3/a;->h:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/m/l1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/k3/a;->d:Le/a/p5/c0;

    const v0, 0x7f120e6f

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f1210ca

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {p2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p2, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026ring(R.string.voip_text))"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/l1;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Le/a/a/m/k3/a;->c:Z

    if-nez p1, :cond_0

    const-string p1, "Shown"

    .line 5
    invoke-virtual {p0, p1}, Le/a/a/m/k3/a;->B(Ljava/lang/String;)V

    .line 6
    iput-boolean v1, p0, Le/a/a/m/k3/a;->c:Z

    :cond_0
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x48bdb02b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_GROUP_VOICE_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/a/m/k3/a;->f:Le/a/d/f;

    invoke-interface {p1}, Le/a/d/f;->b()V

    .line 5
    iget-object p1, p0, Le/a/a/m/k3/a;->e:Le/a/a/m/l1$a;

    invoke-interface {p1}, Le/a/a/m/l1$a;->He()V

    const-string p1, "Dismiss"

    .line 6
    invoke-virtual {p0, p1}, Le/a/a/m/k3/a;->B(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
