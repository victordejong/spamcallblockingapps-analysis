.class public final Le/a/a/a/g;
.super Le/a/a/a/d;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public final e:Landroid/database/ContentObserver;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Lcom/truecaller/messaging/data/types/ImGroupInfo;

.field public final i:Le/a/a/k/a/a/d;

.field public final j:Le/a/a/i0;

.field public final k:Le/a/p5/h0;

.field public final l:Landroid/content/ContentResolver;

.field public final m:Landroid/os/Handler;

.field public final n:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/ImGroupInfo;Le/a/a/k/a/a/d;Le/a/a/i0;Le/a/p5/h0;Landroid/content/ContentResolver;Landroid/os/Handler;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Lcom/truecaller/messaging/data/types/ImGroupInfo;
        .annotation runtime Ljavax/inject/Named;
            value = "name_group_info"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/a/a/d;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/a/g;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/a/a/g;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/a/a/g;->h:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iput-object p4, p0, Le/a/a/a/g;->i:Le/a/a/k/a/a/d;

    iput-object p5, p0, Le/a/a/a/g;->j:Le/a/a/i0;

    iput-object p6, p0, Le/a/a/a/g;->k:Le/a/p5/h0;

    iput-object p7, p0, Le/a/a/a/g;->l:Landroid/content/ContentResolver;

    iput-object p8, p0, Le/a/a/a/g;->m:Landroid/os/Handler;

    iput-object p9, p0, Le/a/a/a/g;->n:Le/a/q2/a;

    .line 2
    new-instance p1, Le/a/a/a/g$a;

    invoke-direct {p1, p0, p8}, Le/a/a/a/g$a;-><init>(Le/a/a/a/g;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/a/g;->e:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final Ij()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/a/a/g;->k:Le/a/p5/h0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f1202fa

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/a/a/a/g;->j:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->Y1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Jj(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/a/g;->n:Le/a/q2/a;

    const-string v1, "GroupLinkShare"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "action"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, p1

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v2, v3, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/a/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/a/g;->l:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Le/a/a/a/g;->e:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/a/g;->l:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/a/g;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
