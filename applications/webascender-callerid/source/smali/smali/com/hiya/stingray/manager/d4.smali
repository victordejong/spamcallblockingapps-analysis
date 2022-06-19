.class public final Lcom/hiya/stingray/manager/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/b/s;

.field private final b:Lcom/hiya/stingray/q/b/p;

.field private final c:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "compositeProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/d4;->a:Lcom/hiya/stingray/q/b/s;

    iput-object p2, p0, Lcom/hiya/stingray/manager/d4;->b:Lcom/hiya/stingray/q/b/p;

    iput-object p3, p0, Lcom/hiya/stingray/manager/d4;->c:Lcom/hiya/stingray/manager/o2;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d4;->b:Lcom/hiya/stingray/q/b/p;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/p;->d(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "callerIdProvider.findCal\u2026sObservable(phoneNumbers)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->k()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/d4;->a:Lcom/hiya/stingray/q/b/s;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/s;->h()Lcom/hiya/stingray/q/b/s$g;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/b/s$g;->d(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 4
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/b/s$g;->e(Z)Lcom/hiya/stingray/q/b/s$g;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/hiya/stingray/q/b/s$g;->g(J)Lcom/hiya/stingray/q/b/s$g;

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    .line 7
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/q/b/s$g;->f(I)Lcom/hiya/stingray/q/b/s$g;

    .line 8
    :goto_0
    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/s$g;->c()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "compositeDTOBuilder.build()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
