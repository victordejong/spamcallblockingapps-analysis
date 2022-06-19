.class public final synthetic Le/a/i4/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/i4/x/d;

.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Le/a/i4/x/d;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/x/a;->a:Le/a/i4/x/d;

    iput-object p2, p0, Le/a/i4/x/a;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/a/i4/x/a;->a:Le/a/i4/x/d;

    iget-object v1, p0, Le/a/i4/x/a;->b:Ljava/util/Collection;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, v0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v3, v0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v1, v0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 8
    iget-object v3, v3, Lcom/truecaller/notifications/enhancing/SourcedContact;->b:Ljava/lang/String;

    .line 9
    iget-object v4, v0, Le/a/i4/x/d;->j:Le/a/q5/k/a;

    invoke-interface {v4, v3}, Le/a/q5/k/a;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v0}, Le/a/i4/x/d;->e()V

    :cond_1
    return-void
.end method
