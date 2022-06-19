.class public final synthetic Le/m/a/h/a/a/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/o1;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/p1;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/p1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/g1;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/g1;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/a/g1;->a:Le/m/a/h/a/a/p1;

    iget-object v1, p0, Le/m/a/h/a/a/g1;->b:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "session_id"

    .line 2
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/m1;

    .line 7
    iget-object v2, v0, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v2, v2, Le/m/a/h/a/a/l1;->d:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1}, Le/m/a/h/a/a/p1;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    .line 10
    invoke-static {v3, v2}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 12
    iget-object v0, v0, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v0, v0, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v0, v1}, Ln3/g0/y;->P2(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2
.end method
