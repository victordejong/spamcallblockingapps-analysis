.class public final Le/a/y4/f/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y4/f/b;->a([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Le/a/y4/f/c;


# direct methods
.method public constructor <init>(Le/a/y4/f/b;[JLandroid/net/Uri;Le/a/y4/f/c;)V
    .locals 0

    iput-object p3, p0, Le/a/y4/f/b$a;->b:Landroid/net/Uri;

    iput-object p4, p0, Le/a/y4/f/b$a;->c:Le/a/y4/f/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ls1/k;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/y4/f/b$a;->b:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/y4/f/b$a;->c:Le/a/y4/f/c;

    .line 5
    iget-object v2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 7
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/Long;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "contact"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    const-string v5, "aggregated_contact_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const-string v6, "first_name"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v4, "last_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, v2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    const-string v5, "displayNameOrNumber"

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/data/entity/StructuredName;->getGivenName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v4}, Le/a/y4/f/c;->b(Ljava/lang/String;)Ls1/k;

    move-result-object v4

    .line 18
    iget-object v6, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 19
    check-cast v6, Ljava/lang/String;

    .line 20
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    iget-object v7, v2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    if-eqz v7, :cond_3

    .line 23
    invoke-virtual {v7}, Lcom/truecaller/data/entity/StructuredName;->getFamilyName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v7}, Le/a/y4/f/c;->b(Ljava/lang/String;)Ls1/k;

    move-result-object v2

    .line 24
    iget-object v5, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 25
    check-cast v5, Ljava/lang/String;

    .line 26
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v2, Ljava/lang/String;

    const-string v7, "sorting_key_1"

    .line 28
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sorting_key_2"

    .line 29
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    goto :goto_3

    .line 30
    :cond_4
    invoke-virtual {v1, v6}, Le/a/y4/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v6, "sorting_group_1"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_4

    .line 31
    :cond_5
    invoke-virtual {v1, v5}, Le/a/y4/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const-string v1, "sorting_group_2"

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contact_update_timestamp"

    .line 32
    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    return-object p1
.end method
