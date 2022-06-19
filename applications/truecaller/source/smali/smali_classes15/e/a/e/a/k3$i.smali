.class public Le/a/e/a/k3$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/a/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public c:I

.field public final synthetic d:Le/a/e/a/k3;


# direct methods
.method public constructor <init>(Le/a/e/a/k3;[Ljava/lang/String;Le/a/e/a/k3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/k3$i;->d:Le/a/e/a/k3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/e/a/k3$i;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/a/e/a/k3$i;->c:I

    .line 4
    iput-object p2, p0, Le/a/e/a/k3$i;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget v0, p0, Le/a/e/a/k3$i;->c:I

    iget-object v1, p0, Le/a/e/a/k3$i;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Le/a/e/a/k3$i;->d:Le/a/e/a/k3;

    invoke-virtual {v0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Le/a/e/a/k3$i;->c:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 3
    iget-object v3, p0, Le/a/e/a/k3$i;->b:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Le/a/e/a/k3$i;->c(Lcom/truecaller/data/entity/Contact;)V

    .line 5
    :cond_1
    iget-object v3, p0, Le/a/e/a/k3$i;->b:[Ljava/lang/String;

    aget-object v1, v3, v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Le/a/e/a/k3$i;->c(Lcom/truecaller/data/entity/Contact;)V

    .line 8
    :cond_2
    :try_start_0
    invoke-static {v1}, Le/a/b0/q/b0;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0, v2}, Le/a/e/a/k3$i;->c(Lcom/truecaller/data/entity/Contact;)V

    .line 10
    :goto_0
    new-instance v3, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "notification"

    invoke-direct {v3, v0, v4, v5}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    .line 11
    iput-object v1, v3, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v3, Le/a/f4/g/p;->g:Z

    .line 14
    iput-boolean v0, v3, Le/a/f4/g/p;->i:Z

    .line 15
    iput-boolean v0, v3, Le/a/f4/g/p;->j:Z

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, v3, Le/a/f4/g/p;->l:Z

    const/16 v1, 0x13

    .line 17
    iput v1, v3, Le/a/f4/g/p;->o:I

    .line 18
    new-instance v1, Le/a/e/a/m3;

    invoke-direct {v1, p0}, Le/a/e/a/m3;-><init>(Le/a/e/a/k3$i;)V

    .line 19
    invoke-virtual {v3, v2, v0, v0, v1}, Le/a/f4/g/p;->f(Le/a/j4/a/d;ZZLe/a/f4/g/p$c;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Le/a/e/a/k3$i;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Le/a/e/a/k3$i;->b(Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/notifications/enhancing/SourcedContact;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e/a/k3$i;->d:Le/a/e/a/k3;

    invoke-virtual {v0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;->pa(Landroid/content/Context;Ljava/util/LinkedHashSet;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final c(Lcom/truecaller/data/entity/Contact;)V
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Le/a/e/a/k3$i;->b:[Ljava/lang/String;

    iget v3, p0, Le/a/e/a/k3$i;->c:I

    aget-object v8, v2, v3

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p1, v0}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v10

    const-string v3, "org.telegram.messenger"

    const-string v4, "Random label"

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/truecaller/notifications/enhancing/SourcedContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 6
    iget-object v2, p0, Le/a/e/a/k3$i;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget p1, p0, Le/a/e/a/k3$i;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Le/a/e/a/k3$i;->c:I

    .line 8
    invoke-virtual {p0}, Le/a/e/a/k3$i;->a()V

    return-void
.end method
